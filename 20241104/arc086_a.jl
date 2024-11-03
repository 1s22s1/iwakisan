function main()
    n, k = parseints()
    an = parseints()

    dict = Dict()
    for a ∈ an
        dict[a] = get(dict, a, 0) + 1
    end

    pairs = sort(collect(dict), by = last)

    if k ≥ length(pairs)
        result = 0
    else
        result = map(x -> x[end], pairs[begin:length(pairs)-k]) |> sum
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
