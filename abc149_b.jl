function main()
    a, b, k = parseints()

    a -= k ÷ 2
    b -= k ÷ 2

    if isodd(k)
        a -= 1
    end

    a = max(a, 0)
    b = max(b, 0)

    println("$(a) $(b)")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
