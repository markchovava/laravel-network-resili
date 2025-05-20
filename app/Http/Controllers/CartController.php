<?php

namespace App\Http\Controllers;

use App\Http\Resources\CartItemResource;
use App\Http\Resources\CartResource;
use App\Models\Cart;
use App\Models\CartItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CartController extends Controller
{
    
    public function generateRandomText($length = 8) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $shuffled = str_shuffle($characters);
        return substr($shuffled, 0, $length);
    }

    public function indexAll(){
        $data = Cart::orderBy('updated_at', 'DESC')->get();
        return CartResource::collection($data);
    }

    public function index(){
        $data = Cart::orderBy('updated_at', 'DESC')->paginate(12);
        return CartResource::collection($data);
    }


    public function store(Request $request) {
        //Log::info($request);
        if($request->filled('cart_id')) {
            //Log::info('CART ID IS PRESENT');
            if(Cart::where('id', $request->cart_id)->exists()){
                //Log::info('CART IS IN DB');
                $data = Cart::find($request->cart_id);
                $data->total += $request->total;
                $data->quantity += $request->quantity;
                $data->updated_at = now();
                $data->save();
                // Check if the product exists in THIS specific cart
                if(CartItem::where('cart_id', $request->cart_id)
                        ->where('product_id', $request->product_id)
                        ->exists()) {
                    //Log::info('CART ITEM IS IN DB');
                    $item = CartItem::where('cart_id', $request->cart_id)
                                ->where('product_id', $request->product_id)
                                ->first();
                    $item->quantity += $request->quantity;
                    $item->total += $request->total;
                    $item->updated_at = now();
                    $item->save();
                    return response()->json([
                        'status' => 1,
                        'data' => new CartResource($data),
                        'message' => 'Item Quantity added successfully.',
                    ]);
                }
                
                //Log::info('CART ITEM IS IN NOT DB');
                /* ITEM */
                $item = new CartItem();
                $item->cart_id = $request->cart_id; // Add the cart_id
                $item->product_id = $request->product_id;
                $item->price = $request->price;
                $item->quantity = $request->quantity;
                $item->total = $request->total;
                $item->updated_at = now();
                $item->created_at = now();
                $item->save();
                
                return response()->json([
                    'status' => 1,
                    'data' => new CartResource($data),
                    'message' => 'New Item added to Cart successfully.',
                ]);
            }
        }
        //Log::info('NEW CART');
        $data = new Cart();
        $data->total = $request->total;
        $data->quantity = $request->quantity;
        $data->cart_ref = 'REF' . date('Ymd') . $this->generateRandomText(6);
        $data->updated_at = now();
        $data->created_at = now();
        $data->save();
        /* ITEM */
        $item = new CartItem();
        $item->cart_id = $data->id;
        $item->product_id = $request->product_id;
        $item->price = $request->price;
        $item->quantity = $request->quantity;
        $item->total = $request->total;
        $item->updated_at = now();
        $item->created_at = now();
        $item->save();
        return response()->json([
            'status' => 1,
            'data' => new CartResource($data),
            'message' => 'New Cart added successfully.',
        ]);
    }

    public function storeAll(Request $request) {
        Log::info($request->all());  // Log the full request data as an array
        
        $data = new Cart();
        $data->quantity = $request->quantity;
        $data->total = $request->total;
        $data->cart_ref = 'REF' . date('Ymd') . $this->generateRandomText(6);
        $data->updated_at = now();
        $data->created_at = now();
        $data->save();
        
        if($request->has('cartitems')) {
            // The cartitems is already an array, no need to decode
            $cartitems = $request->cartitems;
            Log::info($cartitems);
            
            foreach($cartitems as $cartitem) {
                $item = new CartItem();
                $item->cart_id = $data->id;
                $item->product_id = $cartitem['product_id'];
                $item->quantity = $cartitem['quantity'];
                $item->price = $cartitem['price'];
                $item->total = $cartitem['total'];
                $item->created_at = now();
                $item->updated_at = now();
                $item->save();
            }
        }
        
        if($request->has('cart_id') && Cart::where('id', $request->cart_id)->exists()){
            Cart::find($request->cart_id)->delete();
            CartItem::where('cart_id', $request->cart_id)->delete();
        }

        return response()->json([
            'message' => 'Cart Updated successfully',
            'data' => new CartResource($data),
            'status' => 1,
        ]);
    }


    public function view($id){
        $cart = Cart::find($id);
        $cartitem = CartItem::with(['product'])
                ->where('cart_id', $id)
                ->orderBy('updated_at', 'DESC')
                ->get();
        return response()->json([
            'cart' => new CartResource($cart),
            'cartitems' => CartItemResource::collection($cartitem), 
        ]);
    }

    public function delete($id){
        $cart = Cart::find($id);
        $cartitem = CartItem::where('cart_id', $id);
        $cart->delete();
        $cartitem->delete();
    }

}
