delete all 
    fetch 3D6S.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 14+16+18+19+21+156+157+158+159+181+182+186+199+202+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 28+200+199+98+66+195+157+194+196+155+193+21+18+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 162+216+161+217+213+164+158+210+208+209+169+222+186+122
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3RVV/3RVV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit