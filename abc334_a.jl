function main()
    b, g = parseints()

    if b > g
        println("Bat")
    else
        println("Glove")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
