function main()
    s = parsestring()
    t = parsestring()

    if s == t
        println(0)

        exit()
    end

    if length(s) ≥ length(t)
        for i ∈ eachindex(t)
            if s[i] ≠ t[i]
                println(i)

                exit()
            end
        end

        println(length(t) + 1)

        exit()
    else
        for i ∈ eachindex(s)
            if s[i] ≠ t[i]
                println(i)

                exit()
            end
        end

        println(length(s) + 1)
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
