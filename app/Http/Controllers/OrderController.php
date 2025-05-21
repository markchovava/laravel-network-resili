<?php

namespace App\Http\Controllers;

use App\Http\Resources\OrderDetailResource;
use App\Http\Resources\OrderItemResource;
use App\Http\Resources\OrderResource;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\OrderItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

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

    public function indexByUser(){
        $user_id = Auth::user()->id;
        $data = Order::with(['user'])
                ->where('user_id', $user_id)
                ->orderBy('created_at', 'DESC')
                ->get();
        return OrderResource::collection($data);
    }

    public function indexByUserStatus($status){
        $user_id = Auth::user()->id;
        if(!empty($status)) {
            $data = Order::with(['user'])
                    ->where('user_id', $user_id)
                    ->where('status', $status)
                    ->orderBy('created_at', 'DESC')
                    ->paginate(12)
                    ->withQueryString();
            return OrderResource::collection($data);
        }
         $data = Order::with(['user'])
                ->where('user_id', $user_id)
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }

    public function searchByUser($search){
        $user_id = Auth::user()->id;
        $data = Order::with(['user', 'order_detail', 'order_items'])
                ->where('user_id', $user_id)
                ->where('ref_no', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
            return OrderResource::collection($data);
    }

    public function indexAll(){
        $data = Order::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->get();
        return OrderResource::collection($data);
    }


    public function indexByStatus($status){
        if(!empty($status)) {
            $data = Order::with(['user'])
                    ->where('status', $status)
                    ->orderBy('created_at', 'DESC')
                    ->paginate(12)
                    ->withQueryString();
            return OrderResource::collection($data);
        }
         $data = Order::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }
    public function index(){
        $data = Order::with(['user'])
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }

    public function search($search){
        $data = Order::with(['user', 'order_detail', 'order_items'])
                ->where('ref_no', 'LIKE', '%' . $search . '%')
                ->orderBy('created_at', 'DESC')
                ->paginate(12)
                ->withQueryString();
        return OrderResource::collection($data);
    }

    public function store(Request $request){
        Log::info($request);
        $user_id = Auth::user()->id;
        $data = new Order();
        $data->user_id = $user_id;
        $data->total = $request->total;
        $data->quantity = $request->quantity;
        $data->notes = $request->notes;
        $data->status = "Processing";
        $data->is_agree = $request->is_agree;
        $data->ref_no = "REF" . date("Ymd") . $this->generateRandomText(4);
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
        if (!empty($request->cartitems)) {
            foreach ($request->cartitems as $item) {
                $oi = new OrderItem();
                $oi->user_id = $user_id;
                $oi->order_id = $data->id;
                $oi->product_id = $item['product_id'];
                $oi->quantity = $item['quantity'];
                $oi->price = $item['price'];
                $oi->total = $item['total'];
                $oi->save();
            }
        }
        /*  */
        if($request->has('cart_id') && Cart::where('id', $request->cart_id)->exists()){
            Cart::find($request->cart_id)->delete();
            CartItem::where('cart_id', $request->cart_id)->delete();
        }
        /*  */
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
        $order = Order::with(['user'])
                ->find($id);
        $detail = OrderDetail::where('order_id', $id)
                ->first();
        $items = OrderItem::with(['product'])
                ->where('order_id', $id)
                ->orderBy('updated_at', 'DESC')
                ->get();
        return response([
            'order' => new OrderResource($order),
            'detail' => new OrderDetailResource(($detail)),
            'orderitems' => OrderItemResource::collection($items),
        ]);
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
