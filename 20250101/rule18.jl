using Images, ImageView

const RULE = Dict(
    [1, 1, 1] => 0,
    [1, 1, 0] => 0,
    [1, 0, 1] => 0,
    [1, 0, 0] => 1,
    [0, 1, 1] => 0,
    [0, 1, 0] => 0,
    [0, 0, 1] => 1,
    [0, 0, 0] => 0,
)

n = 128
cells = zeros(n)
cells[n÷2] = 1

output = []

for _ ∈ 1:n
    next_cells = []

    for i ∈ 2:n-1
        push!(next_cells, get(RULE, cells[i-1:i+1], -1))
    end

    pushfirst!(next_cells, get(RULE, [0, cells[begin], cells[begin+1]], -1))
    push!(next_cells, get(RULE, [cells[end-1], cells[end], 0], -1))

    push!(output, cells)

    global cells = next_cells
end

output = map(x -> Float64(x), hcat(output...))

img = colorview(Gray, output)
imshow(img)
