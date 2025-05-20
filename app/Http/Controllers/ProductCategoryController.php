<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Http\Resources\ProductCategoryResource;
use App\Http\Resources\ProductResource;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class ProductCategoryController extends Controller
{

    public function store(Request $request){
        $user_id = Auth::user()->id ;
        $data = new ProductCategory();
        $data->user_id = $user_id;
        $data->product_id = $request->product_id;
        $data->category_id = $request->category_id;
        $data->updated_at = now();
        $data->created_at = now();
        $data->save();
        Log::info($data);
        /*  */
        return response()->json([
            'message' => 'Data saved successfully',
            'status' => 1,
        ]);
    }

    public function indexByProduct($id){
        $data = ProductCategory::with(['product', 'category', 'user'])
                ->where('product_id', $id)
                ->orderBy('updated_at', 'DESC')
                ->get();
        return response()->json([
            'data' => ProductCategoryResource::collection($data)
        ]);
    }

     public function indexByCategory($id) {
        $productIds = ProductCategory::with(['product', 'category', 'user'])
                ->where('category_id', $id)
                ->orderBy('updated_at', 'DESC')
                ->pluck('product_id');
        $data = Product::with(['user', 'product_images'])
                ->whereIn('id', $productIds)
                ->orderBy('updated_at', 'DESC')
                ->paginate(12);
        return ProductResource::collection($data);
    }

    public function view($id) {
        $data = ProductCategory::with(['product', 'category', 'user'])
                ->find($id);
        return new ProductCategoryResource($data);
    }


    public function delete($id) {
        $data = ProductCategory::find($id);
        $data->delete();
        return response()->json([
            'status' => 1,
            'message' => 'Data deleted successfully.',
        ]);
    }


}
