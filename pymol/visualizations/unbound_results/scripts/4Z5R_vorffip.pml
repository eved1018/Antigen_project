delete all 
    fetch 1ITF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+24+25+26+27+30+33+34+35+37+40+41+125+141+144+145+148+149+152+153
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4Z5R/4Z5R_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit