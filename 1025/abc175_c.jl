function main()
    x, k, d = parseints()

    if x ≥ k * d
        println(x - k * d)

        exit()
    end

    q = x ÷ d
    @show q
    if iseven(q)
        println(x - d * (q))
    else
        # In case of over position
        println(abs(x - d * (k - q + 1)))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(BigInt, x)
parsestrings() = readline() |> split

main()
