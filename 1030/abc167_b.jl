function main()
    a, b, c, k = parseints()

    result = 0

    a_min = min(a, k)
    result = 1a_min
    k -= a_min

    b_min = min(b, k)
    result += 0 * b_min
    k -= b_min

    c_min = min(c, k)
    result += -1c_min
    k -= c_min

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
