delete all 
    fetch 4XWG.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 48+49+50+51+53+54+58+63+65+66+68+69+70+71+75+78+240
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 286+339+48+51+358+287+46+388+340+329+333+285+70+49+264+65+52+288+389+378+115+392+45+69+122+114+326+119+261+116+262+384
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