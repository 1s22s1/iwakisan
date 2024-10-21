function main()
    n, q = parseints()

    dragon = []
    for i ∈ 1:n
        push!(dragon, [i, 0])
    end

    for _ ∈ 1:q
        query1, query2 = parsestrings()
        query1 = parse(Int, query1)

        if query1 == 1
            head = deepcopy(dragon[begin])
            deleteat!(dragon, n)

            if query2 == "U"
                head[2] += 1
            elseif query2 == "D"
                head[2] -= 1
            elseif query2 == "R"
                head[1] += 1
            elseif query2 == "L"
                head[1] -= 1
            end

            pushfirst!(dragon, head)
        elseif query1 == 2
            query2 = parse(Int, query2)

            println("$(dragon[query2][1]) $(dragon[query2][2])")
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
