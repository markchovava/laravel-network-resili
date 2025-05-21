<?php

namespace App\Http\Controllers;

use App\Http\Resources\MessageResource;
use App\Models\Message;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class MessageController extends Controller
{

    public function indexAll(){
        $data = Message::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get();
        return MessageResource::collection($data);
    }

    public function indexByUser(){
        $user_id = Auth::user()->id;
        $data = Message::with(['user'])
                ->where('user_id', $user_id)
                ->orderBy('updated_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return MessageResource::collection($data);
    }

    public function indexByStatus($status) {
        if(!empty($status)){
            $data = Message::with(['user'])
                    ->where('status', $status)
                    ->orderBy('updated_at', 'DESC')
                    ->paginate(12);
            return MessageResource::collection($data);
        }
        $data = Message::with(['user'])
                ->orderBy('updated_at', 'DESC')
                ->paginate(12);
        return MessageResource::collection($data);
    }

    public function index(){
        $data = Message::with(['user'])
                ->orderBy('updated_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return MessageResource::collection($data);
    }

    public function updateStatus(Request $request, $id) {
        $user_id = Auth::user()->id;
        $data = Message::find($id);
        $data->status = $request->status;
        $data->user_id = $user_id;
        $data->updated_at = now();
        $data->save();
        /*  */
        return response()->json([
            'status' => 1,
            'message' => 'Status updated successfully.',
            'data' => new MessageResource($data),
        ]);
    }

    public function search($search){

        $data = Message::with(['user'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orWhere('title', 'LIKE', '%' . $search . '%')
                ->orWhere('email', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return MessageResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id ?? NULL;
        $data = new Message();
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->status = "Unread";
        $data->title = $request->title;
        $data->message = $request->message;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->updated_at = now();
        $data->created_at = now();
        $data->save();
        return response()->json([
            'message' => "Message sent successfully.",
            'data' => new MessageResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Message::find($id);
        $data->user_id = $user_id;
        $data->name = $request->name;
        $data->title = $request->title;
        $data->message = $request->message;
        $data->phone = $request->phone;
        $data->email = $request->email;
        $data->status = $request->status;
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => "Data saved successfully.",
            'data' => new MessageResource($data),
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
