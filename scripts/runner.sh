#!/bin/bash

# cd example_designs/simple_weight_stationary
cd sparse_arch/04.2.3-eyeriss-like-onchip-compression

for file in ../../pointNet_Layers/*.yaml; do
  
  # Remove the directory path
  file_without_path="${file##*/}"
  
  layer_path="${file_without_path%.yaml}"
  echo "==================================================================="
  echo "Processing Layer -  ${layer_path}"
  echo "==================================================================="
  
  # Remove the ".yaml" extension
  aaa
  layer_path="dense_layers/dense_${file_without_path%.yaml}"
  
  mkdir -p $layer_path
  xs
#   timeloop-mapper arch/*.yaml arch/components/*.yaml mapper/mapper.yaml constraints/*.yaml $file -o $layer_path
    timeloop-mapper arch/*.yaml components/*.yaml sparse_opt/*.yaml constraints/*.yaml mapper/mapper.yaml $file -o $layer_path
#     timeloop-mapper arch/*.yaml components/*.yaml constraints/*.yaml mapper/mapper.yaml $file -o $layer_path
  
done