delete all 
    fetch 5L6Y.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 13+17+20+100+103+104+106+107+108+109+111
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 107+29+100+52+51+57+111+110+48+34+11+31+44+88+86+106+108+30+40+56+60+32+37
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5L6Y/5L6Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit