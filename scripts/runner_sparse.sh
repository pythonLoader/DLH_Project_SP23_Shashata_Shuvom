#!/bin/bash

# cd sparse_arch/04.2.2-eyeriss-like-gating-mapspace-search
cd sparse_arch/04.2.3-eyeriss-like-onchip-compression
# cd example_designs/simple_weight_stationary

for file in ../../sparse_PointNet_Layers/*.yaml; do
  
  # Remove the directory path
  file_without_path="${file##*/}"
  
  # Remove the ".yaml" extension
  
  mkdir -p "sparse_layers"
  
  layer_path="${file_without_path%.yaml}"
  echo "==================================================================="
  echo "Processing Layer -  ${layer_path}"
  echo "==================================================================="
  layer_path="sparse_layers/sparse_${layer_path}"
  aaa
  mkdir -p $layer_path
  
#   echo $layer_path
#   echo $file
  
  
  timeloop-mapper arch/*.yaml components/*.yaml sparse_opt/*.yaml constraints/*.yaml mapper/mapper.yaml $file -o $layer_path  
done