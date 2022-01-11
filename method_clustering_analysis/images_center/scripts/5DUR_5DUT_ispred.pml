delete all 
    fetch 5DUT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 68+110+112+113+115+119+137+138+145+167+168+169+252+255+257+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+143+140+131+65+260+133+67+64+264+134+261+135+139+136+145+66+138+263+262+137+132+142+130']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5DUR/5DUR_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit