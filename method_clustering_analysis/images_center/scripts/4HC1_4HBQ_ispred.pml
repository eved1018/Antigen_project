delete all 
    fetch 4HBQ.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 34+35+37+40+41+42+43+44+45+46+47+48+49+50+51+52+65
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['141+167+202+210+170+140+102+204+208+176+135+105+139+106+136+206+209+138+107+129+171+137+104+169+201+205+207+203']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/4HC1/4HC1_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit