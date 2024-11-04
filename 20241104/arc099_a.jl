function main()
    n, k = parseints()
    an = parseints()

    if n ≤ k
        result = 1
    else
        result = 1 + ceil((n - k) / (k - 1)) |> Int
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
