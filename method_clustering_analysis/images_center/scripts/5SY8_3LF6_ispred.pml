delete all 
    fetch 3LF6.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 64+73+79+118+119+120+121+124+125+127+128+134
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['159+158+152+154+121+153+128+120+131+160+119+156+127+122+139+8+117+14+125+129+157+123+155+124+132+118+130+126']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5SY8/5SY8_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit