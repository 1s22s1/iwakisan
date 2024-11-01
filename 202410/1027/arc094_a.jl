function main()
    a, b, c = parseints()

    if all(x -> x % 2 == 0, [a, b, c])
        max_value = max(a, b, c)
        answer = (map(x -> abs(x), [a, b, c] .- max_value) |> sum) ÷ 2

        return answer
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
