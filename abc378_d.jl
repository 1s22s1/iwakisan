function main()
    h, w, k = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    global g = [[] for _ ∈ 1:h*w]

    for y ∈ 1:h, x ∈ 1:w
        if s[y][x] == "."
            for (a, b) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
                adjacent_x = x+a
                adjacent_y = y+b

                if 1 ≤ adjacent_x ≤ w && 1 ≤ adjacent_y ≤ h && s[adjacent_y][adjacent_x] == "."
                    push!(g[(y-1)*w + x], (adjacent_y-1)*w + adjacent_x)
                end
            end
        end
    end

    global seen = fill(false, length(g))
    global result = 0

    for i ∈ 1:h*w
        seen = bfs(g, i)
        @show seen
        result += length(filter(x -> x == k, seen))
    end

    println(result)
end


function bfs(graph::Vector{}, start::Int)
    nexts = [start]

    seen = fill(-1, length(graph))
    pop_count = 0
    seen[start] = pop_count

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)
        pop_count += 1

        for vertex ∈ graph[target_vertex]
            if seen[vertex] ≠ -1
                continue
            end

            push!(nexts, vertex)
            seen[vertex] = pop_count
        end
    end

    return seen::Vector{}
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
