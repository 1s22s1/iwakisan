function main()
    n, k = parseints()
    an = parseints()

    if n ≤ k
        println(1)

        return
    end

    result = 1
    result += ceil((n - k) / (k - 1))

    println(result |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
