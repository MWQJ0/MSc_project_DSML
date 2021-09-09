#@IgnoreInspection BashAddShebang
#   This is the most basic QSUB file needed for this cluster.
#   Further examples can be found under /share/apps/examples
#   Most software is NOT in your PATH but under /share/apps
#
#   For further info please read http://hpc.cs.ucl.ac.uk
#   For cluster help email cluster-support@cs.ucl.ac.uk
#
#   NOTE hash dollar is a scheduler diredctive not a comment.


# These are flags you must include - Two memory and one runtime.
# Runtime is either seconds or hours:min:sec

#$ -S /bin/bash
#$ -l tmem=8G
# -l h_vmem=2G -- with pytorch, omit this flag
#$ -l h_rt=1:00:00
#$ -l gpu=true
# -pe gpu 2
# -R y
# -l hostname=gonzo*
#These are optional flags but you problably want them in all jobs

#$ -j y
# -N eval_fcn8s
#$ -o /cluster/project9/MUNIT/segmentation_kyveli/segmentation


hostname
date

export PATH=/home/ktsioli/miniconda3/bin:$PATH

source activate python3.6_pytorch0.4.1

python /cluster/project9/MUNIT/segmentation_kyveli/segmentation/eval_fcn.py \
    --path /cluster/project9/MUNIT/segmentation_kyveli/segmentation/results/train_fcn8s_0.0_18aug_20kiters/${CH_POINT} \
    --dataset cityscapes \
    --datadir '/cluster/project9/MUNIT/segmentation_kyveli' \
    --model fcn8s \
    --num_cls 19 \

