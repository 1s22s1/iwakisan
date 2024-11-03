function main()
    c = [parseints() for _ ∈ 1:3]

    if length(unique(c[1] - c[2])) ==
       length(unique(c[2] - c[3])) ==
       length(unique(c[3] - c[1])) ==
       1
        println("Yes")
    else
        println("No")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
