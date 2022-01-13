delete all 
    fetch 6MXU.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 98+131+134+135+136+153+155+156+157+159+189+190+193+194+196+226
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 244+391+395+400+401+402+403+404+405+406+408+409+412+413+416+417+420+421+423+424+427+428+431+435
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 334+360+361+363+367+374+456+485+494+497+500+501
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4GMS/4GMS_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit