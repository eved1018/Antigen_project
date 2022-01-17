delete all 
    fetch 1F42.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 177+179+180+181+183+184+224+225+227+228+244+245+246+258+260+261+268+277+291+292+293+294
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 2+23+25+4+5+7+70+71+73+9
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/3HMX/3HMX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit