root=./

cmake --build $root/example

$root/_build/example
echo -e '1\n2\n3' | $root/solver_application/_build/example
