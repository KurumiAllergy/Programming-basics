(*目的 : (x,Y)の組で渡される平面座標を受け取ったらXについて対称な点の座標を返す*)
(*taisho_x : int * int -> int * int*)
let taisho_x pair = match pair with
    (x, y) -> (x , - y)

(*test*)
let test1 = taisho_x (1, 1) = (1, -1)
let test2 = taisho_x (5, 3) = (5, -3)
let test3 = taisho_x (6, -2) = (6, 2)