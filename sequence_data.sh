# Script to setup a project directory to analyze sequence data fasta files
# Initially created by Kailie Dela Cruz
# September 07, 2018
# kmdelacruz@dons.usfca.edu

#Set up directory structure
echo "Setting up directory structure"
echo "code data data/raw_data output"
mkdir code data data/raw_data output

# Download the sequence data
echo "Downloading sequence data"
curl -L https://npk.io/NB6Y5a+ -o data/raw_data/sequence_data.zip
unzip data/raw_data/sequence_data.zip -d data/raw_data
