function main()
    n = parseint()
    an = parseints()

    dict = Dict()
    for i ∈ eachindex(an)
        v = get(dict, an[i], -1)

        print("$(v) ")

        dict[an[i]] = i
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
