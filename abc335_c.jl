function main()
    n, q = parseints()

    dragons = [[i, 0] for i ∈ 1:n]

    for _ ∈ 1:q
        command, value = parsestrings()

        new_head = deepcopy(dragons[begin])

        if command == "1"
            if value == "U"
                new_head[2] += 1
            elseif value == "R"
                new_head[1] += 1
            elseif value == "D"
                new_head[2] -= 1
            elseif value == "L"
                new_head[1] -= 1
            end

            dragons = vcat([new_head], dragons[begin:end-1])
        elseif command == "2"
            value = parse(Int, value)

            println("$(dragons[value][1]) $(dragons[value][2])")
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
