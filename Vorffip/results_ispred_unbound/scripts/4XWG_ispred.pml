delete all 
    fetch 5TXF.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+238
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 341+388+329+286+236+333+244+288+242+340+323+332+384+122+287+123+126+111+117+392+271+395+389+289+343+330+334+261+243+237+351+197+385
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4XWG/4XWG_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit