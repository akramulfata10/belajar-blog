<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "judul posts pertama",
            "slug" => "post-pertama",
            "author" => "akramul fata",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptates fugiat similique rerum officia, minus necessitatibus dolore sunt corrupti ratione blanditiis?",
        ],
        [
            "title" => "judul posts kedua",
            "slug" => "post-kedua",
            "author" => "aidil fitrah",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolores minus autem pariatur nesciunt debitis, libero placeat nisi tempora voluptatem velit vel quod ad corporis error molestiae molestias similique maxime eius omnis unde tenetur exercitationem soluta. Ducimus, inventore beatae, repudiandae eum cupiditate esse sunt illum eius saepe repellat soluta magnam ut fuga quae id voluptatum amet vitae corrupti quia pariatur? Architecto qui quo voluptatibus, excepturi ratione ipsa nostrum cum dolorum voluptas neque minima perspiciatis repellendus vel? Nemo labore quas culpa quisquam dolore, optio quibusdam temporibus! Omnis fugit numquam dignissimos debitis similique fuga quo dicta nobis provident, voluptatum inventore, autem sed aliquid.",
        ],
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach ($posts as $p) {
        //     if ($p["slug"] === $slug) {
        //         $post = $p;
        //     }
        // }
        return $posts->firstWhere('slug', $slug);
    }
}
