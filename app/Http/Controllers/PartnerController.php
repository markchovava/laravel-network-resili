<?php

namespace App\Http\Controllers;

use App\Http\Resources\PartnerResource;
use App\Models\Partner;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PartnerController extends Controller
{
    public $upload_location = 'assets/img/partner/';

    public function indexAll(){
        $data = Partner::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get()
                ->withQueryString();
        return PartnerResource::collection($data);
    }

    public function index(){
        $data = Partner::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return PartnerResource::collection($data);
    }

    public function search($search){
        $data = Partner::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return PartnerResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Partner();
        $data->user_id = $user_id;
        $data->name = $request->name;
        if( !empty($request->hasFile('image')) ) {
            $image = $request->file('image');
            $image_extension = strtolower($image->getClientOriginalExtension());
            $image_name = 'partner_' . date('Ymd') . rand(0, 10000) . '.' . $image_extension;
            $image->move($this->upload_location, $image_name);
            $data->image = $this->upload_location . $image_name;                        
        }
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'Partner' => "Data saved successfully.",
            'data' => new PartnerResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Partner::find($id);
        $data->user_id = $user_id;
        $data->name = $request->name;
        if( $request->hasFile('image') ){
            $image = $request->file('image');
            $image_extension = strtolower($image->getClientOriginalExtension());
            $image_name = 'partner_' . date('Ymd') . rand(0, 10000) . '.' . $image_extension;
            if(!empty($data->image)){
                if(file_exists( public_path($data->image) )){
                    unlink($data->image);
                }
                $image->move($this->upload_location, $image_name);
                $data->image = $this->upload_location . $image_name;                    
            }else{
                $image->move($this->upload_location, $image_name);
                $data->image = $this->upload_location . $image_name;
            }              
        }
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'Partner' => "Data saved successfully.",
            'data' => new PartnerResource($data),
            'status' => 1,
        ]);
    }

    public function view($id){
        $data = Partner::with(['user'])
                ->find($id);
        return new PartnerResource($data);
    }

    public function delete($id){
        Partner::find($id)->delete();
        return response()->json([
            'Partner' => "Data deleted successfully.",
            'status' => 1,
        ]);
    }
    
}
