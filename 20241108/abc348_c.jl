function main()
    n = parseint()

    dict = Dict()

    for _ ∈ 1:n
        a, c = parseints()

        dict[c] = min(get(dict, c, a), a)
    end

    result = values(dict) |> collect |> maximum

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
