# Use a for loop to obtain sample files using fastq-dump
for i in $(cat nf_core/virarecon/samples.txt); do fastq-dump --split-files $i; done

# Compact the fastq files after download
gzip *.fastq

# Create a new directory and move the compressed fastq files there
mv *.fastq.gz data