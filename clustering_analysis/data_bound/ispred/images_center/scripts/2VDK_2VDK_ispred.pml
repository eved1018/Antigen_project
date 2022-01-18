delete all 
    fetch 2VDK.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 77+78+79+80+81+82+84+149+154+158+205+206+208+209+210+211+213+214+215
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+89+149+48+213+71+73+211+80+41+45+150+46+90+47
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 262+263+288+314+273+312+228+161+159+158+156+341+380+226+353+231+190+322+285
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2VDK/2VDK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit