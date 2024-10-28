function main()
    answer = 0

    for i ∈ 1:12
        s = parsestring()

        if length(s) == i
            answer += 1
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
