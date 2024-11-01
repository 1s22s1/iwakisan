function main()
    h, w, n = parseints()
    t = parsestring()
    map = [split(parsestring(), "") for _ ∈ 1:h]

    answer = 0

    for i ∈ 1:h
        for j ∈ 1:w
            cur_i = i
            cur_j = j

            if map[cur_i][cur_j] == "#"
                continue
            end

            flag = true
            for c ∈ t
                if c == 'L'
                    cur_j -= 1
                elseif c == 'R'
                    cur_j += 1
                elseif c == 'U'
                    cur_i -= 1
                elseif c == 'D'
                    cur_i += 1
                end

                if map[cur_i][cur_j] == "#"
                    flag = false
                    break
                end
            end

            if flag
                answer += 1
            end
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
