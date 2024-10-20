function main()
    n = parseint()
    dn = parseints()

    answer = 0

    for month ∈ 1:n
        day = dn[month]

        for j ∈ 1:day
            set = Set(split(string(month), ""))
            set = set ∪ Set(split(string(j), ""))

            if length(set) == 1
                answer += 1
            end
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
