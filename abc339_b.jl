function main()
    h, w, n = parseints()

    grid = [fill(".", w) for _ ∈ 1:h]

    cur_y = cur_x = 1
    cur_d = "T"

    for i ∈ 1:n
        if grid[cur_y][cur_x] == "."
            grid[cur_y][cur_x] = "#"
            cur_d = clockwise(cur_d)
            cur_x, cur_y = move(h, w, cur_x, cur_y, cur_d)
        else
            grid[cur_y][cur_x] = "."
            cur_d = counter_clockwise(cur_d)
            cur_x, cur_y = move(h, w, cur_x, cur_y, cur_d)
        end
    end

    display(grid)
end

function clockwise(d)
    if d == "T"
        return "R"
    elseif d == "R"
        return "D"
    elseif d == "D"
        return "L"
    elseif d == "L"
        return "T"
    end
end

function counter_clockwise(d)
    if d == "T"
        return "L"
    elseif d == "L"
        return "D"
    elseif d == "D"
        return "R"
    elseif d == "R"
        return "T"
    end
end

function move(h, w, x, y, d)
    if d == "T"
        y -= 1

        if y == 0
            y = h
        end
    elseif d == "R"
        x += 1

        if x == w + 1
            x = 1
        end
    elseif d == "D"
        y += 1

        if y == h + 1
            y = 1
        end
    elseif d == "L"
        x -= 1

        if x == 0
            x = w
        end
    end

    return x, y
end

function display(grid)
    for row ∈ grid
        println(join(row))
    end
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
