<?php

use App\Http\Controllers\AppInfoController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PartnerController;
use App\Http\Controllers\ProductCategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductImageController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');


Route::group(['middleware' => ['auth:sanctum']], function() {

    /* PROFILE */
    Route::prefix('profile')->group(function() {
        Route::get('/', [AuthController::class, 'view']);
        Route::post('/', [AuthController::class, 'update']);
    });
    Route::post('/password', [AuthController::class, 'password']);
    Route::post('/email', [AuthController::class, 'email']);
    Route::get('/logout', [AuthController::class, 'logout']);

    /* APPINFO */
    Route::prefix('app-info')->group(function() {
        Route::get('/', [AppInfoController::class, 'view']);
        Route::post('/', [AppInfoController::class, 'store']);
    });
    /* BRAND */
    Route::prefix('brand')->group(function() {
        Route::get('/', [BrandController::class, 'index']);
        Route::post('/', [BrandController::class, 'store']);
        Route::get('/{id}', [BrandController::class, 'view']);
        Route::post('/{id}', [BrandController::class, 'update']);
        Route::delete('/{id}', [BrandController::class, 'delete']);
    });
    Route::get('/brand-search/{search}', [BrandController::class, 'search']);
    Route::get('/brand-all', [BrandController::class, 'indexAll']);
    /* CATEGORY */
    Route::prefix('category')->group(function() {
        Route::get('/', [CategoryController::class, 'index']);
        Route::post('/', [CategoryController::class, 'store']);
        Route::get('/{id}', [CategoryController::class, 'view']);
        Route::post('/{id}', [CategoryController::class, 'update']);
        Route::delete('/{id}', [CategoryController::class, 'delete']);
    });
    Route::get('/category-search/{search}', [CategoryController::class, 'search']);
    Route::get('/category-all', [CategoryController::class, 'indexAll']);
    /* MESSAGE */
    Route::prefix('message')->group(function() {
        Route::get('/', [MessageController::class, 'index']);
        Route::post('/', [MessageController::class, 'store']);
        Route::get('/{id}', [MessageController::class, 'view']);
        Route::post('/{id}', [MessageController::class, 'update']);
        Route::delete('/{id}', [MessageController::class, 'delete']);
    });
    Route::get('/message-search/{search}', [MessageController::class, 'search']);
    Route::get('/message-all', [MessageController::class, 'indexAll']);
    /* ORDER */
    Route::prefix('order')->group(function() {
        Route::get('/', [OrderController::class, 'index']);
        Route::post('/', [OrderController::class, 'store']);
        Route::get('/{id}', [OrderController::class, 'view']);
        Route::post('/{id}', [OrderController::class, 'update']);
        Route::delete('/{id}', [OrderController::class, 'delete']);
    });
    Route::get('/message-search/{search}', [OrderController::class, 'search']);
    Route::get('/message-all', [OrderController::class, 'indexAll']);
    /* PARTNER */
    Route::prefix('partner')->group(function() {
        Route::get('/', [PartnerController::class, 'index']);
        Route::post('/', [PartnerController::class, 'store']);
        Route::get('/{id}', [PartnerController::class, 'view']);
        Route::post('/{id}', [PartnerController::class, 'update']);
        Route::delete('/{id}', [PartnerController::class, 'delete']);
    });
    Route::get('/partner-search/{search}', [PartnerController::class, 'search']);
    Route::get('/partner-all', [PartnerController::class, 'indexAll']);
    /* PRODUCT */
    Route::prefix('product')->group(function() {
        Route::get('/', [ProductController::class, 'index']);
        Route::post('/', [ProductController::class, 'store']);
        Route::get('/{id}', [ProductController::class, 'view']);
        Route::post('/{id}', [ProductController::class, 'update']);
        Route::delete('/{id}', [ProductController::class, 'delete']);
    });
    Route::get('/product-search/{search}', [ProductController::class, 'search']);
    Route::get('/product-all', [ProductController::class, 'indexAll']);
    /* PRODUCT IMAGE */
    Route::prefix('product-image')->group(function() {
        Route::delete('/{id}', [ProductImageController::class, 'delete']);
    });

    /* PRODUCT CATEGORY */
    Route::prefix('product-category')->group(function() {
        Route::post('/', [ProductCategoryController::class, 'store']);
        Route::get('/{id}', [ProductCategoryController::class, 'view']);
        Route::delete('/{id}', [ProductCategoryController::class, 'delete']);
    });
    Route::get('/index-by-product/{id}', [ProductCategoryController::class, 'indexByProduct']);

    /* USER */
    Route::prefix('user')->group(function() {
        Route::get('/', [UserController::class, 'index']);
        Route::post('/', [UserController::class, 'store']);
        Route::get('/{id}', [UserController::class, 'view']);
        Route::post('/{id}', [UserController::class, 'update']);
        Route::delete('/{id}', [UserController::class, 'delete']);
    });
    Route::get('/user-search/{search}', [UserController::class, 'search']);
    Route::get('/user-all', [UserController::class, 'indexAll']);


    



});
