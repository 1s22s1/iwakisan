function main()
    a, b = parseints()

    if a ≤ 0 ≤ b
        println("Zero")

        exit()
    end

    if 0 < a
        println("Positive")

        exit()
    end

    if iseven(b - a + 1)
        println("Positive")
    else
        println("Negative")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
