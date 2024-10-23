function main()
    n, k = parseints()
    an = parseints()

    for a ∈ an
        if a % k == 0
            print("$(a ÷ k) ")
        end
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
