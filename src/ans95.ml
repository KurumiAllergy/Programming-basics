(*目的 : 整数のリストから偶数のみを含むリストを返す*)
(*even : int list -> int list*)
let rec even lst = match lst with
    [] -> []
    | first :: rest -> if first mod 2 = 0 
                        then first :: even rest
                            else even rest

(*test*) 
let test1 = even [] = []
let test2 = even [1; 2; 3] = [2]
let test3 = even [2; 4; 6; 8] = [2; 4; 6; 8]