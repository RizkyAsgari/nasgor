<aside class="w-60 bg-slate-800	 ">
    <div class="w-full rounded-md shadow-md px-3 py-2 mb-3 border border-sky-700	">
        <h2 class="font-bold text-lg text-white">
            <?= session()->get("nama") ?>
        </h2>
        <form action="<?= base_url("logout") ?>" method="post">
            <button type="submit" class="border-none outline-none bg-transparent text-white">Logout</button>
        </form>
    </div>
    <a href="<?= base_url("admin/menu") ?>" class="flex items-center px-3 py-2 mb-3 rounded-md text-white shadow-md <?= $active == "menu" ? "bg-sky-700 text-white" : "hover:bg-slate-100" ?>">
        Menu
    </a>
    <a href="<?= base_url("admin/transaksi") ?>" class="flex items-center px-3 py-2 mb-3 rounded-md text-white shadow-md <?= $active == "transaksi" ? "bg-sky-700 text-white" : "hover:bg-slate-100" ?>">
        Transaksi
    </a>
    <a href="<?= base_url("admin/menu/create") ?>" class="flex items-center px-3 py-2 mb-3 rounded-md text-white shadow-md <?= $active == "Tambah menu" ? "bg-sky-700 text-white" : "hover:bg-slate-100" ?>">
        Tambah Menu
    </a>
</aside>