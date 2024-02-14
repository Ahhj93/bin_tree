type 'a bin_tree = Nil | Node of 'a * 'a bin_tree * 'a bin_tree
val height : 'a bin_tree -> int
val nb_leaf : 'a bin_tree -> int
val nb_internal_nodes : 'a bin_tree -> int
val internal_nodes : 'a bin_tree -> 'a list
val search_node : 'a bin_tree -> 'a -> bool
val is_symmetric : 'a bin_tree -> bool
val is_strict : 'a bin_tree -> bool
val is_right_comb : 'a bin_tree -> bool
val is_left_comb : 'a bin_tree -> bool
val is_comb : 'a bin_tree -> bool
val is_perfect : 'a bin_tree -> bool
