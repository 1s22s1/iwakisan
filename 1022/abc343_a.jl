function main()
    a, b = parseints()

    for i ∈ 0:9
        if a + b ≠ i
            println(i)

            exit()
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
