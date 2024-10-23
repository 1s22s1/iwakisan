using Printf

function main()
    n = parseint()
    positions = [parseints() for _ ∈ 1:n]

    pushfirst!(positions, [0, 0])
    push!(positions, [0, 0])

    answer = 0
    for i ∈ 1:length(positions)-1
        answer +=
            hypot(positions[i][1] - positions[i+1][1], positions[i][2] - positions[i+1][2])
    end

    @printf("%.8f\n", answer)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
