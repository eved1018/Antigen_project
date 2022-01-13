delete all 
    fetch 6EDR.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 75+76+79+107+108+110+111+112+113+114+115+116+117+118+119+148+150+194+195+196+198+199+201+233+234
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 163+164+170+176+189+45+46+48+49+58+62+65+69+73+75+76+78+79+81
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 212+247+248+249+250+280+281+282+284+286+290
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4CMH/4CMH_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit