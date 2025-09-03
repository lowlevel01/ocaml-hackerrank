
let rec fact n =
    match n with
    | 0 -> 1.0
    | _ -> float_of_int n *. fact (n-1)

let exp x = 
    let rec calc k =
        match k with
        | 0 -> 1.0
        | _ -> (x ** float_of_int k) /. fact k +. calc (k-1)
    in
    calc 9 (*Because we were asked to compute the first 10 terms*)
    

let () = 
    let rec result n =
        match n with
        | 0 -> ()
        | _ -> let x = read_float() in
        Printf.printf "%.4f\n" (exp x);
        result (n-1)
    in
    let n = read_int() in
    result n
