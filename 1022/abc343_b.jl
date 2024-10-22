function main()
    n = parseint()

    for _ ∈ 1:n
        an = parseints()

        for i ∈ eachindex(an)
            if an[i] == 1
                print("$(i) ")
            end
        end

        println("")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
