<?php

use App\Http\Controllers\AppInfoController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});


Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

/* APPINFO */
Route::prefix('app-info')->group(function() {
    Route::get('/', [AppInfoController::class, 'view']);
});


/* APPINFO */
Route::prefix('app-info')->group(function() {
    Route::get('/', [AppInfoController::class, 'view']);
    Route::post('/', [AppInfoController::class, 'store']);
});

/* BRAND */
Route::prefix('brand')->group(function() {
    Route::get('/', [BrandController::class, 'index']);
    Route::get('/{id}', [BrandController::class, 'view']);
});
Route::get('/brand-search/{search}', [BrandController::class, 'search']);
Route::get('/brand-all', [BrandController::class, 'indexAll']);

/* CART */
Route::prefix('cart')->group(function() {
    Route::get('/', [CartController::class, 'index']);
    Route::post('/', [CartController::class, 'store']);
    Route::get('/{id}', [CartController::class, 'view']);
    Route::delete('/{id}', [CartController::class, 'delete']);
});
Route::get('/cart-all', [CartController::class, 'indexAll']);
Route::post('/cart-all', [CartController::class, 'storeAll']);

/* CATEGORY */
Route::prefix('category')->group(function() {
    Route::get('/', [CategoryController::class, 'index']);
    Route::get('/{id}', [CategoryController::class, 'view']);
    Route::delete('/{id}', [CategoryController::class, 'delete']);
});
Route::get('/category-search/{search}', [CategoryController::class, 'search']);
Route::get('/category-all', [CategoryController::class, 'indexAll']);

/* MESSAGE */
Route::prefix('message')->group(function() {
    Route::get('/', [MessageController::class, 'index']);
    Route::post('/', [MessageController::class, 'store']);
    Route::get('/{id}', [MessageController::class, 'view']);
});

/* ORDER */
Route::prefix('order')->group(function() {
    Route::get('/', [OrderController::class, 'index']);
    Route::get('/{id}', [OrderController::class, 'view']);
});
Route::get('/message-search/{search}', [OrderController::class, 'search']);
Route::get('/message-all', [OrderController::class, 'indexAll']);
Route::get('/message-by-status/{status}', [MessageController::class, 'indexByStatus']);
Route::post('/message-by-status/{id}', [MessageController::class, 'updateStatus']);
/* PARTNER */
Route::prefix('partner')->group(function() {
    Route::get('/', [PartnerController::class, 'index']);
    Route::get('/{id}', [PartnerController::class, 'view']);
});
Route::get('/partner-search/{search}', [PartnerController::class, 'search']);
Route::get('/partner-all', [PartnerController::class, 'indexAll']);
/* PRODUCT */
Route::prefix('product')->group(function() {
    Route::get('/', [ProductController::class, 'index']);
    Route::get('/{id}', [ProductController::class, 'view']);
});
Route::get('/product-search/{search}', [ProductController::class, 'search']);
Route::get('/product-all', [ProductController::class, 'indexAll']);
Route::get('/product-sort/{sort}', [ProductController::class, 'indexBySort']);
Route::get('/product-search-category-id', [ProductController::class, 'searchNameCategory']);
Route::get('/product-by-priority', [ProductController::class, 'indexPriority']);
/* PRODUCT CATEGORY */
Route::prefix('product-category')->group(function() {
    Route::post('/', [ProductCategoryController::class, 'store']);
    Route::get('/{id}', [ProductCategoryController::class, 'view']);
});
Route::get('/index-by-category/{id}', [ProductCategoryController::class, 'indexByCategory']);
Route::get('/index-by-product/{id}', [ProductCategoryController::class, 'indexByProduct']);

/* USER */
Route::prefix('user')->group(function() {
    Route::get('/', [UserController::class, 'index']);
    Route::get('/{id}', [UserController::class, 'view']);
});
Route::get('/user-search/{search}', [UserController::class, 'search']);
Route::get('/user-all', [UserController::class, 'indexAll']);
