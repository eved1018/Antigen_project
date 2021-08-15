delete all 
    fetch 4ZPW.R
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 398+400+496+527+528+529+530+531+532+535+536+539+540+542+543+549
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 535+536+547+540+507+560+553+509+548+539+550+546+431+537+508+429+422+549+430+495+511+561+510+506+423+424+401+562
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/4ZPT/4ZPT_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit