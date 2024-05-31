<?php

namespace App\Livewire\Auth;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Livewire\Attributes\Title;
use Livewire\Component;

#[Title('Login')]
class LoginPage extends Component
{
    public $email;
    public $password;

    public function save()
    {
        // Validate input
        $this->validate([
            'email' => 'required|email|max:255|exists:users,email',
            'password' => 'required|min:6|max:255',
        ]);

        // Attempt to authenticate the user
        if (!Auth::attempt(['email' => $this->email, 'password' => $this->password])) {
            session()->flash('error', 'Invalid credentials');
            return;
        }

        // Authentication successful, redirect the user
        return redirect()->intended('/');
    }

    public function render()
    {
        return view('livewire.auth.login-page');
    }
}
