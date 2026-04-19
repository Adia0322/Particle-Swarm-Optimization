# Particle-Swarm-Optimization
Hybrid PSO: C-Core with Python Interface

Cost function: DIC ZNCC (Zero mean Normalized Cross-Correlation) correlation criteria

## Goal
Measure the target point displacement in image  
```
Target point(x,y) = (426,320)
```
## Image:
* reference image  
<img src="image/img1.jpg" width="80%" alt="reference image">  

* deformed image (x:+5, y:+5) 
<img src="image/img1_shefted_5_5.jpg" width="80%" alt="reference image">  

## How to run
```
python main.py
```

## Result  
```
Result from C: X=5.000, Y=5.000, Coef=0.998
```