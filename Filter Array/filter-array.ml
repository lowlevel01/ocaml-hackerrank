(* Reads input -> list *)
let rec read_all acc =
    try
        let x = read_int() in
        read_all (x :: acc)
    with End_of_file -> 
        List.rev acc

(* less than filter*)
let rec my_filter delim lst =
    match lst with
    | [] -> []
    | x::xs when x < delim -> x :: my_filter delim xs
    | _::xs -> my_filter delim xs

(*print result*)
let rec print_list lst=
    match lst with
    | [] -> ()
    | x :: xs -> print_int x; print_newline(); print_list xs

(*Main function*)
let () = 
    let delim = read_int() in
    let lst = read_all [] in
    let filtered = my_filter delim lst in
    print_list filtered
