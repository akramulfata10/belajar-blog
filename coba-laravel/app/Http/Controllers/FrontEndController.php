<?php

namespace App\Http\Controllers;

use App\Models\Post;

class FrontEndController extends Controller
{
    public function index()
    {
        return view('home', [
            'title' => 'Home',
            'active' => 'home',
            'posts' => Post::all(),
        ]);
    }
    public function portfolio()
    {
        return view('portfolio', [
            'title' => 'Portfolio',
            'active' => 'portfolio',
        ]);
    }
}
