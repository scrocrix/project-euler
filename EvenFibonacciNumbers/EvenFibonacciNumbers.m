classdef EvenFibonacciNumbers
    properties
        sequence = []
    end
    methods
        % generateFibonacciSequence is responsible for recursively
        % appending product of the formula f(n) = fn - 1 + fn - 2 to
        % the sequence array.
        function obj = generateFibonacciSequence(obj, terms)            
            t1 = 1;
            t2 = 2;
            for i = 1:terms
                if i == 1
                    obj.sequence(end+1) = t1;
                    continue;
                end
                if i == 2
                    obj.sequence(end+1) = t2;
                    continue;
                end
                term = t1 + t2;
                t1 = t2;
                t2 = term;
                obj.sequence(end+1) = term;
             end
        end
    end
end

