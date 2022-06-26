<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'register',
            'active' => 'register',
        ]);
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'username' => 'required|unique:users',
            'email' => 'required|email:dns|unique:users',
            'password' => ['required', 'min:3', 'max:255'],
        ]);

        //$validatedData = Hash::make($request->password);

        $validatedData['password'] = Hash::make($validatedData['password']);

        // User::Create($validatedData);//create ke databases

        User::create($validatedData);

        return redirect('/login')->with('success', 'Registration successfull! please login');
    }
}
