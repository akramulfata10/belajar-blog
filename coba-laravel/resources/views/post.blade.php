@extends('layouts.main')
@section('container')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h1 class="mb-3">{{ $post->title}}</h1>
                <p>by. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in
                    <a href="/posts?category={{ $post->category->slug}}" class="text-decoration-none">{{ $post->category->name}}</a>
                </p>
                @if($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" alt="{{$post->category->name}}" class="img-fluid">
                @else
                    <img src="https://source.unsplash.com/1200x400?{{$post->category->name}}" alt="{{$post->category->name}}" class="img-fluid" >
                @endif
                <article class="my-3 fs-4">
                    {!! $post->body !!}
                </article>
                <a href="/posts">Back to posts</a>
            </div>
        </div>
    </div>
@endsection

<!-- Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea, eum.

'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magni ex officia perferendis repellat, cupiditate vel incidunt dolore sed cum consequuntur.' -->
<!-- '<p>ipsum dolor sit, amet consectetur adipisicing elit. Aliquid veritatis repellendus unde beatae eaque enim voluptatum et officia fuga velit ut similique dicta maiores commodi laudantium,</p> <p>mollitia suscipit quaerat, totam ipsam voluptates ex laboriosam atque quisquam. Nulla ab velit deleniti? Soluta mollitia nisi obcaecati. Inventore voluptatibus itaque eius exercitationem officiis.</p>' -->
