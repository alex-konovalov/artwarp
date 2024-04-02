classdef Category
    % Represents a category of tonal waveforms.
    %   Contains methods for adding contours and calculating
    %   how much a given contour matches others in this category, as well
    %   as updating the category with a new contour or removing the contour
    %   from a category.
    
    properties
        average_cont     % The average of all contours in the category;
                        % this is what new contours are compared to.
        num_conts        % The number of contours which have already been categorised into this category
    end
    
    methods
        function cat = category(average_cont, numConts)
            % Construct a category object. If numConts drops to be below
            % zero, the category will need to be deleted from the network
            % since it no longer contains any contours
            cat.numConts = numConts;
            cat.average_cont  = average_cont;
        end

        function val = compare(cat, contour)
            val = 0;
            % Compare a given contour object with the reference contour and
            % return a percentage match value
            % TODO

            % Incorporate the code from ARTwarp_Calculate_Match
        end

        function cat = add(cat, contour)
            % Update the reference contour with the given new contour and
            % increment the size
            cat.reference = cat.average(contour);
            cat.size = cat.size + 1;
        end

        function cat = remove(cat, contour)
            % Update the reference contour to remove the given contour and
            % decrement the size
            cat.reference = cat.unaverage(contour);
            cat.size = cat.size - 1;

            % If the number of contours in the category drops below 1,
            % empty the reference contour
            if cat.size == 0
                cat.reference = [];
            end
        end

        function avg = average(cat, contour)
            % Calculate the reference contour for the category with a new
            % contour added
            % TODO

            % Temporary, for testing purposes
            avg = cat.reference;
        end

        function avg = unaverage(cat, contour)
            % Calculate the reference contour for the category with an old
            % contour removed
            % TODO

            % Temporary, for testing purposes
            avg = cat.reference;
        end
    end
end

