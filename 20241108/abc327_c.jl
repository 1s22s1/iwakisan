function main()
    a = [parseints() for _ ∈ 1:9]
    m = hcat(a...)

    for i ∈ 1:9
        if sort(m[i, :]) ≠ collect(1:9)
            println("No")

            return
        end

        if sort(m[:, i]) ≠ collect(1:9)
            println("No")

            return
        end

        for elem1 ∈ [[1, 3], [4, 6], [7, 9]]
            for elem2 ∈ [[1, 3], [4, 6], [7, 9]]
                target_vec = sort(vec(m[elem1[1]:elem1[2], elem2[1]:elem2[2]]))

                if target_vec ≠ collect(1:9)
                    println("No")

                    return
                end
            end
        end
    end

    println("Yes")

end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
