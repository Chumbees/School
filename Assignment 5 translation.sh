DATA_DIR=Shakespear
MODEL_DIR=models
rm -Rf $MODEL_DIR
mkdir -p $MODEL_DIR
python3 -m sockeye.train\
                       --source $DATA_DIR/hamlet_modern.snt.aligned \
                       --target $DATA_DIR/hamlet_original.snt.aligned \
                       --encoder cnn \
                       --decoder cnn \
                       --rnn-num-hidden 2 \
                       --validation-source $DATA_DIR/hamlet_modern.snt.aligned \
                       --validation-target $DATA_DIR/hamlet_original.snt.aligned \
                       --output $MODEL_DIR \
                       --decode-and-evaluate 500
