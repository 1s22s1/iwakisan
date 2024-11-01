function main()
    n = parseint()

    for i ∈ 1:n
        if i % 3 == 0
            print("x")
        else
            print("o")
        end
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
