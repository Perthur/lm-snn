# Grid search over hyperparameters for experiments with new inhibition schemes.

num_train=30000
conv_size=28
conv_stride=0

cd ../visualization

for random_seed in 1 2 3 4 5
do
	for conv_features in 225 400 625
	do
		for normalize_inputs in True False
		do
			python csnn_growing_inhibition_activity_over_time.py --conv_size $conv_size --conv_stride $conv_stride --conv_features $conv_features --num_train $num_train --random_seed $random_seed --normalize_inputs $normalize_inputs &
		done
	done
done

exit
