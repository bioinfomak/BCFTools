################### Convert to bcf file format#########################################
bcftools mpileup -Ou -f hg38.fa  VR8_PE.bam | bcftools call -mv -Ob -o VR8_variants.bcf
################### View bcf2vcf file format###########################################
bcftools view VR8_variants.bcf -o VR8_variants.vcf
################### Convert vcf with quality score 20 #################################
bcftools filter -s LowQual -e '%QUAL<20' VR8_variants.vcf -o VR8_filtered_variants.vcf
