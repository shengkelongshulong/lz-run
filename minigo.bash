pip install gdown

gdown --id 1d6ZWhyLOVEh3WqcotjwTtu_bNGef3Ksl
tar zxf lz0.16_colab.tgz
mv *.so.* /usr/lib/x86_64-linux-gnu

echo -e "\n==========从google drive下载 "202"号 权重=========="
gdown --id '1xSjAiLwG8PD8PLzXDRCWRTDDovS_3rnU' -O 'ffe8ba44feb8eb8ec8ff6d9b17ac075e4d708beadbfa68fee5506d431bbde68e.gz'
mkdir networks && mv *.gz networks
mkdir ~/.local/share/leela-zero
mv leelaz_opencl_tuning  ~/.local/share/leela-zero
chmod +x *
./autogtp -k sgf