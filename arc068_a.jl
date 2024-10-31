function main()
    x = parseint()

    q, r = divrem(x, 11)

    if r == 0
        result = 2q
    elseif 0 < r ≤ 6
        result = 2q + 1
    elseif 6 < r < 11
        result = 2q + 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
