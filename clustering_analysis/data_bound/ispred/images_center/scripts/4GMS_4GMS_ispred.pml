delete all 
    fetch 4GMS.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+137+153+155+156+157+158+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 29+15+316+317+14+28+16+17+13+12+11+323+21+320+22+325+324+30
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 106+310+107+105+104+110+60+57+143+144+145+294+308+309
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_bound/ispred/images_center/Images/4GMS/4GMS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit