function main()
    n, k = parseints()
    an = parseints()
    bn = parseints()

    operation_count = (an - bn) |> x -> map(abs, x) |> sum

    if k < operation_count
        println("No")

        exit()
    end

    if operation_count % 2 == k % 2
        println("Yes")
    else
        println("No")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
