<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Login</title>
    <link rel="stylesheet" href="<?= base_url("css/main.css") ?>">
</head>

<body>
    <div class="w-full h-screen overflow-hidden flex items-center justify-center bg-sky-700" style="background-size: cover; background-position: top;">
        <div class="flex items-center w-30   h-[450px] max-w-3xl rounded-2xl shadow-md overflow-clip bg-white">
            <div class="flex-1 h-full flex items-center justify-center">
                <div class="w-full max-w-xs">
                    <div class="w-full flex justify-center">
                        <h1 class="font-bold text-2xl text-zinc-950 mb-5 pb-2 border-b-4 border-emerald-500">Masuk</h1>
                    </div>
                    <form action="<?= base_url("login") ?>" method="post">
                        <div class="flex-1">
                        </div>
                        <!-- username -->
                        <input type="text" name="username" id="username" class="flex-1 w-full px-3 py-2 mb-3 focus:outline-transparent border-b-2 transition-colors border-zinc-300 focus:border-emerald-500" placeholder="Username" value="<?= isset($username) ? $username : "" ?>" required>
                        <?php if (isset($validation["username"])) : ?>
                            <small class="text-red-500 text-sm">
                                <?= $validation["username"] ?>
                            </small>
                        <?php endif ?>

                        <!-- password -->
                        <input type="password" name="password" id="password" class="flex-1 w-full px-3 py-2 mb-3 focus:outline-transparent border-b-2 transition-colors border-zinc-300 focus:border-emerald-500" value="<?= isset($password) ? $password : "" ?>" placeholder="password" required>
                        <button type="submit" class="uppercase font-medium w-full p-3 my-4 bg-sky-700 hover:bg-sky-500 text-white rounded-full shadow-md">Masuk</button>
                        <a href="<?= base_url("register") ?>" class="uppercase font-medium w-64 p-3 mt-3 bg-sky-700 hover:bg-sky-500 text-white rounded-full shadow-md text-center">Register</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>