function main()
    a, b = parseints()

    for i ∈ 1:1250
        if floor(0.08i) == a && floor(0.10i) == b
            println(i)

            return
        end
    end

    println(-1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
