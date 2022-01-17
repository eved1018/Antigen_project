delete all 
    fetch 6BSY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 11+14+15+18+21+22+48+51+55+58+59+62+63
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 16+17+13+12+11+62+63+61+60+64+59+57+55+20+21+25+18+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 34+31+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/5DHV/5DHV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit