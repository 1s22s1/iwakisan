function main()
    n, x = parseints()
    sn = parseints()

    println(filter(e -> e ≤ x, sn) |> sum)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
