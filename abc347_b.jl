function main()
    s = parsestring()

    set = Set([])

    for i ∈ eachindex(s), j ∈ 1:length(s)-i+1
        push!(set, s[i:i+j-1])
    end

    println(length(set))
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
