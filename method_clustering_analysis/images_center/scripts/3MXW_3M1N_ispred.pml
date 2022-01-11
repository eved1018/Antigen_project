delete all 
    fetch 3M1N.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 44+45+87+123+125+126+131+132+133+134+135+136+147+153+155+174+176+177+178+179+180
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+180+158+62+140+131+65+133+134+176+177+135+179+136+44+45+138+129+137+178+155+132+130+175']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3MXW/3MXW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit