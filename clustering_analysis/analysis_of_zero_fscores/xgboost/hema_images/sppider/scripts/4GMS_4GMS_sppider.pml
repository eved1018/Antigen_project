delete all 
    fetch 4GMS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+137+153+155+156+157+158+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 210
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 29+15+316+317+14+28+16+17+13+12+10+11+34+20+323+21+37+320+321+36+22+32+319+325+324+318+33+25+19+18+30
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/analysis_of_zero_fscores/xgboost/hema_images/sppider/Images/4GMS/4GMS_sppider.png,width=900, height=900,dpi = 350,ray=1
    quit