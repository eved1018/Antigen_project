delete all 
    fetch 2ARJ.Q
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 6+8+9+10+11+12+14+15+20+21+22+23+25+27+29+30+84+114
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 76+62+63+60+64+59+65+66+68+78+52
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+114+115+117+112+111+105+110+51+50+109+108+119
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/2ARJ/2ARJ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit