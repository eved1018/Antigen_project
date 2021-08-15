delete all 
    fetch 5DUT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 220+137+140+141+68+261+138+133+48+205+49+221+139+259+51+263+107+262+206+47+214+74+118+120+89+60+53+215
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5DUR/5DUR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit