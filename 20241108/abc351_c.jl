function main()
    n = parseint()
    an = parseints()

    ball = []

    for a ∈ an
        push!(ball, a)

        if length(ball) ≤ 1
            continue
        end

        @show ball
        @show ball[end-1], ball[end]
        @show ball[end-1] == ball[end]
        while true
            if ball[end-1] ≠ ball[end]
                break
            end

            pop!(ball)
            e = pop!(ball)

            push!(ball, e + 1)
        end
    end

    result = length(ball)
    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
