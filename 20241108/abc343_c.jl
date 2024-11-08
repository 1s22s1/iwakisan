function main()
    n = parseint()

    arr = BigInt[]
    for i ∈ 1:10^6
        value = i^3

        if string(value) == string(value) |> reverse
            push!(arr, value)
        end
    end

    result = arr[arr.≤n] |> maximum

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
