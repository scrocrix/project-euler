classdef EvenFibonacciNumbers
    methods
        % sum is responsible for recursively appending product of the
        % formula f(n) = fn - 1 + fn - 2, and then verify rather the
        % current term is an even number.
        function sum = sum(~, limit)
            sum = 0;
            t1 = 1;
            t2 = 2;
            i = 1;
            while sum < limit
                if i == 1
                    i = i + 1;
                    continue;
                end
                if i == 2
                    i = i + 1;
                    sum = sum + t2;
                    continue;
                end
                t = t1 + t2;
                t1 = t2;
                t2 = t;
                if (mod(t, 2) == 0)
                    sum = sum + t;
                end
                i = i + 1;
             end
        end
    end
end

