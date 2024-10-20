function main()
    n = parseint()

    while true
        if (n ÷ 100) * (n % 100 ÷ 10) == n % 10
            println(n)

            exit()
        end

        n += 1
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
