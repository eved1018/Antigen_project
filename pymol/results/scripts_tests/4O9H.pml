delete all 
    fetch 4O9H.A


    set cartoon_transparency,0.5


    select ann2, resi 21+22+23+26+27+30+73+74+75+78+80+129+179+182+183+184
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 157+164+121+158+161+31+19+117+113+165+48+118+24+155+47+168+28+124+160+120+114+40+30+162+125+75
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color brown, annotated2
    set sphere_transparency, 0.1,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color orange, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 1ALU.A
    set cartoon_transparency,0.75


    select ann, resi 21+22+23+26+27+30+73+74+75+78+80+129+179+182+183+184
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 157+31+158+118+161+121+155+24+117+120+49+28+113+125+124+61+48+165+27+51+69+114+30+156+62+19
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.7,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    



    super 1ALU.A, 4O9H.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images_tests/4O9H_1ALU.png,width=900, height=900,dpi = 350,ray=1
    quit