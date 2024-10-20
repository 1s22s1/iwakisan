function main()
    a = [parseints() for i ∈ 1:9]

    # row(yoko)
    for row ∈ a
        if sort(row) ≠ collect(1:9)
            println("No")

            exit()
        end
    end

    # column(tate)
    for i ∈ 1:9
        if map(row -> row[i], a) |> sort ≠ collect(1:9)
            println("No")

            exit()
        end
    end

    for pattern1 ∈ [1:3, 4:6, 7:9]
        for pattern2 ∈ [1:3, 4:6, 7:9]
            arr = collect(Iterators.flatten(map(row -> row[pattern2], a[pattern1]))) |> sort

            if arr ≠ collect(1:9)
                println("No")

                exit()
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
