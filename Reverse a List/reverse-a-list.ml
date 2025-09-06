(*This function reverses a list*)
(*let rev lst = 
    let rec rev_ acc = function
        | [] -> acc
        | x::xs -> rev_ (x::acc) xs
    in
    rev_ [] lst*)

(*Directly by reading from the beginning and appending to the end, the inputs are reversed*)
let ()= 
    let rec read_lst acc =
        try
            let line = read_line() in
            read_lst (int_of_string line::acc)
        with End_of_file -> acc
    in
    let input = read_lst [] in
    List.iter (fun x -> print_endline (string_of_int x)) input
