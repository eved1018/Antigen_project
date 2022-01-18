delete all 
    fetch 4YPG.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi -1+0+2+53+54+57+58+61+64+65+68+86+89+90+92+93+96+97+99+100+101+111+113+116+120
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 103+117+107+111+110+156+-1+3+2+0
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 16+138+148+149+70+157+82+145+153+35+26+32+27+31+24+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4YPG/4YPG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit