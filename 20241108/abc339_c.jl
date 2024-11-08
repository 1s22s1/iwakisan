function main()
    n = parseint()
    an = parseints()

    s = [0]
    for a ∈ an
        push!(s, s[end] + a)
    end

    result = abs(minimum(s)) + s[end]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
