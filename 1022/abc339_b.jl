function main()
    h, w, n = parseints()

    grid = fill(".", (h, w))
    takahashi = Takahashi(1, 1, "T")

    for _ ∈ 1:n
        # When current square is white
        if grid[takahashi.i, takahashi.j] == "."
            takahashi.direction = clockwise(takahashi.direction)
            grid[takahashi.i, takahashi.j] = "#"

            move(takahashi, w, h)
            # When current square is black
        else
            takahashi.direction = count_clockwise(takahashi.direction)
            grid[takahashi.i, takahashi.j] = "."
            move(takahashi, w, h)
        end
    end

    display(grid)
end

mutable struct Takahashi
    i::Any
    j::Any
    direction::Any
end

function clockwise(direction)
    dict = Dict("T" => "R", "R" => "D", "D" => "L", "L" => "T")

    return dict[direction]
end

function count_clockwise(direction)
    dict = Dict("T" => "L", "L" => "D", "D" => "R", "R" => "T")

    return dict[direction]
end

function move(takahashi, w, h)
    if takahashi.direction == "T"
        takahashi.i -= 1

        if takahashi.i == 0
            takahashi.i = h
        end
    elseif takahashi.direction == "D"
        takahashi.i += 1

        if takahashi.i == h + 1
            takahashi.i = 1
        end
    elseif takahashi.direction == "R"
        takahashi.j += 1

        if takahashi.j == w + 1
            takahashi.j = 1
        end
    elseif takahashi.direction == "L"
        takahashi.j -= 1

        if takahashi.j == 0
            takahashi.j = w
        end
    end
end

function display(grid)
    for i ∈ 1:size(grid, 1)
        println(join(grid[i, :]))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
