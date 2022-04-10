delete all 
    fetch 4CNI.D
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 47+48+57+103+104+106+152+153+154+155+156+157+158+159+160
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 82+79+27+23+142+128+157+125+63+143+182+20+171+179+22+153+150+77+155+18+183+60+156+19+172+124
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4CNI/4CNI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit