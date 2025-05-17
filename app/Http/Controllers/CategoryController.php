<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    
    public function indexAll(){
        $data = Category::with(['user'])
                ->orderBy('name', 'ASC')
                ->orderBy('created_at', 'DESC')
                ->get();
        return CategoryResource::collection($data);
    }

    public function index(){
        $data = Category::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return CategoryResource::collection($data);
    }

    public function search($search){
        $data = Category::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return CategoryResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Category();
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new CategoryResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Category::find($id);
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new CategoryResource($data),
            'status' => 1,
        ]);
    }

    public function view($id){
        $data = Category::with(['user'])
                ->find($id);
        return new CategoryResource($data);
    }

    public function delete($id){
        Category::find($id)->delete();
        return response()->json([
            'message' => "Data deleted successfully.",
            'status' => 1,
        ]);
    }

}
