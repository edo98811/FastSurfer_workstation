


for file in /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/unetsv3/dataset/*
do
  echo "$file"
  basename=${file##*/}
  echo cut -b -7 "$basename"
#   sudo docker run --gpus all -v /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/unetsv3/dataset:/data \
#		              -v /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/fastsurfer_output:/output \
#		              -v /media/neuropsycad/disk12t/HelenaPereira/freesurfer:/fs_license \
#		              --rm --user 1000 deepmi/fastsurfer:gpu-v1.1.1 \
#		              --fs_license /fs_license/license.txt \
#		              --t1 /data/"$file" \
#		              --sid sub-{cut -b -7 "$file"} --sd /output \
#		              --parallel
done