function main()
    n = parseint()
    an = parseints()

    left_sn = [0]
    for a ∈ an
        push!(left_sn, gcd(left_sn[end], a))
    end

    right_sn = [0]
    for a ∈ reverse(an)
        pushfirst!(right_sn, gcd(right_sn[begin], a))
    end

    answer = -1

    for i ∈ 1:length(left_sn)-1
        answer = max(answer, gcd(left_sn[i], right_sn[i+1]))
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
