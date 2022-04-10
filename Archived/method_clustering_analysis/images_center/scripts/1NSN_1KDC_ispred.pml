delete all 
    fetch 1KDC.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 9+57+60+61+64+68+70+95+96+97+98+105+106+120+121+124+127+135
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['128+131+65+70+127+94+105+95+73+93+125+66+71+129+96+123+68+69+72+124+97+122+130+126+101']
    indicate bycalpha pred
    create pred_res, indicate
    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1NSN/1NSN_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit