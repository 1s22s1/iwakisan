function main()
    n = parseint()
    s = split(parsestring(), "")

    previous_s = s[begin:n]
    next_s = s[n+1:end]

    q = parseint()
    for i ∈ 1:q
        t, a, b = parseints()

        if t == 1
            if a ≤ b ≤ n
                previous_s[a], previous_s[b] = previous_s[b], previous_s[a]
            elseif a ≤ n ≤ b
                previous_s[a], next_s[b-n] = next_s[b-n], previous_s[a]
            else
                next_s[a-n+1], next_s[b-n+1] = next_s[b-n+1], next_s[a-n+1]
            end
        elseif t == 2
            previous_s, next_s = next_s, previous_s
        end
    end

    println("$(join(previous_s))$(join(next_s))")
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
