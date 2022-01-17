delete all 
    fetch 5COE.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 156+157+159+160+161+166+181+190+194+197+198
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 114+106+110+63+94+93+109
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 128+174+159+206+210+198+208+195+156+157+194+209+155+197+193+151+192+132+130+131
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4D3C/4D3C_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit