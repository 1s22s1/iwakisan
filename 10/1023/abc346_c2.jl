function main()
    n, k = parseints()
    an = parseints()

    answer = sum(1:k)
    set = Set(an)

    for element ∈ set
        if element ≤ k
            answer -= element
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
