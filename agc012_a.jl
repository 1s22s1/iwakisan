function main()
    n = parseint()
    an = parseints()

    sort!(an)
    result = sum(an[3n÷3+1:2*(3n÷3)])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
