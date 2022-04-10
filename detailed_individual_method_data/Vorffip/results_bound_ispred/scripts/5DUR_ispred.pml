delete all 
    fetch 5DUR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+69+71+72+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 141+140+133+137+118+264+120+131+208+103+216+215+217+205+136+102+263+139+214+218+265+221+121+219+138+206+220+209
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