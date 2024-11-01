# Answer is 109

function main()
    n, k = parseints()
    sequence = [n]

    first_length = -1

    while true
        n = push_a(n)

        if n ∈ sequence
            first_length = findfirst(x -> x == n, sequence) - 1

            break
        else
            push!(sequence, n)
        end
    end

    period_length = length(sequence) - first_length
    if k ≤ first_length
        println(sequence[k+1])
    else
        r = (k - first_length) % period_length
        if r == 0
            println(sequence[end])
        else
            println(sequence[r+first_length+1])
        end
    end
end

function push_a(n)
    return (n + (split(string(n), "") |> x -> parse.(Int, x) |> sum)) % 10^5
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
