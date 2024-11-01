function main()
    n = parseint()
    positions = [parseints() for _ ∈ 1:n]

    for position ∈ positions
        answer_number = -1
        max_distance = -1

        x = position[1]
        y = position[2]

        for i ∈ 1:n
            cur_distance = hypot(x - positions[i][1], y - positions[i][2])

            if cur_distance > max_distance
                answer_number = i
                max_distance = cur_distance
            end
        end

        println(answer_number)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
