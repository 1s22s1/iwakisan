function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        r = a % 200

        dict[r] = get(dict, r, 0) + 1
    end

    result = 0
    for (k, v) ∈ dict
        result += binomial(v, 2)
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
