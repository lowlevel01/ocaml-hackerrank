let rec gcd x y =
    match (x, y) with
    | (0, y) -> y
    | (x, 0) -> x
    | (x, y) -> gcd (y mod x) x

let () = 
    Scanf.scanf "%d %d" (fun x y ->
    print_int (gcd x y)
    )
