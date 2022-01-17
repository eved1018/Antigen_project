delete all 
    fetch 4JPJ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 25+26+27+28+29+30+31+32+35+37+39+42+43+44+79+81+82+83+84+85+138+139+140+141+144
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 101+103+12+13+14+141+150+152+154+155+157+159+49+52+54+55+57+58+8+9
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 130+27+79+81+82+85
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4JPK/4JPK_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit