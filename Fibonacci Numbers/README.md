let rec fib n = 
    match n with
    | 0 -> 0
    | 1 -> 1
    | _ -> (fib (n-1)) + (fib (n-2))

let () =
    let n = read_int() in
    print_int (fib (n-1))
