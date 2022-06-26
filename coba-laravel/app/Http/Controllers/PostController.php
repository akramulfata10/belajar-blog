<?php
namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
class PostController extends Controller
{
    public static function index()
    {
        // dd(request('search'));
        $title = '';
        if (request('category')) {
            $category = Category::firstwhere('slug', request('category'));
            $title = ' in ' . $category->name;

        }

        if (request('author')) {
            $author = User::firstwhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        {
            return view('posts', [
                "title" => "All Posts" . $title,
                "active" => "posts",
                "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(4)->withQueryString(),
            ]);
        }

    }

    public static function show(Post $post)
    {
        return view('post', [
            "title" => "Post",
            "active" => "posts",
            "post" => $post,
        ]);
    }
}
