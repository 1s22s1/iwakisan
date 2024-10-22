function main()
    a, b, c, k = parseints()

    if iseven(k)
        println(a-b)
    else
        println(b-a)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
