function main()
    n, q = parseints()
    dragons = []

    for i ∈ 1:n
        push!(dragons, [i, 0])
    end

    for _ ∈ 1:q
        command, value = parsestrings()

        if command == "1"
            new_head = deepcopy(dragons[begin])

            if value == "R"
                new_head[begin] += 1
            elseif value == "L"
                new_head[begin] -= 1
            elseif value == "U"
                new_head[end] += 1
                # In case of D
            else
                new_head[end] -= 1
            end

            pushfirst!(dragons, new_head)
            pop!(dragons)
            # In case of 2
        else
            value = parse(Int, value)

            part = dragons[value]
            println("$(part[begin]) $(part[end])")
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
