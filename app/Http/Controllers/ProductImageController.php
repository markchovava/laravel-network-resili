<?php

namespace App\Http\Controllers;

use App\Models\ProductImage;
use Illuminate\Http\Request;

class ProductImageController extends Controller
{
    public function indexAll(){}

    public function index(){}

    public function search(){}

    public function store(Request $request){}

    public function update(Request $request, $id){}

    public function view($id){}
    
    public function delete($id){
        $data = ProductImage::find($id);
        if(file_exists( public_path($data->image) )){
            unlink($data->image);
        }
        $data->delete();
        return response()->json([
            'message' => 'Data deleted successfully.',
            'status' => 1,
        ]);
    }
}
