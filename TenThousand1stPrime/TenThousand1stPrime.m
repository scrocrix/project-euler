classdef TenThousand1stPrime
    properties(Access=private)
        listOfPrimes = []
    end
    
    methods(Access=private)
        function isPrime = isPrime(obj, target)
            isPrime = true;
            for primeNumber = obj.listOfPrimes
                if target ~= 2 && mod(target, primeNumber) == 0
                    isPrime = false;
                    break;
                end
            end
        end
    end
    
    methods
        function prime = calculate(obj, targetPosition)
            primePosition = 1;
            prime = 2;
            obj.listOfPrimes(end+1) = prime;
            while (primePosition < targetPosition)
                prime = prime + 1;
                if (obj.isPrime(prime))
                    primePosition = primePosition + 1;
                    obj.listOfPrimes(end+1) = prime;
                end
            end
        end
    end
end

