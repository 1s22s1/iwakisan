function main()
    sn = [split(parsestring(), "") for _ ∈ 1:8]

    # tate
    column = Set([])

    # yoko
    row = Set([])

    for i ∈ 1:8, j ∈ 1:8
        if sn[i][j] == "#"
            push!(column, i)
            push!(row, j)
        end
    end

    answer = length(setdiff(1:8, column)) * length(setdiff(1:8, row))

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
