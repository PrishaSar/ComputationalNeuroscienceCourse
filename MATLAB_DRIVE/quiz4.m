load('tuning.mat')


fR1 = quiz3(neuron1, 24);

figure(1);
plot(stim, fR1);
xlabel('Direction');
ylabel('Firing Rate');
title('Tuning Curve');

fR2 = quiz3(neuron2, 24);

figure(2);
plot(stim, fR2);
 xlabel('Direction');
ylabel('Firing Rate');
title('Tuning Curve');



fR3 = quiz3(neuron3, 24);

figure(3);
plot(stim, fR3);
xlabel('Direction');
ylabel('Firing Rate');
title('Tuning Curve');

fR4 = quiz3(neuron4, 24);

figure(4);
plot(stim, fR4);
xlabel('Direction');
ylabel('Firing Rate');
title('Tuning Curve');



[h,p,ci,stats] = vartest(neuron3(1, :), 10*(sum(fR3)/24))


