function main()
    x, k, d = parseints()

    if x ≥ k*d
        println(abs(x - k * d))

        return
    end

    pop_count = x ÷ d
    k -= pop_count

    if iseven(k)
        println(abs(x - k * d))
    else
        println(abs(x - (k + 1) * d))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(BigInt, x)
parsestrings() = readline() |> split

main()
