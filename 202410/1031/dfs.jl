function main()
    n, m = parseints()
    global g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
    end

    global seen = fill(false, n)

    dfs(1)

    @show seen
end

function dfs(v)
    seen[v] = true

    for vertex ∈ g[v]
        if seen[v]
            continue
        end

        def(vertex)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
