let mingle p q =
    let n = String.length p in
    let buf = Buffer.create (2*n) in
    let rec zigzag i = 
        match i with
        | i when i>=n -> Buffer.contents buf 
        | _ -> Buffer.add_char buf p.[i];
                Buffer.add_char buf q.[i];
                zigzag (i+1)
    in
    zigzag 0

let () = 
    let p = read_line() in
    let q = read_line() in
    print_endline (mingle p q)
