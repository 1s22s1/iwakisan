function main()
    n, m = parseints()
    hn = parseints()

    g = [[] for _ ∈ 1:n]
    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    result = 0
    for i ∈ 1:n
        if all(x -> x < hn[i], hn[g[i]])
            result += 1
        end
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
