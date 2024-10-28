function main()
    n, a, b = parseints()

    if b - a |> iseven || b - a |> println((b - a) ÷ 2)
    else
        println(min(b - 1, n - a))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
