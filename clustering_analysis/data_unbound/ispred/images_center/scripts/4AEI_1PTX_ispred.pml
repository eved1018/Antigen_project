delete all 
    fetch 1PTX.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+10+11+12+13+15+41+42+56+59+60+61+62+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 10+62+63+61+60+64+59+8+54
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+14+17+38+39+43+41+47+21+37+18
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4AEI/4AEI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit