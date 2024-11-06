function main()
    n = parseint()
    s = split(parsestring(), "")

    previous_s = s[begin:n]
    next_s = s[n+1:end]
    original_order = true

    q = parseint()
    for i ∈ 1:q
        t, a, b = parseints()

        if t == 1
            if a ≤ b ≤ n
                if original_order
                    previous_s[a], previous_s[b] = previous_s[b], previous_s[a]
                else
                    next_s[a], next_s[b] = next_s[b], next_s[a]
                end
            elseif n ≤ a ≤ b
                if original_order
                    next_s[a-n], next_s[b-n] = next_s[b-n], next_s[a-n]
                else
                    previous_s[a-n+1], previous_s[b-n+1] = previous_s[b-n+1], previous_s[a-n+1]
                end
            else
                if original_order
                    previous_s[a], next_s[b-n] = next_s[b-n], previous_s[a]
                else
                    next_s[a], previous_s[b-n] = previous_s[b-n], next_s[a]
                end
            end
        elseif t == 2
            original_order = !original_order
        end

        @show i, t, a, b
        @show previous_s, next_s, original_order
    end

    if original_order
        println("$(join(previous_s))$(join(next_s))")
    else
        println("$(join(next_s))$(join(previous_s))")
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
