function main()
    n = parseint()
    s = parsestring()

    east_s = [0]
    west_s = [0]

    for c ∈ s
        if c == 'E'
            push!(east_s, east_s[end] + 1)
        else
            push!(east_s, east_s[end])
        end

        if c == 'W'
            push!(west_s, west_s[end] + 1)
        else
            push!(west_s, west_s[end])
        end
    end

    result = typemax(Int)
    for i ∈ 1:n
        result = min(result, east_s[end] - east_s[i+1] + west_s[i])
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
