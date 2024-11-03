function main()
    a, b, c, x, y = parseints()

    result = typemax(Int)

    for i ∈ 0:max(2x, 2y)
        j = max(x - i ÷ 2, 0)
        k = max(y - i ÷ 2, 0)

        result = min(result, a * j + b * k + c * i)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
