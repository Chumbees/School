DATA_DIR=Shakespear
MODEL_DIR=models
rm -Rf $MODEL_DIR
mkdir -p $MODEL_DIR
python3 -m sockeye.train\
                       --source $DATA_DIR/modern_train.snt.aligned \
                       --target $DATA_DIR/original_train.snt.aligned \
                       --encoder cnn \
                       --decoder cnn \
                       --cnn-activation-type relu \
                       --cnn-hidden-dropout .05 \
                       --rnn-num-hidden 256 \
                       --rnn-attention-type bilinear \
                       --optimizer adam \
                       --max-num-epochs 300 \
                       --validation-source $DATA_DIR/modern_validation.snt.aligned \
                       --validation-target $DATA_DIR/original_validation.snt.aligned \
                       --output $MODEL_DIR \
                       --decode-and-evaluate 500 \
