<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CartResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'cart_ref' => $this->cart_ref,
            'quantity' => $this->quantity,
            'total' => $this->total,
            'updated_at' => $this->updated_at,
            'created_at' => $this->created_at,
            'cartitems' => CartItemResource::collection($this->whenLoaded('cartitems')),
        ];
    }
}
