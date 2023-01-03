


for file in /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/unetsv3/dataset/*
do
  echo "$file"
  basename=${file##*/} # name of the file with extension
  # filename=$( "$basename" | cut -b -7 )
  filename=$( basename "$basename" ".nii.gz") #name of the file without extension
  # echo "$basename"
  # echo "$filename"
    sudo docker run --gpus all -v /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/unetsv3/dataset:/data \
 		              -v /media/neuropsycad/disk12t/EdoardoFilippiMasterThesis/implementations/fastsurfer_output:/output \
 		              -v /media/neuropsycad/disk12t/HelenaPereira/freesurfer:/fs_license \
 		              --rm --user 1000 deepmi/fastsurfer:gpu-v1.1.1 \
 		              --fs_license /fs_license/license.txt \
 		              --t1 /data/"$basename" \
 		              --sid sub-"$filename" --sd /output \
 		              --parallel
done