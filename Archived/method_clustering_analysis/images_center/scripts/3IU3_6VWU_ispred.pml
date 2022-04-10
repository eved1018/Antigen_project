delete all 
    fetch 6VWU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 139+140+142+143+144+160+161+163+165+167+176+179+180+181+183+185+186+194+195+258
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['241+188+62+90+191+187+192+54+89+57+3+65+186+64+63+56+190+61+91+185+87+60+189+66+85+58+92+88+59']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3IU3/3IU3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit