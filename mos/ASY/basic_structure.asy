// root
import naan;
import CAD;

sCAD cad = sCAD.Create();

unitsize(1pt);
settings.outformat = "pdf";

pair pone = (0, 0), ptwo = (70,0 ), pthr = (140, 0), pfor = (210, 0);
pair pfiv = (70, 70);

label("$A$", pone, (0, -7));
label("$B$", ptwo, (0, -7));
label("$C$", pthr, (0, -7));
label("$D$", pfor, (0, -7));
label("$E$", pfiv, (7, 0));

combinePic(
        hingeSupport(pone),
        hingeSupport(ptwo),
        hingeSupport(pthr),
        hingeSupport(pfor),
        hingeSupport(pfiv, pi/2),
        lever(pone, ptwo),
        lever(ptwo, pthr),
        lever(pthr, pfor),
        lever(pfiv, ptwo),
        theta_constrain(ptwo, pi/4),
        theta_constrain(pthr, pi/4)
        );
