function main()
    n = parseint()

    dict = Dict()
    for _ ∈ 1:n
        a, c = parseints()

        if get(dict, c, typemax(Int)) > a
            dict[c] = a
        end
    end

    println(maximum(values(dict)))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
