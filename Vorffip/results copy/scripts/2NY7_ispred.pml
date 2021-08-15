delete all 
    fetch 2NY7.G
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 280+281+365+366+367+368+369+371+372+373+384+386+417+419+430+431+432+455+456+472+473+474+475
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 458+370+204+368+106+118+457+280+205+365+473+367+371+366+119+103+207+116+114+369+372+208+89+436+85+120+400+109+411+113+110
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/2NY7/2NY7_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit