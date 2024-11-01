function main()
    n, m = parseints()

    result = min(n, m ÷ 2)
    m -= result * 2

    result += m ÷ 4

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
