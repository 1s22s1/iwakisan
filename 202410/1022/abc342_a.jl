function main()
    s = parsestring()

    dict = Dict()
    for c ∈ s
        dict[c] = get(dict, c, 0) + 1
    end

    diff = filter(kv -> kv[2] == 1, dict)
    target_c = collect(keys(diff))[begin]

    answer = findfirst(target_c, s)

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
