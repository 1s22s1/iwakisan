function main()
    k = parseint()
    result = 1
    r = 7

    for _ ∈ 1:k
        if r % k == 0
            println(result)

            return
        end

        r = (10r + 7) % k
        result += 1
    end

    println(-1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
