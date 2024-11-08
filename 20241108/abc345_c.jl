function main()
    s = split(parsestring(), "")

    set = Set()

    for i ∈ eachindex(s), j ∈ i+1:length(s)
        t = deepcopy(s)

        t[i], t[j] = t[j], t[i]

        push!(set, hash(t))
    end

    result = length(set)

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
