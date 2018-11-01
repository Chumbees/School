DATA_DIR=Shakespear
MODEL_DIR=models
rm -Rf $MODEL_DIR
mkdir -p $MODEL_DIR
python3 -m sockeye.train\
                       --source $DATA_DIR/Train_Modern/Modern_train_combined.snt.aligned \
                       --target $DATA_DIR/Train_Original/Original_train_combined.snt.aligned \
                       --encoder cnn \
                       --decoder cnn \
                       --rnn-num-hidden 2 \
                       --validation-source $DATA_DIR/Test_Modern/Modern_test_combined.snt.aligned \
                       --validation-target $DATA_DIR/Test_Original/Original_test_combined.snt.aligned \
                       --output $MODEL_DIR \
                       --decode-and-evaluate 500
                       --batch-size 100
