function main()
    n = parseint()
    an = parseints()

    arr = []
    for a ∈ an
        push!(arr, a)

        while length(arr) ≠ 1 && arr[end] == arr[end-1]
            pop!(arr)
            element = pop!(arr)
            push!(arr, element + 1)
        end
    end

    println(length(arr))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
