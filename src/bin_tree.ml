type 'a bin_tree =
  | Nil
  | Node of 'a * 'a bin_tree * 'a bin_tree

let rec height (t: 'a bin_tree) : int =
  match t with
  | Nil -> -1
  | Node(_, l, r) -> 1 + max (height l) (height r)

let rec nb_leaf (t: 'a bin_tree) : int =
  match t with
  | Nil -> 0
  | Node(_, Nil, Nil) -> 1
  | Node(_, l, r) -> nb_leaf l + nb_leaf r

let rec nb_internal_nodes (t: 'a bin_tree) : int =
  match t with
  | Nil -> 0
  | Node(_, Nil, Nil) -> 0
  | Node(_, l, r) -> 1 + nb_internal_nodes l + nb_internal_nodes r

let internal_nodes (t: 'a bin_tree) : 'a list =
  let rec aux (t: 'a bin_tree) (nodes: 'a list) =
    match t with
    | Nil | Node(_, Nil, Nil) -> []
    | Node(v, l, r) -> aux l (v :: aux r nodes)
  in
  aux t []

let rec search_node (t: 'a bin_tree) (x: 'a) : bool =
  match t with
  | Nil -> false
  | Node(v, _, _) when v = x -> true
  | Node(_, l, r) -> search_node l x || search_node r x

let is_symmetric (t: 'a bin_tree) : bool =
  let rec aux (t: 'a bin_tree) =
  match t with
  | Nil -> Nil
  | Node(v, l, r) -> Node(v, aux l, aux r)
  in
  t = (aux t)

let rec is_strict (t: 'a bin_tree) : bool =
  match t with
  | Nil -> true
  | Node (_, Nil, Nil) -> true
  | Node (_, l, r) -> l <> Nil && r <> Nil && is_strict l && is_strict r

let rec is_right_comb (t: 'a bin_tree) : bool =
  match t with
  | Nil -> true
  | Node(_, Nil, r) -> is_right_comb r
  | _ -> false

let rec is_left_comb (t: 'a bin_tree) : bool =
  match t with
  | Nil -> true
  | Node(_, r, Nil) -> is_left_comb r
  | _ -> false

let is_comb (t: 'a bin_tree) : bool =
  match t with
  | Nil -> true
  | Node (_, Nil, Nil) -> true
  | Node (_, Nil, r) -> is_right_comb r
  | Node (_, l, Nil) -> is_left_comb l
  | _ -> false

let is_perfect (t: 'a bin_tree) : bool =
  let rec aux (t: 'a bin_tree) =
    match t with
    | Nil -> (true, 0)
    | Node(_, l, r) ->
      let (verif_l, h_l) = aux l in
      let (verif_r, h_r) = aux r in

      let verif = verif_l && verif_r && (h_l = h_r) in
      (verif, max h_l h_r + 1)
  in
  let (verif, _) = aux t in
  verif
