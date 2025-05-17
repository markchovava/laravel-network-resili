<?php

namespace App\Http\Controllers;

use App\Http\Resources\BrandResource;
use App\Models\Brand;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BrandController extends Controller
{
    
    public function indexAll(){
        $data = Brand::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get();
        return BrandResource::collection($data);
    }

    public function index(){
        $data = Brand::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return BrandResource::collection($data);
    }

    public function search($search){
        $data = Brand::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return BrandResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Brand();
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new BrandResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Brand::find($id);
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new BrandResource($data),
            'status' => 1,
        ]);
    }

    public function view($id){
        $data = Brand::with(['user'])
                ->find($id);
        return new BrandResource($data);
    }

    public function delete($id){
        Brand::find($id)->delete();
        return response()->json([
            'message' => "Data deleted successfully.",
            'status' => 1,
        ]);
    }

}
