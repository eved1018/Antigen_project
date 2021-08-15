delete all 
    fetch 3GRW.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 155+158+159+161+162+163+164+166+167+168+169+170+171+173+175+177+205+207+210+214+216+241+248+278+279+280+281+282+314+315+316+317+318
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 343+207+173+251+208+344+210+282+250+175+317+209+249+298+315+346+180+206+301+267+155+150+163+182+322+302+252+303+201
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3GRW/3GRW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit