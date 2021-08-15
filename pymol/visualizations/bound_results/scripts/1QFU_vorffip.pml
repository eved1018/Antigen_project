delete all 
    fetch 1QFU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+59+60+62+63+74+75+78+79+90+92+94+143+271+272+273+274
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 321+316+17+319+15+75+317+320+14+323+60+300+29+314+315+42+110+299+18+303+62+273+302+269+16+78+94+90+27+266+307+308
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1QFU/1QFU_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit