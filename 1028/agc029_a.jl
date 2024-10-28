function main()
    s = parsestring()

    w_length = count(x -> x == 'W', s)
    indexes = findall('W', s)

    result = indexes - collect(1:w_length) |> sum

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
