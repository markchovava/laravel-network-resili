<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProductImageResource;
use App\Http\Resources\ProductResource;
use App\Http\Resources\ProductSpecResource;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\ProductSpec;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    public $upload_location = 'assets/img/product/';

    public function indexAll(){
        $data = Product::with(['user'])
                ->orderBy('updated_at', 'DESC')->get();
        return ProductResource::collection($data);
    }

    public function index(){
        $data = Product::with(['user'])
                ->orderBy('updated_at', 'DESC')
                ->paginate(12);
        return ProductResource::collection($data);
    }

    public function search($search){
        $data = Product::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('updated_at', 'DESC')
                ->paginate(12);
        return ProductResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Product();
        $data->user_id = $user_id;
        $data->brand_id = $request->user_id;
        $data->name = $request->name;
        $data->description = $request->description;
        $data->price = $request->price;
        $data->quantity = $request->quantity;
        $data->status = $request->status;
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        /* PRODUCT SPECIFICATIONS */
        if($request->product_specs){
            $specs = json_decode($request->product_specs, true);
            for( $i = 0; $i < count($specs); $i++) {
                $ps = new ProductSpec();
                $ps->user_id = $user_id;
                $ps->product_id = $data->id;
                $ps->name = $specs[$i]['name'];
                $ps->value = $specs[$i]['value'];
                $ps->created_at = now();
                $ps->updated_at = now();
                $ps->save();
            }
        }
        /* PRODUCT IMAGES */
        if(!empty($request->file('product_images'))){
            $product_images = $request->file('product_images');
            for($i = 0; $i < count($product_images); $i++){
                $item = new ProductImage();
                $item->product_id = $data->id;
                $item->user_id = $user_id;
                if( isset($product_images[$i]) ) {
                    $image = $product_images[$i];
                    $image_extension = strtolower($image->getClientOriginalExtension());
                    $image_name = date('Ymh') . rand(0, 10000) . '.' . $image_extension;
                    $image->move($this->upload_location, $image_name);
                    $item->image = $this->upload_location . $image_name;                        
                }
                $item->save();
            }
        }
        return response()->json([
            'status' => 1,
            'message' => "Data saved successfully.",
            'data' => new ProductResource($data),
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Product::find($id);
        $data->user_id = $user_id;
        $data->brand_id = $request->user_id;
        $data->name = $request->name;
        $data->description = $request->description;
        $data->price = $request->price;
        $data->quantity = $request->quantity;
        $data->status = $request->status;
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        ProductSpec::where('product_id', $data->id)->delete();
        $specs = json_decode($request->product_specs, true);
        for( $i = 0; $i < count($specs); $i++) {
            $ps = new ProductSpec();
            $ps->user_id = $user_id;
            $ps->product_id = $data->id;
            $ps->name = $specs[$i]['name'];
            $ps->value = $specs[$i]['value'];
            $ps->created_at = now();
            $ps->updated_at = now();
            $ps->save();
        }
        /*  */
        if(!empty($request->file('product_images'))){
            $product_images = $request->file('product_images');
            for($i = 0; $i < count($product_images); $i++){
                $item = new ProductImage();
                $item->product_id = $data->id;
                $item->user_id = $user_id;
                if( isset($product_images[$i]) ) {
                    $image = $product_images[$i];
                    $image_extension = strtolower($image->getClientOriginalExtension());
                    $image_name = date('Ymh') . rand(0, 10000) . '.' . $image_extension;
                    $image->move($this->upload_location, $image_name);
                    $item->image = $this->upload_location . $image_name;                        
                }
                $item->save();
            }
        }
        return response()->json([
            'status' => 1,
            'message' => "Data saved successfully.",
            'data' => new ProductResource($data),
        ]);
    }

    public function view($id){
        $data = Product::with(['user', 'brand'])
                ->find($id);
        $specs = ProductSpec::where('product_id', $data->id)->get();
        $images = ProductImage::where('product_id', $data->id)->get();
        return response()->json([
            'data' => new ProductResource($data),
            'specs' => ProductSpecResource::collection($specs),
            'images' => ProductImageResource::collection($images),
        ]);
    }
    
    public function delete($id){
        Product::find($id)->delete();
        ProductSpec::where('product_id', $id)->delete();
        $images = ProductImage::where('product_id', $id)->get();
        if($images->isNotEmpty()) {
            for($i = 0; $i < count($images); $i++){
                if(file_exists( public_path($images[$i]->image) )){
                    unlink($images[$i]->image);
                }
            }
        }
        ProductImage::where('product_id', $id)->delete();
        return response()->json([
            'status' => 1,
            'message' => 'Deleted saved successfully.'
        ]);
    }
    
}
