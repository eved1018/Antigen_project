delete all 
    fetch 5B3J.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 31+32+33+34+55+56+57+58+59+60+61+65+66+67+92
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+313+247+194+311+330+329+244+328+195+206+120+241+248+325+359+219+218+217+323+345+375+118+220+346+192+308+256+321+354+376+189
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5B3J/5B3J_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit