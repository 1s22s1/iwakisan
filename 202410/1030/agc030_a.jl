function main()
    a, b, c = parseints()

    if a + b + 1 ≥ c
        result = b + c
    else
        result = (a + b + 1) + b
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
