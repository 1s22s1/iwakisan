function main()
    n = parseints()

    arr = []

    for i ∈ 1:10^6
        k = i^3

        if string(k) == reverse(string(k))
            push!(arr, k)
        end
    end

    println(maximum(arr[arr.≤n]))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
