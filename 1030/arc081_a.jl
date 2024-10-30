function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    sorted_dict = sort(filter(kv -> kv[2] ≥ 2, collect(dict)), rev = true)

    if length(sorted_dict) < 2
        return 0
    end

    edges = []
    for (k, v) ∈ sorted_dict
        while v > 1
            v -= 2
            push!(edges, k)

            if length(edges) == 2
                println(edges[begin] * edges[begin+1])

                return
            end
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
