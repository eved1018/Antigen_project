delete all 
    fetch 5DUR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+69+71+72+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 53+138+51+69+71+68+78+72+137+48+66+80+49+145+100+97+82+103+162+54+70+96+87+231+252+265+50+264
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/5DUR/5DUR_vorffip.png,width=900, height=900,dpi = 350,ray=1
    quit