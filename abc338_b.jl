function main()
    s = parsestring()

    dict = Dict()

    for c ∈ s
        dict[c] = get(dict, c, 0) + 1
    end

    max_value = maximum(collect(values(dict)))
    filtered_dict = filter(kv -> kv[2] == max_value, dict)
    target_keys = sort(collect(keys(filtered_dict)))

    println(target_keys[begin])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
