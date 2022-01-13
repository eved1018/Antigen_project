delete all 
    fetch 3TGQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+97+98+102+122+276+278+279+280+281+282+283+366+367+368+371+425+426+427+429+430+431+432+455+456+457+459+472+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 117+119+122+201+203+204+221+223+300+301+324+326+328+421+429+432+436+441+59+61+62+63+68+72+73+75+79
    indicate bycalpha pred
    create pred_res, indicate

    select pred_2, resi 278+280+457+458+459
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/distance_clustering/testing_ispred_unbound_separate/images_center/Images/4RWY/4RWY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit