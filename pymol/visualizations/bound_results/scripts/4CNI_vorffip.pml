delete all 
    fetch 4CNI.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 47+48+57+103+104+106+152+153+154+155+156+157+158+159+160
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 24+27+15+16+17+117+19+121+28+14+18+31+75+125+183+30+120+182+40+23+20+113+54+41+157+179
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4CNI/4CNI_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit