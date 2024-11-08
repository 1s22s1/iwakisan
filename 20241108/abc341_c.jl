function main()
    h, w, n = parseints()
    t = parsestring()
    s = [split(parsestring(), "") for _ ∈ 1:h]

    result = 0
    for i ∈ 1:h, j ∈ 1:w
        cur_i = i
        cur_j = j

        if s[cur_i][cur_j] == "#"
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

            # if !(1 ≤ cur_i ≤ w && 1 ≤ cur_j ≤ h)
            #     flag = false

            #     break
            # end

            if s[cur_i][cur_j] == "#"
                flag = false

                break
            end
        end

        if flag
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
