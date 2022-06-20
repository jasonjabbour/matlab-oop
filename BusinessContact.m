
%Create a subclass to the superclass Contact
classdef BusinessContact < Contact

    % Super class is called first
    properties
        Company
        Fax
    end

    methods
        function obj = BusinessContact(cname, lname, fname, phone, f)
            %Account for variables not being passed in
            if nargin < 5, f=""; end
            if nargin < 4, phone = ""; end
            if nargin < 3, fname = ""; end
            if nargin < 2, lname = ""; end
            if nargin < 1, cname = ""; end

            %Set the parameters of both the super and subclass
            %obj.LastName = string(lname);
            %obj.FirstName = string(fname);
            %obj.PhoneNumber = string(phone); or ...

            obj@Contact(lname,fname,phone); %must be called before any other changes are made to obj
            obj.Company = string(cname);
            obj.Fax = string(f);
        end

        function obj = set.Company(obj, cname)
            obj.Company = string(cname);
        end

        function obj = set.Fax(obj, f)
            obj.Fax = string(f);
        end

    end

end
