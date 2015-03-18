var folded = new OriDomi('.paper', {
  speed:           3000,  
  ripple:          4,     // backwards ripple effect when animating
  perspective:     6000,   // smaller values exaggerate 3D distortion
  maxAngle:        180,    //fold range
  vPanels:         8, 
  hPanels:         1, 
  shading:         'soft', 
  touchEnabled:    true, 
  touchSensitivity: .10
  
});

//weird effects - comment/uncomment/switch orders/change values for MAXIMUM FUN

folded.stairs(43, 'left')

