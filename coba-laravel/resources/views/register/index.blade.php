@extends('layouts.main')
@section('container')
<div class="row justify-content-center">
    <div class="col-md-5">
    <main class="form-registration">
        <form action="/register" method="POST">
        @csrf
            <h1 class="h3 mb-3 text-center">From Registrasi </h1>
            <div class="form-floating">
                <input type="text" class="form-control @error('name') is-invalid @enderror"  id="name" placeholder="Name" name="name"
                value="{{ old('name') }}">
                <label for="name">Name</label>
                @error('name')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-floating">
                <input type="text" class="form-control @error('username') is-invalid @enderror" id="Username" placeholder="Username" name="username"
                value="{{ old('username') }}">
                <label for="username">username</label>
                @error('username')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-floating">
                <input type="email" class="form-control @error('email') is-invalid @enderror " id="Email" placeholder="Email" name="email"
                value="{{ old('email') }}">
                <label for="email">email</label>
                @error('email')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-floating">
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="Password" placeholder="Password" name="password"
                value="{{ old('password') }}">
                <label for="password">Password</label>
                @error('password')
                <div class="invalid-feedback">{{ $message }}</div>
                @enderror
            </div>
            <div class="form-floating mt-3">
                <button class="w-100 btn btn-primary" type="submit">Registrasi</button>
            </div>
            </div>
            <small class="d-block text-center mt-3">Alreade Registrasi <a href="/login"> Login Now! </a></small>
        </form>
        </main>
    </div>
</div>

@endsection
