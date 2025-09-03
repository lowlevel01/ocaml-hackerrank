let rec read_lines () =
    try let line = read_line () in
        int_of_string (line) :: read_lines()
    with
        End_of_file -> []

let f n arr = 
    let rec replicate x k = 
        match k with
        | 0 -> []
        | _ -> x:: replicate x (k-1)
    in
    let rec build_list lst =
        match lst with
        | [] -> []
        | x ::xs -> (replicate x n) @ (build_list xs)
    in
    build_list arr

let () =
    let n::arr = read_lines() in
    let ans = f n arr in
    List.iter (fun x -> print_int x; print_newline ()) ans;;
