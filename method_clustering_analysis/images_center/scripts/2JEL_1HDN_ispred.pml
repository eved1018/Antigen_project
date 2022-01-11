delete all 
    fetch 1HDN.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 1+2+3+4+34+41+64+66+67+68+70+71+72+75+76
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['36+40+52+42+38+62+34+49+37+53+54+41+39+35+43']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2JEL/2JEL_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit