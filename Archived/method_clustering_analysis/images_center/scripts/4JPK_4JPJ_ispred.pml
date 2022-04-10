delete all 
    fetch 4JPJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+26+27+28+29+30+31+32+35+37+39+42+43+44+79+81+82+83+84+85+138+139+140+141+144
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+86+78+143+79+54+140+26+80+67+76+46+84+83+139+82+145+52+42+49+85+50+51+81+144+77+53+55+142+48+146']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4JPK/4JPK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit