(* 木を表す型 *)
type tree_t = Empty
            | Leaf of int
            | Node of tree_t * int * tree_t

(* 木の例 *) 
let tree1 = Empty 
let tree2 = Leaf (3) 
let tree3 = Node (tree1, 4, tree2) 
let tree4 = Node (tree2, 5, tree3)

(* 節や葉の要素にfを適用した木を返す *)
(* tree_map : tree_t -> (int -> int) -> tree_t *)
let rec tree_map tree f = match tree with
    Empty -> Empty
  | Leaf(n) -> Leaf(f n)
  | Node(t1, n, t2) -> Node(tree_map t1 f, f n, tree_map t2 f)

(* test *)
let test1 = tree_map tree1 (fun x -> x + 5) = Empty
let test2 = tree_map tree2 (fun x -> x + 5) = Leaf(8)
let test3 = tree_map tree3 (fun x -> x + 5) = Node(Empty, 9, Leaf(8))
let test4 = tree_map tree4 (fun x -> x + 5) = Node(Leaf(8), 10, Node(Empty, 9, Leaf(8)))