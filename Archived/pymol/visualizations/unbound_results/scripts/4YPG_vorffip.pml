delete all 
    fetch 1ITF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 2+53+54+57+58+61+64+65+68+86+89+90+92+93+96+97+99+100+101+111+113+116+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 162+149+27+20+165+26+41+64+22+33+132+124+114+89+128+153+152+65+148+82+31+103+127+85+156+100
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4YPG/4YPG_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit