function main()
    M, D = parseints()
    y, m, d = parseints()

    if D == d && M == m
        println("$(y+1) 1 1")
    elseif D == d
        println("$(y) $(m+1) 1")
    else
        println("$(y) $(m) $(d+1)")
    end

end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
