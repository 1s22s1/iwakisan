using Combinatorics

function main()
    n, m = parseints()

    g = [[] for i ∈ 1:n]
    for _ ∈ 1:m
        a, b = parseints()

        push!(g[a], b)
        push!(g[b], a)
    end

    result = 0

    for perm ∈ permutations(1:n)
        satify = true

        if perm[begin] ≠ 1
            satify = false
        end

        for i ∈ 1:n-1
            if perm[i+1] ∉ g[perm[i]]
                satify = false
            end
        end

        if satify
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
