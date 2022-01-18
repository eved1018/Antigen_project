delete all 
    fetch 1W72.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 65+66+68+69+72+73+75+76+79+80+84+89+145+146+155
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 248+267+105+229+177+238+234+195+237+236+232+192+227+251+250
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 15+115+10+138+163+73+142+80+155+86+92+85+146+35+122+27
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/1W72/1W72_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit