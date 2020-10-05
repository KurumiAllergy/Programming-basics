(* #use "ans83.ml";; *)
(*目的 : person_t型のデータを受け取ったら名前と血液型の文字列を返す*)
(*ketsueki_hyoji : peroon_t -> string*)
let ketsueki_hyoji person = match person with
    {name = n; shintyo = shi; taiju = tai; tanjo = tsu; hi = h; ketsueki = ketsu} ->
        n ^ "さんの血液型は" ^ ketsu ^ "型です"

(*test*)
let test1 = ketsueki_hyoji person1 = "浅井さんの血液型はA型です"
let test2 = ketsueki_hyoji person2 = "宮原さんの血液型はB型です"
let test3 = ketsueki_hyoji person3 = "中村さんの血液型はO型です"