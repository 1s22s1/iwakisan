function main()
    t = parseint()

    for _ ∈ 1:t
        n2, n3, n4 = parseints()

        result = make10(n2, n3, n4)
        println(result)
    end
end

function make10(n2, n3, n4)
    result = 0

    # Pattern 1, 0, 2
    min_value = min(n2, n4 ÷ 2)
    result += min_value
    n2 -= min_value
    n4 -= 2min_value

    # Pattern 0, 2, 1
    min_value = min(n3 ÷ 2, n4)
    result += min_value
    n3 -= 2min_value
    n4 -= min_value

    # Pattern 2, 2, 0
    min_value = min(n2 ÷ 2, n3 ÷ 2)
    result += min_value
    n2 -= 2min_value
    n3 -= 3min_value

    # Pattern 3, 0, 1
    min_value = min(n2 ÷ 3, n4)
    result += min_value
    n2 -= 3min_value
    n4 -= min_value

    # Pattern 5, 0, 0
    min_value = n2 ÷ 5
    result += min_value
    n2 -= 5min_value

    return result
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
