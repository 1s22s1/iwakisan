function main()
    n = parseint()
    s = parsestring()
    q = parseint()

    for _ ∈ 1:q
        c, d = parsestrings()

        s = replace(s, c => d)
    end

    println(s)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
