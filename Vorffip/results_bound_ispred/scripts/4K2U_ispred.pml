delete all 
    fetch 4K2U.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 149+152+153+156+160+161+162+164+167+168+169
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 242+243+240+241+244+238+265+213+237+214+216+227+267+233+280+215+234+51+279+52+268+221+167+217+281+171+220+231+271
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4K2U/4K2U_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit