function main()
    n = parseint()
    an = parseints()

    sn = [0]

    for a ∈ an
        push!(sn, sn[end] + a)
    end

    println(sn[end] - minimum(sn))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
