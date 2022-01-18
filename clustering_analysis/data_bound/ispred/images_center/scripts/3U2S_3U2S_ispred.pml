delete all 
    fetch 3U2S.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+162+166+167+168+169+170+171+172+173+223+240
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 215+216+202+212+210+211+205+208+219
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+177+176+159+158+173+195+156+196+193+192+190+191+130
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3U2S/3U2S_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit