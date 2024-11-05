function main()
    n = parseint()
    dict = Dict()

    for _ ∈ 1:n
        s = split(parsestring(), "") |> sort
        key = hash(s)

        dict[key] = get(dict, key, 0) + 1
    end

    result = 0
    for (_, v) ∈ dict
        result += binomial(v, 2)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
