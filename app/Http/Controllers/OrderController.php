<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderResource;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\OrderItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OrderController extends Controller
{
    public function generateRandomText($length = 8) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $shuffled = str_shuffle($characters);
        return substr($shuffled, 0, $length);
    }

    public function updateStatus(Request $request, $id){
        $data = Order::find($id);
        $data->status = $request->status;
        $data->updated_at = now();
        $data->save();
        return response()->json([
            'status' => 1,
            'message' => "Data saved successfully.",
            'data' => new OrderResource($data),
        ]);
    }

    public function indexAll(){
        $data = Order::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get();
        return OrderResource::collection($data);
    }

    public function index(){
        $data = Order::with(['user', 'order_detail', 'order_items'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }

    public function search($search){
        $data = Order::with(['user', 'order_detail', 'order_items'])
                ->where('name', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }

    public function store(Request $request){
        $user_id = Auth::user()->id;
        $data = new Order();
        $data->user_id = $user_id;
        $data->total = $request->total;
        $data->quantity = $request->quantity;
        $data->notes = $request->notes;
        $data->status = "Processing";
        $data->ref = "REF" . date("Ymd") . $this->generateRandomText(4);
        $data->created_at = now();
        $data->updated_at = now();
        $data->save();
        /* ORDER DETAIL */
        $detail = new OrderDetail();
        $detail->order_id = $data->id;
        $detail->user_id = $user_id;
        $detail->name = $request->name;
        $detail->email = $request->email;
        $detail->address = $request->address;
        $detail->phone = $request->phone;
        $detail->created_at = now();
        $detail->updated_at = now();
        $detail->save();
        /*  */
        $items = json_decode($request->order_items, true);
        for( $i = 0; $i < count($items); $i++) {
            $oi = new OrderItem();
            $oi->user_id = $user_id;
            $oi->order_id = $data->id;
            $oi->product_id = $request->product_id;
            $oi->name = $items[$i]['name'];
            $oi->quantity = $items[$i]['quantity'];
            $oi->price = $items[$i]['price'];
            $oi->total = $items[$i]['total'];
            $oi->created_at = now();
            $oi->updated_at = now();
            $oi->save();
        }
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new OrderResource($data),
            'status' => 1,
        ]);
    }

    public function update(Request $request, $id){
        $user_id = Auth::user()->id;
        $data = Order::find($id);
        $data->user_id = $user_id;
        $data->total = $request->total;
        $data->quantity = $request->quantity;
        $data->notes = $request->notes;
        $data->status = "Processing";
        $data->updated_at = now();
        $data->save();
        /* ORDER DETAIL */
        $detail = OrderDetail::find($id);
        $detail->order_id = $data->id;
        $detail->user_id = $user_id;
        $detail->name = $request->name;
        $detail->email = $request->email;
        $detail->address = $request->address;
        $detail->phone = $request->phone;
        $detail->updated_at = now();
        $detail->save();
        /*  */
        $oi = OrderItem::find($data->id)->delete();
        $items = json_decode($request->order_items, true);
        for( $i = 0; $i < count($items); $i++) {
            $oi = new OrderItem();
            $oi->user_id = $user_id;
            $oi->order_id = $data->id;
            $oi->product_id = $request->product_id;
            $oi->name = $items[$i]['name'];
            $oi->quantity = $items[$i]['quantity'];
            $oi->price = $items[$i]['price'];
            $oi->total = $items[$i]['total'];
            $oi->created_at = now();
            $oi->updated_at = now();
            $oi->save();
        }
        return response()->json([
            'message' => "Data saved successfully.",
            'data' => new OrderResource($data),
            'status' => 1,
        ]);
    }

    public function view($id){
        $data = Order::with(['user', 'order_detail', 'order_items'])
                ->find($id);
        return new OrderResource($data);
    }

    public function delete($id){
        Order::find($id)->delete();
        OrderDetail::where('order_id', $id)->delete();
        OrderItem::where('order_id', $id)->delete();
        return response()->json([
            'message' => "Data deleted successfully.",
            'status' => 1,
        ]);
    }

}
