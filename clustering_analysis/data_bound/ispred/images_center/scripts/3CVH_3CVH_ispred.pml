delete all 
    fetch 3CVH.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 62+65+68+72+73+76+79+80+146+149+150+154+155+158+159+162+163
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 248+229+188+238+196+197+192+251
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 115+14+110+76+177+88+148+48+159+73+98+173+142+141+96+92+90+120+21+122+136+27+125
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3CVH/3CVH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit