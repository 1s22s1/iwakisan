function main()
    s = parsestring()

    for i ∈ 1:length(s)
        if i == 1
            if islowercase(s[i])
                println("No")

                exit()
            end
        else
            if isuppercase(s[i])
                println("No")

                exit()
            end
        end
    end

    println("Yes")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
