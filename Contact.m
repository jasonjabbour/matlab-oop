%Define Class 
classdef Contact

    %Public Properties of Class
    properties
        %Initially assigned empty arrays
        LastName
        FirstName
        PhoneNumber
    end
    
    methods
        %Constructor
        function obj = Contact(lname, fname, phone)
            %Allow to accept 3 or less variables
            if nargin < 3, phone = ""; end
            if nargin < 2, fname = ""; end
            if nargin < 1, lname = ""; end
            obj.LastName = string(lname);
            obj.FirstName = string(fname);
            obj.PhoneNumber = string(phone);
        end

        %Set Access Method (must use set.Propertyname)
        function obj = set.LastName(obj, lname)
            obj.LastName = string(lname);
        end

        function obj = set.FirstName(obj, fname)
            obj.FirstName = string(fname);
        end

        function obj = set.PhoneNumber(obj, phone)
            obj.PhoneNumber = string(phone);
        end

        %Get Methods (must use get.Propertyname)
        function lname = get.LastName(obj)
            lname = obj.LastName;
        end

        function fname = get.FirstName(obj)
            fname = obj.FirstName;
        end 

        function phone = get.PhoneNumber(obj)
            phone = obj.PhoneNumber;
        end

        %Ordinary Method
        function printName(obj)
            fprintf('%s %s\n', obj.FirstName, obj.LastName)
        end

    end

end

