delete all 
    fetch 5UGY.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 95+134+135+136+137+138+145+153+155+156+158+159+160+187+188+189+190+192+193+194+196+222+225+226+227
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 15+317+14+28+16+315+13+310+12+11+322+21+23+320+321+22+26+319+325+324+318+27+19+326+24
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 10+9+8+5+4+6+7
    indicate bycalpha pred_2
    create pred_res_2, indicate
    




    show sphere, annotated
    color pink, annotated
    set sphere_transparency, 0.5,annotated
    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res


    show sphere, pred_res_2
    set sphere_scale,0.5,pred_res_2
    color red, pred_res_2
    set sphere_transparency,0,pred_res_2
    set cartoon_transparency,1,pred_res_2

    remove resn hoh
    hide (het)
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/5UGY/5UGY_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit