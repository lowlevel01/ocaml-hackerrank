(* returns an array of n elements *)
let make_array n =
    let rec create acc = 
        match acc < n with
        | true -> acc :: create (acc+1)
        | false -> []
    in
    create 0

let () =
    let n = int_of_string (read_line ()) in
    let arr = make_array n in
    List.iter ( Printf.printf "%d " ) arr
