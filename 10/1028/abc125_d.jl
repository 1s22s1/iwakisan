function main()
    n = parseint()
    an = parseints()

    if filter(x -> x < 0, an) |> length |> iseven
        result = map(x -> abs(x), an) |> sum
    else
        result = map(x -> abs(x), an) |> sum

        abs_min = minimum(map(x -> abs(x), an))
        result -= 2abs_min
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
