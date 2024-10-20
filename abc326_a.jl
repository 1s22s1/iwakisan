function main()
    x, y = parseints()

    diff = y - x

    if 0 ≤ diff ≤ 2 || -3 ≤ diff ≤ 0
        println("Yes")
    else
        println("No")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
