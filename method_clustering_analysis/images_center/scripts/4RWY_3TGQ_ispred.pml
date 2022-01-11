delete all 
    fetch 3TGQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+97+98+102+122+276+278+279+280+281+282+283+366+367+368+371+425+426+427+429+430+431+432+455+456+457+459+472+473+474+476+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['202+441+299+62+300+327+120+436+119+204+326+67+63+324+442+325+61+298+117+60+206+58+301+59+435+328+205+118+207+203']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4RWY/4RWY_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit