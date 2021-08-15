delete all 
    fetch 3W9E.C
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+26+27+38+39+132+134+139+140+193+196+215+216+218+220+221+222+223+224+227+231+234+235+238+239
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 234+231+220+42+38+29+28+222+37+249+32+197+87+85+83+34+31+180+53+52+27+140+26+223+252+253+251+33+86
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3W9E/3W9E_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit