function main()
    n = parseint()
    an = parseints()

    left_s = [0]
    for a ∈ an
        push!(left_s, gcd(left_s[end], a))
    end

    right_s = [0]
    for a ∈ reverse(an)
        pushfirst!(right_s, gcd(right_s[begin], a))
    end

    result = -1
    for i ∈ 1:n
        result = max(result, gcd(left_s[i], right_s[i+1]))
    end

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
