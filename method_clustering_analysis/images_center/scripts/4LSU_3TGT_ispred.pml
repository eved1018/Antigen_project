delete all 
    fetch 3TGT.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 97+122+123+124+257+278+279+280+281+282+365+366+367+368+370+371+425+426+427+430+431+432+455+456+457+458+459+460+461+465+466+467+469+471+474
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['78+62+491+79+222+70+80+67+64+63+246+219+76+224+61+218+82+60+221+71+50+220+223+58+81+68+77+59+72+53+490']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4LSU/4LSU_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit