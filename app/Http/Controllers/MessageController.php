<?php

namespace App\Http\Controllers;

use App\Http\Resources\MessageResource;
use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MessageController extends Controller
{
    public function indexAll(){
        $data = Message::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get();
        return MessageResource::collection($data);
    }

    public function index(){
        $data = Message::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return MessageResource::collection($data);
    }

    public function search($search){
        $data = Message::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return MessageResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Message();
        $data->user_id = $user_id;
        $data->title = $request->title;
        $data->content = $request->content;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->status = $request->status;
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new MessageResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Message::find($id);
        $data->user_id = $user_id;
        $data->title = $request->title;
        $data->content = $request->content;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->status = $request->status;
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new MessageResource($data),
            'status' => 1,
        ]);
    }

    public function view($id){
        $data = Message::with(['user'])
                ->find($id);
        return new MessageResource($data);
    }

    public function delete($id){
        Message::find($id)->delete();
        return response()->json([
            'message' => "Data deleted successfully.",
            'status' => 1,
        ]);
    }
    
}
