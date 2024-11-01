function main()
    n = parseint()
    an = parseints()

    answer = typemax(Int)

    for bit ∈ 0:(1<<n)-1
        s = Int[]

        for i ∈ 0:length(an)-1
            if bit & 1 << i ≠ 0
                push!(s, an[i+1])
            end
        end

        answer = min(answer, max(sum(s), sum(an) - sum(s)))
    end

    println(answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
