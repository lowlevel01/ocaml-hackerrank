let () = 
    let rec p n = 
        match n with
        | 0 -> ()
        | _ -> print_endline "Hello World"; p (n-1)
        in
    
    let a = read_int() in
    
    p a
