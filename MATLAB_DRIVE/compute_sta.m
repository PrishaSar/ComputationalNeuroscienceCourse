function [ sta ] = compute_sta( stim, rho, num_timesteps )
%COMPUTE_STA Calculates the spike-triggered average for a neuron that
%            is driven by a stimulus defined in stim. The spike-
%            triggered average is computed over num_timesteps timesteps.
    clear sta;
    sta = zeros(num_timesteps, 1);

    % This command finds the indices of all of the spikes that occur
    % after 300 ms into the recording.
    spike_times = find(rho(num_timesteps+1:end)) + num_timesteps;

    % Fill in this value. Note that you should not count spikes that occur
    % before 300 ms into the recording.
    new_rho = rho(num_timesteps+1:end);
    length(new_rho);
    %use find() method and make sure this is an integer
    num_spikes = length(find(new_rho == 1));
    
    
    % Compute the spike-triggered average of the spikes found using the
    % find command. To do this, compute the average of all of the vectors
    % starting 300 ms (exclusive) before a spike and ending at the time of
    % the event (inclusive). Each of these vectors defines a list of
    % samples that is contained within a window of 300 ms before the each
    % spike. The average of these vectors should be completed in an
    % element-wise manner.
    % 
    % Your code goes here.

    %for each time step, add stimulus value for each window and average --
    %take this and add to var sta at index
    for i = 0:(num_timesteps-1)
        total = 0;
        for j = 1:num_spikes
            spike = spike_times(j, 1);
            total = total + rho((spike-i), 1);
        end
        avg = total/num_spikes;
        sta(num_timesteps - i, 1) = avg;
    end

end