delete all 
    fetch 5TXF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+238
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 289+288+261+329+271+340+341+343+351+243+323+242+334+286+330+244+287+332+333
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 117+111+389+388+237+395+197+236+385+384+392+122+123+126
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/clustering_analysis/data_unbound/ispred/images_center/Images/4XWG/4XWG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit