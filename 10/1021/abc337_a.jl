function main()
    n = parseint()

    takahashi = aoki = 0

    for _ ∈ 1:n
        x, y = parseints()

        takahashi += x
        aoki += y
    end

    if takahashi > aoki
        println("Takahashi")
    elseif takahashi == aoki
        println("Draw")
    elseif takahashi < aoki
        println("Aoki")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
