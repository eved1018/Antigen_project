delete all 
    fetch 2Q21.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 17+21+25+27+29+31+32+33+34+35+36+37+38+39+40+61+63+64
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 13+12+62+63+61+60+64+68+34+35+37+36+33
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+17+38+39+41+1+120+26+32+27+31+25+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/2UZI/2UZI_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit