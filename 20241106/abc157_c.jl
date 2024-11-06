function main()
    n, m = parseints()
    scn = [parseints() for _ ∈ 1:m]

    if n == 3
        for i ∈ 100:999
            string_i = string(i)

            flag = true

            for sc ∈ scn
                if string_i[sc[begin]] ≠ first(string(sc[end]))
                    flag = false
                end
            end

            if flag
                println(i)

                return
            end
        end
    elseif n == 2
        for i ∈ 10:99
            string_i = string(i)

            flag = true

            for sc ∈ scn
                if string_i[sc[begin]] ≠ first(string(sc[end]))
                    flag = false
                end
            end

            if flag
                println(i)

                return
            end
        end
    elseif n == 1
        for i ∈ 0:9
            string_i = string(i)

            flag = true

            for sc ∈ scn
                if string_i[sc[begin]] ≠ first(string(sc[end]))
                    flag = false
                end
            end

            if flag
                println(i)

                return
            end
        end
    end

    println(-1)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
