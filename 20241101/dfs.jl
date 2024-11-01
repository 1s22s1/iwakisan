function main()
    n, m = parseints()
    global g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
    end

    global seen = fill(false, n)


    dfs(1)
end

function dfs(vertex)
    seen[vertex] = true

    for next_vertex ∈ g[vertex]
        if seen[next_vertex]
            continue
        end

        dfs(next_vertex)
    end

    @show vertex
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
