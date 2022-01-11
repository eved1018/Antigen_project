delete all 
    fetch 3TGT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+124+198+276+278+279+280+281+282+365+367+368+371+430+456+457+458+460+461+463+465+467+469+473
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['78+62+491+79+222+70+80+67+64+63+219+246+76+224+61+218+82+60+221+71+50+220+223+58+81+68+77+59+72+53+490']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3NGB/3NGB_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit