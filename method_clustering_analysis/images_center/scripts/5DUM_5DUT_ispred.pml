delete all 
    fetch 5DUT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 115+116+118+121+123+124+159+161+162+163+164+165+167+168+240+241+242
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+140+131+65+133+260+67+64+264+134+261+135+139+136+145+66+138+262+263+137+132+142']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5DUM/5DUM_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit