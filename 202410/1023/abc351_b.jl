function main()
    n = parseint()
    a = [split(parsestring(), "") for _ ∈ 1:n]
    b = [split(parsestring(), "") for _ ∈ 1:n]

    for i ∈ 1:n
        for j ∈ 1:n
            if a[i][j] ≠ b[i][j]
                println("$(i) $(j)")

                exit()
            end
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
