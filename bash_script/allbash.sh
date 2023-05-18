cp road.mp4 ~/Desktop/self-driving-car-master/project_4_advanced_lane_finding/project_video.mp4
TMP_PATH=$(pwd)
cd ~/Desktop/self-driving-car-master/project_4_advanced_lane_finding
python3 ~/Desktop/self-driving-car-master/project_4_advanced_lane_finding/main.py
cd $TMP_PATH
mv ~/Desktop/self-driving-car-master/project_4_advanced_lane_finding/out_project_10.mp4 ~/Documents/YoloX/YOLOX/assets/video.mp4
TMP_PATH=$(pwd)
cd ~/Documents/YoloX/YOLOX
sudo python3 tools/demo.py video -n yolox-s -c yolox_s.pth --path assets/video.mp4 --conf 0.25 --nms 0.45 --tsize 640 --save_result --device gpu
cd $TMP_PATH
sudo mv ~/Documents/YoloX/YOLOX/YOLOX_outputs/yolox_s/vis_res/out/video.mp4 .
