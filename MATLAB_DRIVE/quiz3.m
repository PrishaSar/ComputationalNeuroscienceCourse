
function[fR]= quiz3(neuron, t)
    
    fR = zeros(24, 1);
    for i = 1:t
        avg = 0;
        for j = 1:100
            avg = avg + (neuron(j, i));
        end
        Navg = avg/100;
        fR(i, 1) = Navg;
    end 
end
   