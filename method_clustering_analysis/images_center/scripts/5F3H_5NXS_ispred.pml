delete all 
    fetch 5NXS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 291+296+297+299+300+301+302+349+351+353+357+358+359+360+361
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['111+113+259+318+323+326+264+47+324+321+261+325+316+46+112+43+44+317+45+320+42+114+262+263+322+116+319+48+115']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5F3H/5F3H_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit