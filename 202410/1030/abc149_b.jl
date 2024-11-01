function main()
    a, b, k = parseints()

    if k ≤ a
        println("$(a-k) $(b)")
    elseif a < k ≤ a + b
        println("$(0) $(b-(k-a))")
    else
        println("0 0")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
