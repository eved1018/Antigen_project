delete all 
    fetch 1ERN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 33+59+60+62+88+91+92+93+94+95+114+117+149+150+152+153+200+202+203+204+205
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['152+154+90+153+89+33+204+151+115+94+35+149+91+148+87+93+150+200+92+88+34+205+203+86']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4Y5Y/4Y5Y_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit