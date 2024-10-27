function main()
    global n, m = parseints()

    positions = Set([])

    for _ ∈ 1:m
        a, b = parseints()

        push!(positions, (a, b))

        if isinboard(a + 2, b + 1)
            push!(positions, (a + 2, b + 1))
        end

        if isinboard(a + 1, b + 2)
            push!(positions, (a + 1, b + 2))
        end

        if isinboard(a - 1, b + 2)
            push!(positions, (a - 1, b + 2))
        end

        if isinboard(a - 2, b + 1)
            push!(positions, (a - 2, b + 1))
        end

        if isinboard(a - 2, b - 1)
            push!(positions, (a - 2, b - 1))
        end

        if isinboard(a - 1, b - 2)
            push!(positions, (a - 1, b - 2))
        end

        if isinboard(a + 1, b - 2)
            push!(positions, (a + 1, b - 2))
        end

        if isinboard(a + 2, b - 1)
            push!(positions, (a + 2, b - 1))
        end
    end

    println(n^2 - length(positions))
end

function isinboard(i, j)
    return 1 ≤ i ≤ n && 1 ≤ j ≤ n
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
