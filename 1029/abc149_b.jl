function main()
    a, b, k = parseints()

    q, r = divrem(k, 2)

    pair = min(a, b, q)
    a -= (pair + r)
    b -= pair

    println("$(a) $(b)")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
