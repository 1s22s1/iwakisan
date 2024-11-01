function main()
    a, b = parseints()

    if any(x -> iseven(x), [a, b])
        println("No")
    else
        println("Yes")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
