delete all 
    fetch 3VI3.B
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 77+78+79+80+81+82+83+84+85+119+120+151+154+155+156+158+399+400
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 270+272+266+384+385+383+271+83+269+382+79+274+444+179+190+82+293+180+173+264+275+80+330+388+386+81+443+290+15+14+178+85+182+403
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/3VI3/3VI3_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit