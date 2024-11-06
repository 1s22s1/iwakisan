function main()
    n = parseint()

    dict = Dict()
    for _ ∈ 1:n
        s = parsestring()

        dict[s] = get(dict, s, 0) + 1
    end

    result = length(dict)

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
