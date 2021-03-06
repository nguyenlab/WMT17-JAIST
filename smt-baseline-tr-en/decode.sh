#!/bin/sh

MOSES_DIR=/path-to-moses/mosesdecoder


SRCLANG=tr
TRGLANG=en

mkdir -p decode

TEST=data/test.clean.$SRCLANG
REF=data/test.clean.$TRGLANG
HYP=decode/test.clean.$SRCLANG.hyp
BLEU=decode/test.bleu


$MOSES_DIR/bin/moses -f mert-work/moses.ini -i < $TEST > $HYP

> $BLEU $MOSES_DIR/scripts/generic/multi-bleu.perl -lc $REF < $HYP
