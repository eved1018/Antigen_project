delete all 
    fetch 1OSP.O
    color blue 
    set cartoon_transparency,0.75
    select ann, resi 30+33+34+35+43+44+45+46+52+69+70+71+92+93+94+95+117+118+119
    indicate bycalpha ann
    create annotated, indicate
    select pred, resi 60+258+39+255+230+32+269+61+261+231+236+216+256+64+257+184+259+253+26+206+33+214+218+23+179+57+273+232+226+217+260
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
    png /Users/moshe/Desktop/Research_Antigen/Vorffip/results/Images/1OSP/1OSP_ispred.png,width=900, height=900,dpi = 350,ray=1
    quit