# Binary Tree Operations

This module provides operations for manipulating binary trees.

## Type Definition

```ocaml
type 'a bin_tree = Nil | Node of 'a * 'a bin_tree * 'a bin_tree
```

Represents a binary tree where each node contains a value of type `'a` and has two child nodes.

## Functions

### `height`

```ocaml
val height : 'a bin_tree -> int
```

Returns the height of the given binary tree.

### `nb_leaf`

```ocaml
val nb_leaf : 'a bin_tree -> int
```

Returns the number of leaves in the given binary tree.

### `nb_internal_nodes`

```ocaml
val nb_internal_nodes : 'a bin_tree -> int
```

Returns the number of internal nodes in the given binary tree.

### `internal_nodes`

```ocaml
val internal_nodes : 'a bin_tree -> 'a list
```

Returns a list of internal nodes in the given binary tree.

### `search_node`

```ocaml
val search_node : 'a bin_tree -> 'a -> bool
```

Checks if the given value exists in the binary tree.

### `is_symmetric`

```ocaml
val is_symmetric : 'a bin_tree -> bool
```

Checks if the binary tree is symmetric.

### `is_strict`

```ocaml
val is_strict : 'a bin_tree -> bool
```

Checks if the binary tree is strict.

### `is_right_comb`

```ocaml
val is_right_comb : 'a bin_tree -> bool
```

Checks if the binary tree is a right comb.

### `is_left_comb`

```ocaml
val is_left_comb : 'a bin_tree -> bool
```

Checks if the binary tree is a left comb.

### `is_comb`

```ocaml
val is_comb : 'a bin_tree -> bool
```

Checks if the binary tree is a comb.

### `is_perfect`

```ocaml
val is_perfect : 'a bin_tree -> bool
```

Checks if the binary tree is perfect.
```
