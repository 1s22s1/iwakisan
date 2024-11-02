function main()
    n, m = parseints()
    abn = [parseints() for _ ∈ 1:m]

    result = 0

    for i ∈ eachindex(abn)
        copyed_abn = copy(abn)
        deleteat!(copyed_abn, i)

        g = [[] for _ ∈ 1:n]
        for ab ∈ copyed_abn
            push!(g[ab[begin]], ab[end])
            push!(g[ab[end]], ab[begin])
        end

        if !isconnect(g)
            result += 1
        end
    end

    println(result)
end

function isconnect(g)
    nexts = [1]
    seen = fill(false, length(g))
    seen[1] = true

    while !isempty(nexts)
        target_vertex = popfirst!(nexts)

        for vertex ∈ g[target_vertex]
            if seen[vertex]
                continue
            end

            push!(nexts, vertex)
            seen[vertex] = true
        end
    end

    return all(x -> x, seen)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
