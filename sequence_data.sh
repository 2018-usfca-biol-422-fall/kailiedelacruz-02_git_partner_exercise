#!/usr/bin/env bash

# Script to setup a project directory to analyze sequence data fasta files
# Initially created by Kailie Dela Cruz and Martina Madrigal
# September 07, 2018
# kmdelacruz@dons.usfca.edu and mmmadrigal@dons.usfca.edu

#Set up directory structure
echo "Setting up directory structure"
echo "code data data/raw_data output"
mkdir code data data/raw_data output

# Download the sequence data
echo "Downloading sequence data"
curl -L https://npk.io/NB6Y5a+ -o data/raw_data/sequence_data.zip
unzip data/raw_data/sequence_data.zip -d data/raw_data

# Pull out all of the sequence names from the fasta file
# and put them into a text file in the output folder
echo "Extracting sequence names from animal mRNA fasta"
grep ">" data/raw_data/animal_mRNA.fasta > output/animal_sequence_names.txt
echo "Extracting sequence names from crab mRNA fasta"
grep ">" data/raw_data/crab_mitochondrial_rRNA.fasta > output/crab_sequence_names.txt
echo "Extracting sequence names from invertebrates mRNA fasta"
grep ">" data/raw_data/invertebrates_mRNA.fasta > output/invertebrates_sequence_names.txt
echo "Extracting sequence names from plant rRNA fasta"
grep ">" data/raw_data/plant_rRNA.fasta > output/plant_sequence_names.txt

# Pull out all of the sequence counts from the fasta file
# and put them into a text file in the output folder
echo "Extracting sequence names from animal mRNA fasta"
grep -c ">" data/raw_data/animal_mRNA.fasta > output/animal_sequence_counts.txt
echo "Extracting sequence names from crab mRNA fasta"
grep -c ">" data/raw_data/crab_mitochondrial_rRNA.fasta > output/crab_sequence_counts.txt
echo "Extracting sequence names from invertebrates mRNA fasta"
grep -c ">" data/raw_data/invertebrates_mRNA.fasta > output/invertebrates_sequence_counts.txt
echo "Extracting sequence names from plant rRNA fasta"
grep -c ">" data/raw_data/plant_rRNA.fasta > output/plant_sequence_counts.txt
