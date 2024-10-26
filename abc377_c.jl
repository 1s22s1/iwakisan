function main()
    n, m = parseints()

    set = Set([])

    for _ ∈ 1:m
        a, b = parseints()
        push!(set, (a, b))

        if check_range(a + 2, b + 1, n)
            push!(set, (a + 2, b + 1))
        end

        if check_range(a + 1, b + 2, n)
            push!(set, (a + 1, b + 2))
        end

        if check_range(a - 1, b + 2, n)
            push!(set, (a - 1, b + 2))
        end

        if check_range(a - 2, b + 1, n)
            push!(set, (a - 2, b + 1))
        end

        if check_range(a - 2, b - 1, n)
            push!(set, (a - 2, b - 1))
        end

        if check_range(a - 1, b - 2, n)
            push!(set, (a - 1, b - 2))
        end

        if check_range(a + 1, b - 2, n)
            push!(set, (a + 1, b - 2))
        end

        if check_range(a + 2, b - 1, n)
            push!(set, (a + 2, b - 1))
        end
    end

    answer = n^2 - length(set)

    println(answer)
end

function check_range(i, j, n)
    return 1 ≤ i ≤ n && 1 ≤ j ≤ n
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
