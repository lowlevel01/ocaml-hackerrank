

let rec mingle p q=
    match (p, q) with
    | "","" -> ""
    | _ -> String.make 1 p.[0] ^ String.make 1 q.[0] ^
            mingle (String.sub p 1 (String.length p - 1))
             (String.sub q 1 (String.length q - 1))

let () = 
    let p = read_line() in
    let q = read_line() in
    print_endline (mingle p q)
