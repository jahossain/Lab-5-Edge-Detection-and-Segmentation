# Lab-5-Edge-Detection-and-Segmentation

In this lab, I explored different edge-detection and segmentation methods using the peppers image. First, I applied the Sobel and Prewitt operators, which are basic gradient filters that detect edges by measuring intensity changes in the horizontal and vertical directions. Both methods highlight strong boundaries but are sensitive to noise and may produce thicker or less accurate edges.

Next, I used the Canny detector, which is a more advanced multi-stage edge detection algorithm. It smooths the image, computes gradients, performs non-maximum suppression, and applies double thresholding. As a result, Canny produces thinner, cleaner, and more continuous edges compared to Sobel and Prewitt.

I then applied the Laplacian of Gaussian (LoG) operator, which detects edges based on zero-crossings after smoothing the image with a Gaussian filter. This method is useful for highlighting fine details and regions where intensity changes rapidly.

For the segmentation part, I applied Otsu’s thresholding, which automatically selects the optimal threshold value based on the image histogram. This converts the grayscale image into a binary mask by separating pixels into foreground and background. Finally, I labeled the connected regions and visualized them using false-color mapping, which helps to understand how many distinct segments or objects exist in the binary image.

Overall, this lab showed how different edge-detection operators respond to the same image, why Canny is considered the most reliable for clean edges, and how histogram-based thresholding like Otsu can be used to segment an image automatically.

![image](https://github.com/jahossain/Lab-5-Edge-Detection-and-Segmentation/blob/main/Screenshot%202025-11-24%20231712.png)
![image](https://github.com/jahossain/Lab-5-Edge-Detection-and-Segmentation/blob/main/Screenshot%202025-11-24%20231722.png)
![image](https://github.com/jahossain/Lab-5-Edge-Detection-and-Segmentation/blob/main/Screenshot%202025-11-24%20231730.png)
![image](https://github.com/jahossain/Lab-5-Edge-Detection-and-Segmentation/blob/main/Screenshot%202025-11-24%20231736.png)
![image](
