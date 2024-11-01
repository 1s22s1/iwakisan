function main()
    b = parseint()

    for i ∈ 1:18
        if i^i == b
            println(i)

            exit()
        end
    end

    println(-1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
