function main()
    s = parsestring()

    dict = Dict()
    for c ∈ s
        dict[c] = get(dict, c, 0) + 1
    end

    arr = collect(values(dict))

    result = (length(s)^2 - sum(arr .^ 2)) ÷ 2

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
