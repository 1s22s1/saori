function main()
    n = parseint()
    dn = parseints()

    sort!(dn)

    result = dn[n÷2+1] - dn[n÷2]

    println(result)
end

parseint() = readline() |> x -> parse(Int, x)
parsestring() = readline()
parseints() = readline() |> split |> x -> parse.(Int, x)
parsestrings() = readline() |> split

main()
