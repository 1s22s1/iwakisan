function main()
    n = parseint()
    pn = parseints()
    q = parseint()

    for _ ∈ 1:q
        a, b = parseints()

        for p ∈ pn
            if p == a
                println(a)

                break
            end

            if p == b
                println(b)

                break
            end
        end
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
