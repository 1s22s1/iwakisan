function main()
    n = parseint()
    s = parsestring()
    q = parseint()

    dict = Dict()
    for c ∈ 'a':'z'
        dict[c] = c
    end

    for _ ∈ 1:q
        c, d = parsestrings()

        for (k, v) ∈ dict
            if v == c[1]
                dict[k] = d[1]
            end
        end
    end

    for c ∈ s
        print(dict[c])
    end

    println("")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
