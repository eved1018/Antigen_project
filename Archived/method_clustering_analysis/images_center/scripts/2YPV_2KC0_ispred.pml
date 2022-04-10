delete all 
    fetch 2KC0.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 41+126+128+130+214+215+217+218+219+220+221+239+241+242+243+244+245+246+248
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+188+143+187+89+140+120+229+186+190+184+84+83+139+82+185+87+145+189+215+85+144+88+142+86']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/2YPV/2YPV_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit