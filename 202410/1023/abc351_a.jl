function main()
    an = parseints()
    bn = parseints()

    println(sum(an) - sum(bn) + 1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
