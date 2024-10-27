function main()
    s = parsestring()

    if split(s, "") |> sort |> join == "ABC"
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
