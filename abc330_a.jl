function main()
    n, l = parseints()
    an = parseints()

    filter(x -> x ≥ l, an) |> length |> println
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
