function main()
    x = parseint()

    q, r = divrem(x, 11)

    if r == 0
        println(2q)
    elseif 1 ≤ r ≤ 6
        println(2q + 1)
    else
        println(2q + 2)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
