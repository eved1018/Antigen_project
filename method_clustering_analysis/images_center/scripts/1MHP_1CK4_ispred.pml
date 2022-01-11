delete all 
    fetch 1CK4.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 157+158+160+192+220+221+223+224+259+261+263+264
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['163+167+159+288+158+191+192+222+165+160+321+156+261+219+162+224+164+225+221+220+223+157+166+291+322+155+161+214+218']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/1MHP/1MHP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit