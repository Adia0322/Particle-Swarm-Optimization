import cv2
import numpy as np

img = cv2.imread("img1.jpg")

h, w = img.shape[:2]

# 平移矩陣 (x:+5, y:+5)
M = np.float32([
    [1, 0, 5],
    [0, 1, 5]
])

shifted = cv2.warpAffine(img, M, (w, h))

cv2.imwrite("output.jpg", shifted)
cv2.imshow("shifted", shifted)
cv2.waitKey(0)
cv2.destroyAllWindows()

# 存成 jpg
cv2.imwrite("img1_shefted.jpg", shifted)