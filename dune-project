(lang dune 3.13)

(name bin_tree)

(generate_opam_files true)

(source
 (github Ahhj93/bin_tree))

(authors "Bryan (Ahhj93)")

(maintainers "Bryan (Ahhj93)")

(license MIT)

(documentation https://github.com/Ahhj93/bin_tree-docs)

(package
 (name bin_tree)
 (synopsis "A binary tree implementation")
 (description "bin-tree is a OCaml library providing a simple binary tree implementation.")
 (depends ocaml dune)
 (tags
  (binary_tree algorithm tree data_structure)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
