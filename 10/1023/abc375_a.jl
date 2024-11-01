function main()
    n = parseint()
    s = parsestring()

    answer = 0

    if n ≤ 2
        println(answer)

        exit()
    end

    for i ∈ 1:n-2
        if s[i] == '#' && s[i+1] == '.' && s[i+2] == '#'
            answer += 1
        end
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
