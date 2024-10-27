function main()
    a, b, c = parseints()

    max_value = max(a, b, c)
    total = (map(x -> abs(x), [a, b, c] .- max_value) |> sum)

    if total % 2 == 0
        println(total ÷ 2)
    else
        println(total ÷ 2 + 2)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
