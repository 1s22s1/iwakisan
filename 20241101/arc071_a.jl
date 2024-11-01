function main()
    n = parseint()

    dicts = []
    for _ ∈ 1:n
        s = parsestring()
        dict = Dict()

        for c ∈ s
            dict[c] = get(dict, c, 0) + 1
        end

        push!(dicts, dict)
    end

    merged_dict = Dict()
    for c ∈ 'a':'z'
        merged_dict[c] = typemax(Int)
    end

    for dict ∈ dicts
        for c ∈ 'a':'z'
            merged_dict[c] = min(merged_dict[c], get(dict, c, 0))
        end
    end

    sorted_dict = sort(collect(merged_dict))
    for (k, v) ∈ sorted_dict
        print(k^v)
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
