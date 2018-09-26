// root
import naan;
import CAD;

sCAD cad = sCAD.Create();

unitsize(1pt);
settings.outformat = "pdf";

pair pone = (0, 0), ptwo = (100, -35), pthr = (100, 0);
label("$A$", pone, (0, -7));
label("$B^\prime$", ptwo, (5, -2));
label("$B$", pthr, (0, 2));
combinePic(
        hingeSupport(pone),
        hingeSupport(ptwo),
        lever(pone, ptwo),
        momentLoad(pone, "$M_a$", offset=(0,5), scale=1.2),
        momentLoad(ptwo, "$M_b$", offset=(0,5), scale=1.2)
);
currentpen = dashed + red;
combinePic(
    hingeSupport(pthr, scale = (0.8, 0.8)),
    lever(pone, pthr)
);

currentpen = linetype(new real[]);
cad.MeasureParallel("$\Delta$", pthr, ptwo, 25);
