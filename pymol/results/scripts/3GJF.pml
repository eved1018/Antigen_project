delete all 
    fetch 3GJF.A


    set cartoon_transparency,0.75


    select ann2, resi 58+62+65+66+69+72+73+150+151+155+158+163+166+167
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 234+204+202+242+27+244+192+235+10+8+167+25+171+232+96+32+231+236+159+115+23+237+63+12+146+48+66+147+7+99+143
    indicate bycalpha pred
    create pred_res, indicate


    show sphere, annotated2
    color pink, annotated2
    set sphere_transparency, 0.5,annotated2


    show sphere, pred_res
    set sphere_scale,0.5,pred_res
    color green, pred_res
    set sphere_transparency,0,pred_res
    set cartoon_transparency,1,pred_res
    




    fetch 6APN.A
    set cartoon_transparency,0.75


    select ann, resi 201+205+208+209+212+215+216+293+294+298+301+306+309+310
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 345+331+281+333+347+417+309+227+298+229+387+312+121+416+297+5+293+285+292+251+228+306+219+215+280+294+310+249+341+295+38+256+282+188
    indicate bycalpha pres
    create pres_res, indicate


    show sphere, annotated
    color red, annotated
    set sphere_transparency, 0.5,annotated


    show sphere, pres_res
    set sphere_scale,0.5,pres_res
    color blue, pres_res
    set sphere_transparency,0,pres_res
    set cartoon_transparency,1,pres_res
    




    align 3GJF.A, 6APN.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3GJF_6APN.png,width=900, height=900,dpi = 350,ray=1
    quit