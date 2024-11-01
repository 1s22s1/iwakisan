function main()
    s = parsestring()

    dict = Dict()
    for c ∈ s
        dict[c] = get(dict, c, 0) + 1
    end

    max_value = maximum(values(dict))

    for i ∈ 1:max_value
        if length(filter(kv -> kv[2] == i, dict)) ∉ [0, 2]
            println("No")

            exit()
        end
    end

    println("Yes")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
