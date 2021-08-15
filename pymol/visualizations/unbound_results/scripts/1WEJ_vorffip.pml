delete all 
    fetch 1LC1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 36+37+58+60+61+62+96+99+100+103+104
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 81+92+95+11+65+88+73+28+62+16+66+44+87+86+47+27+91+12+17+25+48+2+82+46
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1WEJ/1WEJ_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit