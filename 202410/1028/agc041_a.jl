function main()
    n, a, b = parseints()

    if iseven(b - a)
        result = (b - a) ÷ 2
    else
        result = min(a - 1, n - b) + 1 + abs(b - a) ÷ 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
