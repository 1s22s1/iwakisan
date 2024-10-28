function main()
    n = parseint()
    s = parsestring()

    red_count = count(x -> x == 'R', s)
    result = red_count - count(x -> x == 'R', s[begin:begin+red_count-1])

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
