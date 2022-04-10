delete all 
    fetch 1BOY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+154+156+165+166+167+168+169+170+171+190+192+194+196+198+200+201+204
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['173+78+152+90+153+79+89+170+3+151+76+174+94+6+35+149+91+150+148+93+172+171+92+144+169+77+175']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1AHW/1AHW_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit