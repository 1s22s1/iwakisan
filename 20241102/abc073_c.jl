function main()
    n = parseint()
    dict = Dict()

    for _ ∈ 1:n
        a = parseint()

        dict[a] = get(dict, a, 0) + 1
    end

    filterd_dict = filter(kv -> isodd(kv[end]), dict)
    result = length(filterd_dict)

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
