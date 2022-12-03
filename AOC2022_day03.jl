# Day 3
# written in Julia

# Part One

open("input.txt") do file
    sum_of_priorities = 0
    for rucksack ∈ eachline(file)
        item_priority = 0
        comp_1, comp_2 = rucksack[1:end ÷ 2], rucksack[(end ÷ 2 + 1):end]
        for item ∈ comp_1
            if (occursin(item, comp_2))
                islowercase(item) ? (item_priority = Int(item) - 96) : (item_priority = Int(item) - 38)
                continue
            end
        end
        sum_of_priorities += item_priority
    end
    println("Sum of Priorities | Part One : $sum_of_priorities")
end

# Part Two

open("input.txt") do file
    sum_of_priorities = 0
    while ! eof(file)
        item_priority = 0
        elf1, elf2, elf3 = readline(file), readline(file), readline(file)
        for item in elf1
            if (occursin(item, elf2)) && (occursin(item, elf3))
                islowercase(item) ? (item_priority = Int(item) - 96) : (item_priority = Int(item) - 38)
                continue
            end
        end
        sum_of_priorities += item_priority
    end
    println("Sum of Priorities | Part Two : $sum_of_priorities")
end