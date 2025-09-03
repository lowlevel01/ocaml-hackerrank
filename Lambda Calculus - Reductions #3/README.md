
### Proceed with Beta Conversion ( https://stackoverflow.com/questions/34140819/lambda-calculus-reduction-steps )

````
((λx.(x x))(λx.(x x)))
==> (λx.(x x))λx.(x x)
==> λx.(x x) λx.(x x) SAME EXPRESSION
==> CAN'T REDUCE
````
This one is called Omega combinator
