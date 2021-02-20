classdef SumSquareDifference
    methods
        function difference = calculate(~, n)
            ss = 0;
            s = 0;
            for i = 1:n
                ss = ss + (i * i);
                s = s + i;
            end
            difference = (s * s) - ss;
        end
    end
end

