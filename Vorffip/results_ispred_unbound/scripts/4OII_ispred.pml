delete all 
    fetch 4OIE.A
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 232+235+236+237+239+240+253+256+257+258+260+261+262+264+265+289+293+294+314+315+351
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 232+304+190+187+198+188+183+231+182+186+201+210+185+228+288+229+344+290+181+206+207+289+292+191+208+315
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4OII/4OII_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit