<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::create([
            'name' => 'akramulfata',
            'username' => 'akramulfata',
            'email' => 'akramulfata10@gmail.com',
            'password' => bcrypt('fata'),
        ]);

        User::factory(3)->create();
        Post::factory(20)->create();
        Category::create([
            'name' => 'programmer',
            'slug' => 'web-progremming',
        ]);
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design',
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal',
        ]);
        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => 'aidilfitrah',
        //     'email' => 'aidilfitrah@gmail.com',
        //     'password' => bcrypt('aidil'),
        // ]);

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'excerpt' => 'lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia',
        //     'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia, eos illum necessitatibus, autem sapiente magnam tempore. Quasi laudantium eius ad assumenda vel.</p><p>Magnam expedita id excepturi doloribus rerum quidem labore explicabo iusto culpa itaque, dignissimos minima corrupti iste in assumenda dolores odit commodi natus. Maiores omnis ullam voluptatem expedita cupiditate, deserunt facilis aperiam, eligendi ratione, deleniti molestiae reiciendis repellendus necessitatibus mollitia magnam illum officia dolorum ea quia.</p><p> Officiis cum doloribus, natus, aspernatur id, ipsum perspiciatis laboriosam illo perferendis cumque explicabo ducimus nisi incidunt aliquam quis saepe. Nemo ea fuga ut totam officiis, voluptatibus provident! Quod cum, ducimus natus dolores, laborum impedit soluta in voluptatibus, itaque facere ex. Eaque incidunt necessitatibus reiciendis mollitia, numquam repellendus vero commodi vel molestias, architecto modi sint laborum similique labore accusantium nostrum deserunt, tenetur qui. Deleniti, nobis libero ea nisi labore, voluptatem nihil, eos eveniet quos perspiciatis voluptas alias quo!</p>',
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'category_id' => 1,
        //     'user_id' => 1,
        //     'excerpt' => 'lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia',
        //     'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia, eos illum necessitatibus, autem sapiente magnam tempore. Quasi laudantium eius ad assumenda vel.</p><p>Magnam expedita id excepturi doloribus rerum quidem labore explicabo iusto culpa itaque, dignissimos minima corrupti iste in assumenda dolores odit commodi natus. Maiores omnis ullam voluptatem expedita cupiditate, deserunt facilis aperiam, eligendi ratione, deleniti molestiae reiciendis repellendus necessitatibus mollitia magnam illum officia dolorum ea quia.</p><p> Officiis cum doloribus, natus, aspernatur id, ipsum perspiciatis laboriosam illo perferendis cumque explicabo ducimus nisi incidunt aliquam quis saepe. Nemo ea fuga ut totam officiis, voluptatibus provident! Quod cum, ducimus natus dolores, laborum impedit soluta in voluptatibus, itaque facere ex. Eaque incidunt necessitatibus reiciendis mollitia, numquam repellendus vero commodi vel molestias, architecto modi sint laborum similique labore accusantium nostrum deserunt, tenetur qui. Deleniti, nobis libero ea nisi labore, voluptatem nihil, eos eveniet quos perspiciatis voluptas alias quo!</p>',
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'category_id' => 2,
        //     'user_id' => 1,
        //     'excerpt' => 'lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia',
        //     'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia, eos illum necessitatibus, autem sapiente magnam tempore. Quasi laudantium eius ad assumenda vel.</p><p>Magnam expedita id excepturi doloribus rerum quidem labore explicabo iusto culpa itaque, dignissimos minima corrupti iste in assumenda dolores odit commodi natus. Maiores omnis ullam voluptatem expedita cupiditate, deserunt facilis aperiam, eligendi ratione, deleniti molestiae reiciendis repellendus necessitatibus mollitia magnam illum officia dolorum ea quia.</p><p> Officiis cum doloribus, natus, aspernatur id, ipsum perspiciatis laboriosam illo perferendis cumque explicabo ducimus nisi incidunt aliquam quis saepe. Nemo ea fuga ut totam officiis, voluptatibus provident! Quod cum, ducimus natus dolores, laborum impedit soluta in voluptatibus, itaque facere ex. Eaque incidunt necessitatibus reiciendis mollitia, numquam repellendus vero commodi vel molestias, architecto modi sint laborum similique labore accusantium nostrum deserunt, tenetur qui. Deleniti, nobis libero ea nisi labore, voluptatem nihil, eos eveniet quos perspiciatis voluptas alias quo!</p>',
        // ]);

        // Post::create([
        //     'title' => 'Judul keempat',
        //     'slug' => 'judul-empat',
        //     'category_id' => 2,
        //     'user_id' => 2,
        //     'excerpt' => 'lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia',
        //     'body' => '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laborum ducimus, numquam accusantium iure mollitia quia, eos illum necessitatibus, autem sapiente magnam tempore. Quasi laudantium eius ad assumenda vel.</p><p>Magnam expedita id excepturi doloribus rerum quidem labore explicabo iusto culpa itaque, dignissimos minima corrupti iste in assumenda dolores odit commodi natus. Maiores omnis ullam voluptatem expedita cupiditate, deserunt facilis aperiam, eligendi ratione, deleniti molestiae reiciendis repellendus necessitatibus mollitia magnam illum officia dolorum ea quia.</p><p> Officiis cum doloribus, natus, aspernatur id, ipsum perspiciatis laboriosam illo perferendis cumque explicabo ducimus nisi incidunt aliquam quis saepe. Nemo ea fuga ut totam officiis, voluptatibus provident! Quod cum, ducimus natus dolores, laborum impedit soluta in voluptatibus, itaque facere ex. Eaque incidunt necessitatibus reiciendis mollitia, numquam repellendus vero commodi vel molestias, architecto modi sint laborum similique labore accusantium nostrum deserunt, tenetur qui. Deleniti, nobis libero ea nisi labore, voluptatem nihil, eos eveniet quos perspiciatis voluptas alias quo!</p>',
        // ]);
    }
}
