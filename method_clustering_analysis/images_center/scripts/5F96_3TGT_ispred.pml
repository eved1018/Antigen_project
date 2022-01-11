delete all 
    fetch 3TGT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 96+275+276+277+278+279+280+281+282+365+366+367+368+371+429+455+456+457+458+459+469+472+480
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['78+62+491+79+222+70+80+67+64+63+246+219+76+224+61+218+82+60+221+71+50+220+223+58+81+68+77+59+53+72+490']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/5F96/5F96_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit