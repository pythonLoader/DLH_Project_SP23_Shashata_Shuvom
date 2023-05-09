# Gradual magnitude-based pruning on point cloud classification networks

The extraordinary success of highly overparameterized deep learning models in the past decade has spurred the development of numerous software and hardware optimization techniques aimed at accelerating computation and enhancing energy efficiency. A prevalent hypothesis, known as the \textit{lottery ticket hypothesis}, suggests that a significant portion of weights (up to 90\%) and activations can be set to zero without impacting test accuracy, allowing the pruning of large, dense neural networks into considerably sparser ones. Numerous studies have explored improved pruning algorithms and evaluated their applicability and efficiency trade-offs in convolutional neural networks, transformers, and traditional vision and natural language processing applications.

In this work, we extend a conventional pruning algorithm, gradual magnitude pruning (GMP), to a novel task and model: point cloud classification using PointNet++. We examine optimal mappings for various simulated hardware architectures using Sparseloop, and evaluate the energy and area characteristics through Timeloop and Accelergy. Our findings demonstrate that GMP significantly sparsifies and enhances the efficiency of PointNet++ (in terms of both computation and overall energy consumption), indicating that sparsification algorithms are equally effective for models designed for 3D point cloud data. This is particularly promising, considering the applicability of 3D point cloud models in compute-constrained applications such as LiDAR sensing in autonomous vehicles.

## Environment Setup
You can setup the environment using the provided yml file with the following command

```shell
conda env create -f sparsePoint.yml
```

## Data
You can download pre-processd data [here](https://drive.google.com/drive/folders/1_fBYbDO3XSdRt3DSbEBe41r5l9YpIGWF?usp=sharing) and save it in `data/modelnet40_normal_resampled/`.

## Sparsifying PointNet++ and reporting the results

You can find a demonstration of how to sparsify PointNet++ and report the weight, input and output (activation) sparsity statistics

## Installing timeloop, sparseloop and accelergy

Please refer to the [timeloop installation](http://accelergy.mit.edu/infra_instructions.html) page for installing timeloop, sparseloop and accelergy

## Running timeloop on eyeriss-v2 architecture and reporting statistics

The shell scripts under the scripts folder need to be run to generate the optimal mapping on two types of eyeriss-v2 architecture.

Please refer to plots.ipynb and Stat_Parser.ipynb to reproduce the results for the energy, energy/compute, cycles and other metrics of the architecture.


## Contributors
Shashata Sawmya and Shuvom Sadhuka