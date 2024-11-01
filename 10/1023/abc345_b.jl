function main()
    x = parse(BigInt, readline())

    println(x / 10 |> ceil |> Int)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
