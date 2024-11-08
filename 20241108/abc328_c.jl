function main()
    n, q = parseints()
    s = parsestring()

    sn = [0]
    for i ∈ 1:n-1
        if s[i] == s[i+1]
            push!(sn, sn[end] + 1)
        else
            push!(sn, sn[end])
        end
    end

    for _ ∈ 1:q
        l, r = parseints()

        println(sn[r] - sn[l])
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
