classdef LargestPalindromeProduct
    methods(Access=private)
        function isPalindrome = isPalindrome(~, answer)
            str = num2str(answer);
            isPalindrome = all(str==str(end:-1:1))==1;
        end
    end
    methods
        function largestPalindrome = calculate(obj)
            largestPalindrome=0;
            for i=999:-1:100
                for j=999:-1:100
                    answer = i*j;

                    if obj.isPalindrome(answer) && answer>largestPalindrome
                        largestPalindrome = answer;
                        break
                    end

                    if answer<largestPalindrome
                        break
                    end
                end
            end
        end
    end
end

