function main()
    n, k = parseints()
    an = parseints()

    set = Set(an[an.≤k])
    result = k * (k + 1) ÷ 2 - sum(set)

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
