function main()
    h, w, k = parseints()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    global g = [[] for _ ∈ 1:h*w]

    for y ∈ 1:h, x ∈ 1:w
        if s[y][x] == "."
            for (a, b) ∈ [[1, 0], [-1, 0], [0, -1], [0, 1]]
                adjacent_x = x + a
                adjacent_y = y + b

                if 1 ≤ adjacent_x ≤ w &&
                   1 ≤ adjacent_y ≤ h &&
                   s[adjacent_y][adjacent_x] == "."
                    push!(g[(y-1)*w+x], (adjacent_y - 1) * w + adjacent_x)
                end
            end
        end
    end

    global seen = fill(false, length(g))
    global result = 0

    for i ∈ 1:h*w
        global seen = fill(false, length(g))
        dfs(i, k)
    end

    println(result)
end

function dfs(vertex, k)
    seen[vertex] = true

    for next_vertex ∈ g[vertex]
        if seen[next_vertex]
            continue
        end

        dfs(next_vertex, k - 1)
    end

    if k == 0
        global result += 1
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
