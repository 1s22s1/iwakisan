function main()
    x = parseint()

    answer = x ÷ 11 * 2

    if x % 11 == 0
        # Do nothing
    elseif 1 ≤ x % 11 ≤ 6
        answer += 1
    else
        answer += 2
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
