function main()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    result = 0
    for (k, v) ∈ dict
        result += v ÷ 2
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
