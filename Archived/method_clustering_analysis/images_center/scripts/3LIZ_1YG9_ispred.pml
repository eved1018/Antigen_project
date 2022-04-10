delete all 
    fetch 1YG9.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 199+200+201+232+233+234+235+236+237+248+250+251+253+254+256+257+270+272
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi ['241+159+158+242+160+278+-4+-3+239+-8+282+148+145+-6+244+-5+283+157+249+280+144+-1+0+240+-2+281+243+277+-7+279+146']
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
    png /Users/moshe/Desktop/Research_Antigen/antigen_project_updated/Antigen_project/method_clustering_analysis/images_center/Images/3LIZ/3LIZ_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit