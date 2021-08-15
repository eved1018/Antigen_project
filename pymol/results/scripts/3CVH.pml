delete all 
    fetch 3CVH.A


    set cartoon_transparency,0.75


    select ann2, resi 62+65+68+72+73+76+79+80+146+149+150+154+155+158+159+162+163
    indicate bycalpha ann2
    create annotated2, indicate


    select pred, resi 204+202+234+235+244+8+167+115+10+63+229+96+122+147+70+66+98+27+192+62+120+7+143+121+77+9+12+119+232+159+231
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
    




    fetch 2QRI.A
    set cartoon_transparency,0.75


    select ann, resi 62H+65H+68H+72H+73H+76H+79H+80H+146H+149H+150H+154H+155H+158H+159H+162H+163H
    indicate bycalpha ann
    create annotated, indicate


    select pres, resi 84H+138H+142H+23P+225H+226H+141H+15P+202H+1B+230H+223H+22P+28B+85H+99B+227H+122H+12P+16P+13P+229H+86H+256H+137H+255H+216H+21H+145H+224H+204H+262H
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
    




    align 3CVH.A, 2QRI.A





    remove resn hoh
    hide (het)
    
    zoom complete=1
    bg_color white 
    set ray_opaque_background, 1

    
    png /Users/moshe/Desktop/Research_Antigen/pymol/results/images/3CVH_2QRI.png,width=900, height=900,dpi = 350,ray=1
    quit