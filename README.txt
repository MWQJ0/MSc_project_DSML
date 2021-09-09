To reproduce the experiments, first you should download the Cityscapes dataset from https://www.cityscapes-dataset.com/downloads/
Please download the original images (leftImg8bit_trainvaltest.zip (11GB) [md5]) and the associated fine annotations (gtFine_trainvaltest.zip (241MB) [md5]).
To specify the hyperparameters for the training, modify the train_fcn_cluster.sh accordingly.
Run the train_fcn.py file to train the segmentation network.
To evaluate a specific checkpoint, use the eval_fcn_cluster_old.sh file.
To evaluate 6 last checkpoints, use the abl_test_cluster.sh file.




The required packages for the code to run are the following:
python           version: 3.6.13
pytorch          version: 0.4.1
cuda92           version: 1.0
torchvision      version: 0.2.1
numpy            version: 1.17.0 
matplotlib       version: 3.3.4 
pandas           version: 1.1.3
pillow           version: 8.3.1
scikit-image     version: 0.17.2
scikit-learn     version: 0.23.2 
tensorboardX     version: 2.2
tqdm             version: 4.61.2 
visdom           version: 0.1.8.9
yaml             version: 0.2.5