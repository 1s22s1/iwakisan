function main()
    w, b = parseints()

    keyboard = "wbwbwwbwbwbw"^21

    for i ∈ 1:length(keyboard)-w-b
        w_cnt = b_cnt = 0

        for j ∈ i:i+w+b-1
            if keyboard[j] == 'w'
                w_cnt += 1
                # In case of b
            else
                b_cnt += 1
            end
        end

        if w_cnt == w && b_cnt == b
            println("Yes")

            exit()
        end
    end

    println("No")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
