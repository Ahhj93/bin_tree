type 'a bin_tree = Nil | Node of 'a * 'a bin_tree * 'a bin_tree

(* [height t] returns the height of the tree [t]. *)
val height : 'a bin_tree -> int

(* [nb_leaf t] returns the number of leaves of the tree [t]. *)
val nb_leaf : 'a bin_tree -> int

(* [nb_internal_nodes t] returns the number of internal nodes of the tree [t]. *)
val nb_internal_nodes : 'a bin_tree -> int

(* [internal_nodes t] returns the list of internal nodes of the tree [t]. *)
val internal_nodes : 'a bin_tree -> 'a list

(* [search_node t x] returns [true] if the tree [t] contains the node [x], [false] otherwise. *)
val search_node : 'a bin_tree -> 'a -> bool

(* [is_symmetric t] returns [true] if the tree [t] is symmetric, [false] otherwise. *)
val is_symmetric : 'a bin_tree -> bool

(* [is_strict t] returns [true] if the tree [t] is strict, [false] otherwise. *)
val is_strict : 'a bin_tree -> bool

(* [is_right_comb t] returns [true] if the tree [t] is a right comb, [false] otherwise. *)
val is_right_comb : 'a bin_tree -> bool

(* [is_left_comb t] returns [true] if the tree [t] is a left comb, [false] otherwise. *)
val is_left_comb : 'a bin_tree -> bool

(* [is_comb t] returns [true] if the tree [t] is a comb, [false] otherwise. *)
val is_comb : 'a bin_tree -> bool

(* [is_perfect t] returns [true] if the tree [t] is perfect, [false] otherwise. *)
val is_perfect : 'a bin_tree -> bool
