delete all 
    fetch 6MEV.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 53+55+57+58+61+62+65+158+291+319+320+322+326
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 338+310+339+306+340+341+168+191+337+336+334+335+321+331+332+333
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+28+215+188+216+217+212+211+221+187+219+190+34+32+33+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/3LD8/3LD8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit