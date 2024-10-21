function main()
    s = parsestring()

    dict = Dict()

    for c ∈ s
        dict[c] = get(dict, c, 0) + 1
    end

    sorted_dict = sort(collect(dict), by = x -> x[2], rev = true)
    max_value = sorted_dict[begin][2]
    keys = [first(p) for p in sorted_dict if last(p) == max_value]

    println(sort(keys)[begin])
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
