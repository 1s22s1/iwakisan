function main()
    n = parseint()
    s = parsestring()

    previous_s = split(s[begin:n], "")
    next_s = split(s[n+1:end], "")

    q = parseint()
    for _ ∈ 1:q
        t, a, b = parseints()

        if t == 1
            if b < n
                previous_s[a], previous_s[b] = previous_s[b], previous_s[a]
            elseif n ≤ a
                next_s[a-n], next[b-n] = next[b-n], next[a-n]
            else
                previous_s[a], next_s[b-n] = next_s[b-n], previous_s[a]
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
