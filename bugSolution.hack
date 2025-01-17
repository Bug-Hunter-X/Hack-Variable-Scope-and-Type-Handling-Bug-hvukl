```hack
function foo(x: int): int {
  return x + 1;
}

function bar(): void {
  $x = 5;
  $y = foo($x);
  echo $y;
}

function main(): void {
  bar();
}
```