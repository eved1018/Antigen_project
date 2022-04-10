delete all 
    fetch 1F42.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 15+17+18+20+23+40+42+43+45+47+54+55+56+58+59+61+62+66
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['180+259+257+258+222+256+229+260+182+208+181+176+261+230+246+177+224+184+179+225+226+206+114+223+227+178+183']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3HMX/3HMX_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit