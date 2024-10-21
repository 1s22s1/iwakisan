function main()
    n = parseint()

    for x ∈ 0:21, y ∈ 0:21, z ∈ 0:21
        if x + y + z ≤ n
            println("$(x) $(y) $(z)")
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
