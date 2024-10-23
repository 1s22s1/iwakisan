function main()
    n = parseint()
    s = parsestring()

    dict = Dict()
    for c ∈ 'a':'z'
        dict[c] = c
    end

    q = parseint()
    for _ ∈ 1:q
        c, d = parsestrings()
        c = c[begin]
        d = d[begin]

        for (k, v) ∈ dict
            if c == v
                dict[k] = d
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
