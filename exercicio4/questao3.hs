desloc :: Double-> Double-> Double
desloc v t = let accel = v/t
             in (accel)*((2*t)**2)/2