function main()
    x, k, d = parseints()

    x = abs(x)

    if abs(x) ≥ k * d
        println(abs(x) - k * d)

        return
    end

    pop_count = x ÷ d

    if iseven(k - pop_count)
        println(abs(x - pop_count * d))
    else
        println(abs(x - (pop_count + 1) * d))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(BigInt, x)
parsestrings() = readline() |> split

main()
