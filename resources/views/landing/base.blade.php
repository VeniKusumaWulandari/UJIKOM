<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Just Lovely Wedding</title>
    <!-- Fonts -->

    <link rel="stylesheet" href="{{ url('public') }}/assets/config/tailwind.css" />
    <link rel="stylesheet" href="{{ url('public') }}/assets/config/styles.css" />
  </head>
  <body class="landing-screen" id="home">
   
    
   
<nav class="navbars" id="navbars">
    <div class="navbars-content">
        <a href="#" class="flex items-center">
            <div class="relative inline-flex items-center justify-center w-10 h-10 overflow-hidden bg-yellow-300 rounded-full dark:bg-gray-600">
                <span class="font-bold text-gray-600 dark:text-gray-300">Jlw</span>
            </div>
            <span class="brand-title ml-6" id="brand">Just Lovely Wedding</span>
        </a>
        <button data-collapse-toggle="navbar-default" type="button" class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="navbar-default" aria-expanded="false">
            <span class="sr-only">Open main menu</span>
            <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h15M1 7h15M1 13h15"/>
            </svg>
        </button>
        <div class="navbars-menus" id="navbar-default">
            <ul class="navbars-menus-ul">
                <li>
                    <a href="#home" class="navbars-menus-item active" aria-current="page">Home</a>
                </li>
                <li>
                    <a href="#paket" class="navbars-menus-items">Paket</a>
                </li>
                <li>
                    <a href="#event" class="navbars-menus-items">Event</a>
                </li>
                <li>
                    <a href="#galeri" class="navbars-menus-items">Galeri</a>
                </li>
                <li>
                    <a href="#artikel" class="navbars-menus-items">Artikel</a>
                </li>
                <li>
                    <a href="#kontak" class="navbars-menus-items">Kontak Kami</a>
                </li>
                <li>
                    <a href="{{ url('auth/login') }}" class="navbars-menus-items">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<section class="section-hero" >
    <div class="hero-caption" style="background: transparent">
        <h1 style="font-size: 50px">Selamat Datang Di !</h1>
        <h2 style="font-size: 70px; font-weight:800">Just Lovely Wedding</h2>
        <p class="text-white mt-5 text-center text-xl">Kami adalah penyelenggara pernikahan berpengalaman yang siap membantu Anda merencanakan pernikahan impian Anda. Dengan perasaan cinta yang tulus dan keahlian yang tak tertandingi, kami akan mengubah momen berharga ini menjadi kenangan seumur hidup.</p>
        <a href="{{url('/auth/login') }}" class="px-6 py-4 rounded-full bg-yellow-300 min-w-[250px] mt-8 text-black font-bold text-base flex items-center justify-center">Explore</a>

    </div>
</section>

<section class="p-8 min-h-screen w-screen bg-slate-50 " id="paket">
    <div class="sections-header ">
        <h2 class="title">Paket Layanan Wedding</h2>
    </div>
    <div class="section container mx-auto content grid grid-cols-3 gap-4">
        @foreach($paket as $list)
        <div class="p-6 bg-white rounded-md hover:shadow-md">
                <img src="{{ url('public') }}/{{ $list->gambar }}" />
                <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->nama }}</h1>
                <h1 class="text-2xl font-medium text-yellow-300 text-center">Rp.{{ $list->harga }}</h1>
        </div>
        @endforeach
    </div>
</section>

<section class="p-8 min-h-screen w-screen bg-slate-50 " id="event">
    <div class="sections-header ">
        <h2 class="title">Top Event Wedding</h2>
    </div>
    <div class="section container mx-auto content grid grid-cols-3 gap-4">
        @foreach($event as $list)
        <div class="p-6 bg-white rounded-md hover:shadow-md">
            <img src="{{ url('public') }}/{{ $list->thumbnail }}" />
                <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->judul }}</h1>
                <h1 class="text-base text-slate-500">{!! Str::limit($list->isi, 50) !!} <button data-modal-target="#detail{{ $list->thumbnail }}" data-modal-toggle="#detail{{ $list->thumbnail }}" class="btn-selengkapnya">Selengkapnya</button></h1>
        </div>

        <!-- Main modal -->
        <div id="#detail{{ $list->thumbnail }}" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-6 overflow-hidden md:inset-0 h-[calc(100%-1rem)] max-h-full bg-[rgba(0,0,0,0.2)]">
            <div class="relative w-full max-w-2xl max-h-full overflow-y-auto min-h-[200px] scroll-smooth">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 p-6 ">
                    <!-- Modal header -->
                    <img src="{{ url('public') }}/{{ $list->thumbnail }}" />
                    <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->judul }}</h1>
                    <h1 class="text-base text-slate-500">{!! $list->isi !!}</h1>
                   
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>

<section class="p-8 min-h-screen w-screen bg-slate-50 " id="galeri">
    <div class="sections-header ">
        <h2 class="title">Galeri</h2>
    </div>
    <div class="section container mx-auto content grid grid-cols-4 gap-3">
        @foreach($galeri as $list)
            <button class="rounded-md hover:shadow-md" data-modal-target="#detail{{ $list->id }}" data-modal-toggle="#detail{{ $list->id }}">
                <img src="{{ url('public') }}/{{ $list->gambar }}" class="rounded-md" />
            </button>
             <!-- Main modal -->
        <div id="#detail{{ $list->id }}" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-6 overflow-hidden md:inset-0 h-[calc(100%-1rem)] max-h-full bg-[rgba(0,0,0,0.2)]">
            <div class="relative w-full max-w-2xl max-h-full overflow-y-auto min-h-[200px] scroll-smooth">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 p-6 ">
                    <!-- Modal header -->
                    <img src="{{ url('public') }}/{{ $list->gambar }}" />
                    <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->judul }}</h1>
                    <h1 class="text-base text-slate-500">{!! $list->keterangan !!}</h1>
                   
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>

<section class="p-8 min-h-screen w-screen bg-slate-50 " id="artikel">
    <div class="sections-header ">
        <h2 class="title">Artikel</h2>
    </div>
    <div class="section container mx-auto content grid grid-cols-3 gap-3">
        @foreach($artikel as $list)
        <div class="p-6 bg-white rounded-md hover:shadow-md">
            <img src="{{ url('public') }}/{{ $list->thumbnail }}" />
                <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->judul }}</h1>
                <h1 class="text-base text-slate-500">{!! Str::limit($list->isi, 50) !!} <button data-modal-target="#detail{{ $list->thumbnail }}" data-modal-toggle="#detail{{ $list->thumbnail }}" class="btn-selengkapnya">Selengkapnya</button></h1>
        </div>

        <!-- Main modal -->
        <div id="#detail{{ $list->thumbnail }}" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-6 overflow-hidden md:inset-0 h-[calc(100%-1rem)] max-h-full bg-[rgba(0,0,0,0.2)]">
            <div class="relative w-full max-w-2xl max-h-full overflow-y-auto min-h-[200px] scroll-smooth">
                <!-- Modal content -->
                <div class="relative bg-white rounded-lg shadow dark:bg-gray-700 p-6 ">
                    <!-- Modal header -->
                    <img src="{{ url('public') }}/{{ $list->thumbnail }}" />
                    <h1 class="text-xl font-medium text-slate-500 text-center mt-5 mb-3">{{ $list->judul }}</h1>
                    <h1 class="text-base text-slate-500">{!! $list->isi !!}</h1>
                   
                </div>
            </div>
        </div>
        @endforeach
    </div>
</section>


<section class="p-8 min-h-screen w-screen bg-yellow-300" id="kontak" >
    <div class="flex mb-9 justify-between px-8" style="padding: 0 165px">
        <ul class="">
            <li class="flex items-center mb-2 gap-3">
                <span class="font-medium text-slate-900 text-base mr-6">Instagram</span>
                <span class="font-medium text-xl text-slate-800">@candulobterzz.wedding</span>
            </li>
            <li class="flex items-center mb-2 gap-3">
                <span class="font-medium text-slate-900 text-base mr-6">Whatsapp</span>
                <span class="font-medium text-xl text-slate-800">0895366484997</span>
            </li>
            <li class="flex items-center mb-2 gap-3">
                <span class="font-medium text-slate-900 text-base">Email</span>
                <span class="font-medium text-xl text-slate-800 ml-9">venikusuma3@gmail.com</span>
            </li>
            <li class="flex items-center mb-2 gap-3">
                <span class="font-medium text-slate-900 text-base">Alamat</span>
                <span class="font-medium text-xl text-slate-800 ml-6">Jl.Ketapang-Siduk</span>
            </li>
            
       </ul>
       <ul style="padding: 0 64px">
            <li style="font-weight: 500; font-size: 24px;margin: 0 0 32px 0">Sejarah Singkat</li>
            <li>
                <p style="font-weight: 400; font-size: 18px;">Seiring berjalannya waktu, peran Wedding Organizer terus berkembang, dan mereka tetap menjadi bagian penting dalam membantu pasangan merencanakan pernikahan impian mereka dengan lebih mudah dan kurang stres..</p>
            </li>
       </ul>
    </div>
  
</section>
   


    <script src="{{ url('public') }}/assets/node_modules/flowbite/dist/flowbite.min.js"></script>
    <script src="https://unpkg.com/feather-icons"></script>
   
    <script>
      feather.replace();

    </script>
     <script>
        // Tambahkan class "scrolled" ke elemen <body> saat halaman di-scroll ke bawah
        window.addEventListener("scroll", function() {
            var element = document.getElementById("navbars");
            var b = document.getElementById("brand");
            if (window.scrollY > 0) {
                element.classList.add("bg-white");
                b.classList.add("text-slate-900");
            } else {
                element.classList.remove("bg-white");
                b.classList.add("text-yellow-300");
            }
        });
    </script>
  </body>
</html>
