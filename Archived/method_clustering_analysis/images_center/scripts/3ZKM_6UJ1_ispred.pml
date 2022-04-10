delete all 
    fetch 6UJ1.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 254+255+258+259+261+262+263+265+270+271+272+275+276+277+278+280+281+283+289+293+319+332+334
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['384+202+307+304+395+229+386+305+230+217+303+385+302+309+215+392+306+231+301+393+388+308+396+394+205+387']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3ZKM/3ZKM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit