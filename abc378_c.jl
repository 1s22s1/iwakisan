function main()
    n = parseint()
    an = parseints()

    dict = Dict()

    for i ∈ eachindex(an)
        value = get(dict, an[i], -1)

        print("$(value) ")

        dict[an[i]] = i
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
