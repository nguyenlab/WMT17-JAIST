Scripts to train SMT baseline models using Moses.

1. Tokenize, truecase, clean (1..80)

        ./tokenize.sh

2. Train language model

        ./language-model.sh
        
- English monolingual data: extracted from WMT, 39,960,605 sentences; 5.1 GB
- 5-gram KenLM
        
    
3. Train translation model

        ./translation-model.sh
    
4. Tuning parameters: using a tuning set
    
        ./tuning-mira.sh
    
5. Decode: translate a test set and compute BLEU score given a reference set

        ./decode.sh

data: bilingual corpora
     training: tr-en https://drive.google.com/drive/folders/0B3-gB0BkLbCtT1Y3cG8yNVdaWnc?usp=sharing
