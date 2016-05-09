#!/bin/bash
rm $HOME/MBA/Products/_SUCCESS
rm $HOME/MBA/Rules/_SUCCESS
cat $HOME/mba/MBA/Rules/* | perl -pe 's/"Source"://; s/^"//; s/",$//; s/{//g; s/}//g; s/"Target"://; s/"Support"://; s/"Confidence"://; s/"Lift"://; s/{//; s/}//' > Products.csv
cat $HOME/mba/MBA/Products/* | perl -pe 's/"Product"://; s/^"//; s/",$//; s/{//g; s/}//g; s/"Support"://' > Products.csv
