function main()
    an = []

    while true
        a = parseint()
        push!(an, a)

        if a == 0
            break
        end
    end

    for a ∈ an[end:-1:begin]
        println(a)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
