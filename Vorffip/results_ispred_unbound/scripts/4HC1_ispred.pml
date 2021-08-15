delete all 
    fetch 4HBQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+37+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 208+204+209+207+206+139+161+141+205+140+181+210+137+135+175+174+150+57+187+138+142+193+202+151+92+148+147+195+196
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4HC1/4HC1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit