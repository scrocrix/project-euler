function multiples_of_3_and_5()
    n = input('Number: ');
    total = 0;
    for i = 0:n-1
        if (mod(i,3) == 0 || mod(i,5) == 0)
            total = total + i;
        end
    end
    disp(total)
end