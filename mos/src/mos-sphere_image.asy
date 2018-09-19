settings.outformat = "pdf";
unitsize(1pt);
include "asyLib/asyLib.asy";

pair pone = (20, 50), ptwo = (120, 50);
combinePic(
    fixedSupport(pone, 3*pi/2),
    fixedSupport(ptwo, pi/2),
    lever(pone, ptwo),
    pointLoad(.2pone + .8ptwo, 0, "$F_1$"),
    pointLoad(.4pone + .6ptwo, 0, "$F_2$"),
    pointLoad(.6pone + .4ptwo, 0, "$F_3$"),
    pointLoad(.8pone + .2ptwo, 0, "$F_4$")
);
