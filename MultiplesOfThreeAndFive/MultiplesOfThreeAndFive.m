classdef MultiplesOfThreeAndFive
    methods
        function sum = calculate(~, input)
            sum = 0;
            for i = 0:input-1
                if (mod(i,3) == 0 || mod(i,5) == 0)
                    sum = sum + i;
                end
            end
        end
    end
end
