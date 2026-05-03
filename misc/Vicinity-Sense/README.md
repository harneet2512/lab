# Vicinity Sense
## Overview
This repository contains a Python script for pedestrian detection in a video using YOLOv3 (You Only Look Once version 3) object detection model. The code utilizes the OpenCV library for computer vision tasks.

<p align="center">
  <img src="https://github.com/harneet2512/Vicinity-Sense/assets/62827797/74ec49c6-096a-4a50-8e42-321cab43fdf9" alt="Result Output" width="800">
</p>

## Prerequisites
Python 3.x <br>
OpenCV <br>
NumPy <br>
YOLO-Framework <br>



## Usage
Download YOLOv3 Weights, Configuration, and COCO Class Names:

Obtain the YOLOv3 weights file (yolov3.weights).
Acquire the YOLOv3 configuration file (yolov3.cfg).
Download the COCO class names file (coco.names).
Set Paths in the Code:

Set the paths for YOLOv3 weights (weightsPath), configuration file (configPath), and COCO class names (coco_names) in the script.
Define Video Path:

Define the path to the video file (video_path variable).
Run the Script:

## Output
The script generates an output video file named "output.avi" containing the annotated video with bounding boxes and risk level information.

Feel free to adjust the parameters and integrate this code into your projects. If you encounter any issues or have suggestions for improvement, please open an issue in the repository.



