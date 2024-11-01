function main()
    q, h, s, d = parseints()
    n = parseint()

    one_liter_price = min(4q, 2h, s)
    result = min(one_liter_price * n, d * (n ÷ 2) + one_liter_price * (n % 2))

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
