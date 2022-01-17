delete all 
    fetch 1ITF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+24+25+26+27+30+33+34+35+37+40+41+125+141+144+145+148+149+152+153
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+12+163+161+68+82+7+86+145+152+20+23+25+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 114+100+113+105+110+62+42+41+120+37+124+125
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4Z5R/4Z5R_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit