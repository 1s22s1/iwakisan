using Combinatorics

function main()
    n, m = parseints()
    global g = [[] for _ ∈ 1:n]

    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    global result = 0
    global seen = fill(false, n)

    dfs(1)

    println(result)
end

function dfs(vertex)
    global seen[vertex] = true

    @show vertex, g[vertex], seen
    if isempty(g[vertex]) && all(seen)
        global result += 1
    end

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
