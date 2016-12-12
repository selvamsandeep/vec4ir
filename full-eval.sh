#!/bin/sh
OUT='results/K-1000/glove'
# MODEL='-m /data3/lgalke/GoogleNews-vectors-negative300.bin.gz'
MODEL='-m /data3/lgalke/glove.gnsm'
K=1000
# PARAMS='-cl'

mkdir -p $OUT

# R2 titles
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f title -t title -o "$OUT/r2-title-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f title -t description -o "$OUT/r2-title-long.txt"
# R2 abstracts
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f content -t title -o "$OUT/r2-abstract-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f content -t description -o "$OUT/r2-abstract-long.txt"
# R1 titles
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f title -t title -o "$OUT/r1-title-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f title -t description -o "$OUT/r1-title-long.txt"
# R1 abstracts
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f content -t title -o "$OUT/r1-abstract-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f content -t description -o "$OUT/r1-abstract-long.txt"

OUT='results/K-1000/word2vec'
MODEL='-m /data3/lgalke/GoogleNews-vectors-negative300.bin.gz'
PARAMS='--oov UNK'

mkdir -p $OUT

# R2 titles
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f title -t title -o "$OUT/r2-title-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f title -t description -o "$OUT/r2-title-long.txt"
# R2 abstracts
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f content -t title -o "$OUT/r2-abstract-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r2 -f content -t description -o "$OUT/r2-abstract-long.txt"
# R1 titles
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f title -t title -o "$OUT/r1-title-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f title -t description -o "$OUT/r1-title-long.txt"
# R1 abstracts
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f content -t title -o "$OUT/r1-abstract-short.txt"
python3 ir_eval.py $PARAMS -k $K $MODEL -r1 -f content -t description -o "$OUT/r1-abstract-long.txt"