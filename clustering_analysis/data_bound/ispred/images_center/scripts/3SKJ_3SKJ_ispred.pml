delete all 
    fetch 3SKJ.E
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+42+44+46+48+49+79+83+84+85+129+132+133+135+164+166
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 112+113+111+89+88+49+161+82+86+85+109+108+119
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 14+16+38+39+40+41+135+136+137+36+32+132+31+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3SKJ/3SKJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit