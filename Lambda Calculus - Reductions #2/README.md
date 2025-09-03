
### Proceed with Beta Conversion ( https://stackoverflow.com/questions/34140819/lambda-calculus-reduction-steps )

````
((λx.((λy.(x y))x))(λz.w))
==> ((λx.(x x)(λz.w))
==> (λz.w) λz.w
==> λz.w
==> w
````
