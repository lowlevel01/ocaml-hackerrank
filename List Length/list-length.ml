let ()= 
    let rec read_input acc =
        try
            let line = read_line() in
            read_input (acc+1)
        with End_of_file -> acc
    in
    let length = read_input 0 in
    print_endline (string_of_int length)
