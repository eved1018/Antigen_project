delete all 
    fetch 6MXU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+153+155+156+157+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 501+500+361+360+374+363+367+435+485+334+494+456+497
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 413+406+412+404+405+401+400+428+416+402+403+417+427+431+424+395+391+408+420+421+409+423+244
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4GMS/4GMS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit