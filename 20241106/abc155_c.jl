function main()
    n = parseint()

    dict = Dict()
    for _ ∈ 1:n
        s = parsestring()

        dict[s] = get(dict, s, 0) + 1
    end

    max_value = maximum(values(dict))
    filtered_dict = filter(kv -> kv[end] == max_value, dict)
    sorted_dict = sort(collect(filtered_dict))

    for (k, _) ∈ sorted_dict
        println(k)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
