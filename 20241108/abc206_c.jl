function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    result = binomial(n, 2)

    for (_, v) ∈ dict
        result -= binomial(v, 2)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
