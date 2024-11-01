function main()
    s = parsestring()
    t = parsestring()

    set1 = Set(["AB", "BC", "CD", "DE", "EA", "BA", "CB", "DC", "ED", "AE"])
    set2 = Set(["AD", "AC", "BE", "BD", "CA", "CE", "DB", "DA", "EB", "EC"])

    if s ∈ set1 && t ∈ set1
        println("Yes")

        exit()
    end

    if s ∈ set2 && t ∈ set2
        println("Yes")

        exit()
    end

    println("No")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
