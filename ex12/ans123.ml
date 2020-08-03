type eki_t = {
  namae : string;
  saitan_kyori : float;
  temae_list : string list;
}

let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 

(*eki_t型のリストと起点を受け取ったら初期化されたリストを返す*)
(*shokika : eki_t -> string -> list eki_t list*)
let rec shokika lst kiten = match lst with
  [] -> []
  | ({namae = kj; saitan_kyori = sai; temae_list = tem} as first) :: rest->
    if kj = kiten 
        then {namae = kj; saitan_kyori = 0.; temae_list = [kj]} :: shokika rest kiten
          else first :: shokika rest kiten
  
(*test*)
let test1 = shokika [] "茗荷谷" = [] 
let test2 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 