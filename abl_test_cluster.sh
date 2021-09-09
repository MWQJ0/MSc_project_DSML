#!/bin/bash
for CH_POINT in cityscapes_fcn8s-iter70000.pth cityscapes_fcn8s-iter175000.pth cityscapes_fcn8s-iter180000.pth cityscapes_fcn8s-iter185000.pth cityscapes_fcn8s-iter190000.pth cityscapes_fcn8s-iter195000.pth; do
    qsub -v CH_POINT=$CH_POINT -N ${CH_POINT}_eval_fcn8s_prob0.0_20aug eval_fcn_cluster.sh
done




