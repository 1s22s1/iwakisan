function main()
    a, b, n = parseints()

    x = min(b - 1, n)

    answer = floor(a * x / b) - a * floor(x / b) |> Int

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
