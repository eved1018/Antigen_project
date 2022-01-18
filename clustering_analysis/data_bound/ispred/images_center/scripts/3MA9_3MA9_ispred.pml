delete all 
    fetch 3MA9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 19+22+23+26+27+28+30+31+33+34+35+38+50+51+53+54+58+61+62+65+68+205+208+209+212
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 111+202+148+65+212+199+205+54+144+153+147+146+34+37+26+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 177+171+9+157+6+155+69+3+184+90+185
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/3MA9/3MA9_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit