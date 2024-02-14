type 'a bin_tree =
  | Nil
  | Node of 'a bin_tree * 'a * 'a bin_tree

let rec height (b: 'a bin_tree) : int =
  match b with
  | Nil -> -1
  | Node(l, _, r) -> 1 + max (height l) (height r)

let rec nb_leaf (b: 'a bin_tree) : int =
  match b with
  | Nil -> 0
  | Node(Nil, _, Nil) -> 1
  | Node(l, _, r) -> nb_leaf l + nb_leaf r

let rec nb_internal_nodes (b: 'a bin_tree) : int =
  match b with
  | Nil -> 0
  | Node(Nil, _, Nil) -> 0
  | Node(l, _, r) -> 1 + nb_internal_nodes l + nb_internal_nodes r

let internal_nodes (b: 'a bin_tree) : 'a list =
  (* Renvoie la liste des elements internes dans l'ordre infixe de l'arbre @ l *)
  let rec aux (b: 'a bin_tree) (nodes: 'a list) =
    match b with
    | Nil | Node(Nil, _, Nil) -> []
    | Node(l, v, r) -> aux l (v :: aux r nodes)
  in
  aux b []

let rec search_node (b: 'a bin_tree) (x: 'a) : bool =
  match b with
  | Nil -> false
  | Node(_, v, _) when v = x -> true
  | Node(l, _, r) -> search_node l x || search_node r x

let is_symmetric (b: 'a bin_tree) : bool =
  let rec aux (b: 'a bin_tree) =
  match b with
  | Nil -> Nil
  | Node(l, v, r) -> Node(aux l, v, aux r)
  in
  b = (aux b)