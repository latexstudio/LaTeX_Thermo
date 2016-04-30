if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="1-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

usepackage("amsmath");
usepackage("mathtools");
usepackage("mathdesign", "adobe-garamond");
usepackage("bm");
usepackage("xeCJK");
texpreamble("\setCJKmainfont[BoldFont = 华文中宋, ItalicFont = 华文楷体]{华文宋体}");
texpreamble("\setmainfont{AGaramondPro-Regular.otf}");
usepackage("siunitx");
texpreamble("\sisetup{
number-math-rm = \ensuremath,
inter-unit-product = \ensuremath{{}\cdot{}},
group-digits = integer,
group-minimum-digits = 4,
group-separator = \text{~}
}");
texpreamble("\input{Symbols.tex}");
texpreamble("\newcommand{\emphA}[1]{{\myHeavy #1}}");
texpreamble("\newcommand{\emphB}[1]{{\itshape #1}}");

size(6 cm);

defaultpen(fontsize(9 pt));

pen color1 = rgb(0.368417, 0.506779, 0.709798);
pen color2 = rgb(0.880722, 0.611041, 0.142051);
pen color3 = rgb(0.560181, 0.691569, 0.194885);
pen color4 = rgb(0.922526, 0.385626, 0.209179);
pen color5 = rgb(0.647624, 0.378160, 0.614037);
pen color6 = rgb(0.772079, 0.431554, 0.102387);
pen color7 = rgb(0.363898, 0.618501, 0.782349);
pen color8 = rgb(0.972829, 0.621644, 0.073362);

import graph;
//file f=input("data.txt");
file f=input("DATA_PHASE_DIAGRAM_OF_WATER_s_g.txt");
pair[] a;
while(true) {
real x=f;
real y=f;
if(eof(f)) break;
a.push((x,y));
}
draw(graph(a),red);
//dot(a);
xaxis(BottomTop, LeftTicks);
yaxis(LeftRight, RightTicks);
