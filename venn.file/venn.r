
leaf<-unlist(read.table("Leaf_gene.txt"))
stem<-unlist(read.table("Stem_gene.txt"))
root<-unlist(read.table("Root_gene.txt"))

library(VennDiagram)

venn.plot<-venn.diagram(
list(leaf=leaf,root=root,stem=stem),
col = "transparent",
fill = c("red", "green", "yellow"),
alpha =c(0.5,0.5,0.5),
scaled = TRUE,
ext.text = TRUE,
ext.line.lwd = 2,
ext.dist = -0.15,
ext.length = 0.9,
ext.pos = -4,
inverted = TRUE,
cex = 2.5,
cat.cex = 2.5,
filename = "venn.tiff",
main = "Venn Diagram",
sub = "Leaf_Root_Stem",
main.cex = 2,
sub.cex = 1)

##########################################################
# Note: most examples are listed as dontrun to meet CRAN requirements, 
# but all should work as-is!

# compact and minimal notation
## Not run: 
venn.plot <- venn.diagram(
  list(A = 1:150, B = 121:170), 
  "Venn_2set_simple.tiff"
)

venn.plot <- venn.diagram(
  list(A = 1:150, B = 121:170, C = 101:200), 
  "Venn_3set_simple.tiff"
)

## End(Not run)

# a more elaborate two-set Venn diagram with title and subtitle
venn.plot <- venn.diagram(
  x = list(
    "A" = 1:100,
    "B" = 96:140
  ),
  filename = "Venn_2set_complex.tiff",
  scaled = TRUE,
  ext.text = TRUE,
  ext.line.lwd = 2,
  ext.dist = -0.15,
  ext.length = 0.9,
  ext.pos = -4,
  inverted = TRUE,
  cex = 2.5,
  cat.cex = 2.5,
  rotation.degree = 45, ##旋转角度
  main = "Complex Venn Diagram",
  sub = "Featuring: rotation and external lines",
  main.cex = 2, ##主标题的大小
  sub.cex = 1   #副标题的大小
)

## Not run: 
# sample three-set Euler diagram
venn.plot <- venn.diagram(
  x = list(
    "Num A" = paste("Num", 1:100),
    "Num B" = c(paste("Num", 61:70), paste("Num", 71:100)),
    "Num C" = c(paste("Num", 41:60), paste("Num", 61:70))),
  euler.d = TRUE,
  filename = "Euler_3set_simple.tiff",
  cat.pos = c(-20, 0, 20),
  cat.dist = c(0.05, 0.05, 0.02),
  cex = 2.5,
  cat.cex = 2.5,
  reverse = TRUE ##逆时针方向
)

# sample three-set Euler diagram
venn.plot <- venn.diagram(
  x = list(
    A = c(1:10),
    B = c(11:90),
    C = c(81:90)
  ),
  euler.d = TRUE,
  filename = "Euler_3set_scaled.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = 0
)

## End(Not run)

# sample four-set Venn Diagram
A <- sample(1:1000, 400, replace = FALSE)
B <- sample(1:1000, 600, replace = FALSE)
C <- sample(1:1000, 350, replace = FALSE)
D <- sample(1:1000, 550, replace = FALSE)
E <- sample(1:1000, 375, replace = FALSE)

venn.plot <- venn.diagram(
  x = list(
    A = A,
    D = D,
    B = B,
    C = C
  ),
  filename = "C-Venn_4set_pretty.tiff",
  col = "transparent",
  fill = c("cornflowerblue", "green", "yellow", "darkorchid1"),
  alpha = 0.50,
  label.col = c("orange", "white", "darkorchid4", "white", 
                "white", "white", "white", "white", "darkblue", "white", 
                "white", "white", "white", "darkgreen", "white"),
  cex = 1.5,
  fontfamily = "serif",
  fontface = "bold",
  cat.col = c("darkblue", "darkgreen", "orange", "darkorchid4"),##这是ADBC字符的颜色
  cat.pos = 0,
  cat.dist = 0.07,
  cat.fontfamily = "serif",  
  rotation.degree = 270,
  margin = 0.2    ##圈圈的边缘大小
)

# sample five-set Venn Diagram  
venn.plot <- venn.diagram(
  x = list(
    A = A,
    B = B,
    C = C,
    D = D,
    E = E
  ),
  filename = "Venn_5set_pretty.tiff",
  col = "black",
  fill = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
  alpha = 0.50,
  cex = c(1.5, 1.5, 1.5, 1.5, 1.5, 1, 0.8, 1, 0.8, 1, 0.8, 1, 0.8,
          1, 0.8, 1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 0.55, 1, 1, 1, 1, 1, 1.5),
  cat.col = c("dodgerblue", "goldenrod1", "darkorange1", "seagreen3", "orchid3"),
  cat.cex = 1.5,
  cat.fontface = "bold",
  margin = 0.05
)

# Complex three-way Venn with labels & sub-/super-scripts	
venn.plot <- venn.diagram(
  x = list(
    I = c(1:60, 61:105, 106:140, 141:160, 166:175, 176:180, 181:205, 
          206:220),
    II = c(531:605, 476:530, 336:375, 376:405, 181:205, 206:220, 166:175, 
           176:180),
    III = c(61:105, 106:140, 181:205, 206:220, 221:285, 286:335, 336:375, 
            376:405)
  ),
  category.names = c(
    expression( bold('A'['1: subscript']) ),
    expression( bold('B'^'2: going up') ),
    expression( paste(bold('C'^'3'), bold('X'['i' <= 'r'^'2']^'2') ) )
  ),
  filename = 'Fig3-1_triple_labels_sub_and_superscripts.tiff',
  output = TRUE,
  height = 3000,
  width = 3000,
  resolution = 300,
  compression = 'lzw',
  units = 'px',
  lwd = 6,
  lty = 'blank',
  fill = c('yellow', 'purple', 'green'),
  cex = 3.5,
  fontface = "bold",
  fontfamily = "sans",
  cat.cex = 3,
  cat.fontface = "bold",
  cat.default.pos = "outer",
  cat.pos = c(-27, 27, 135),
  cat.dist = c(0.055, 0.055, 0.085),
  cat.fontfamily = "sans",
  rotation = 1
)

# Complex 3-way Venn using expressions
venn.plot <- venn.diagram(
  x = list(
    "Num A" = paste("Num", 1:100),
    "Num B" = c(paste("Num", 61:70), paste("Num", 71:100)),
    "Num C" = c(paste("Num", 41:60), paste("Num", 61:70))),
  category.names = c(
    expression( bold('A'['1']) ),
    expression( bold('A'['2']) ),
    expression( bold('A'['3']) )
  ),
  euler.d = TRUE,
  filename = "Fig3-2_Euler_3set_simple_with_subscripts.tiff",
  cat.pos = c(-20, 0, 20),
  cat.dist = c(0.05, 0.05, 0.02),
  cex = 2.5,
  cat.cex = 2.5,
  reverse = TRUE
)

## Not run: 
# Example to print to screen
venn.plot <- venn.diagram(
  x = list(
    sample1 = c(1:40),
    sample2 = c(30:60)
  ),
  filename = NULL
)
grid.draw(venn.plot)

# Save picture to non-TIFF file type
# currently working on adding this functionality directly into venn.diagram
venn.plot <- venn.diagram(
  x = list (
    A = 1:10,
    B = 6:25
  ),
  filename = NULL
);

jpeg("venn_jpeg.jpg");
grid.draw(venn.plot);
dev.off();


## End(Not run)

#dontrun-starts-here
### NB: All figures from the paper can be run, but are turned off from
###     automatic execution to reduce burden on CRAN computing resources.
## Not run: 
# Figure 1A
venn.plot <- venn.diagram(
  x = list(
    Label = 1:100
  ),
  filename = "1A-single_Venn.tiff",
  col = "black",
  lwd = 9,
  fontface = "bold",
  fill = "grey",
  alpha = 0.75,
  cex = 4,
  cat.cex = 3,
  cat.fontface = "bold"
)

# Figure 1B
venn.plot <- venn.diagram(
  x = list(
    X = 1:150,
    Y = 121:180
  ),
  filename = "1B-double_Venn.tiff",
  lwd = 4,
  fill = c("cornflowerblue", "darkorchid1"),
  alpha = 0.75,
  label.col = "white",
  cex = 4,
  fontfamily = "serif",
  fontface = "bold",
  cat.col = c("cornflowerblue", "darkorchid1"),
  cat.cex = 3,
  cat.fontfamily = "serif",
  cat.fontface = "bold",
  cat.dist = c(0.03, 0.03),
  cat.pos = c(-20, 14)
)

# Figure 1C
venn.plot <- venn.diagram(
  x = list(
    R = c(1:70, 71:110, 111:120, 121:140),
    B = c(141:200, 71:110, 111:120, 201:230),
    G = c(231:280, 111:120, 121:140, 201:230)
  ),
  filename = "1C-triple_Venn.tiff",
  col = "transparent",
  fill = c("red", "blue", "green"),
  alpha = 0.5,
  label.col = c("darkred", "white", "darkblue", "white",
                "white", "white", "darkgreen"),
  cex = 2.5,
  fontfamily = "serif",
  fontface = "bold",
  cat.default.pos = "text",
  cat.col = c("darkred", "darkblue", "darkgreen"),
  cat.cex = 2.5,
  cat.fontfamily = "serif",
  cat.dist = c(0.06, 0.06, 0.03),
  cat.pos = 0
)

# Figure 1D
venn.plot <- venn.diagram(
  x = list(
    I = c(1:60, 61:105, 106:140, 141:160, 166:175, 176:180, 181:205, 
          206:220),
    IV = c(531:605, 476:530, 336:375, 376:405, 181:205, 206:220, 166:175, 
           176:180),
    II = c(61:105, 106:140, 181:205, 206:220, 221:285, 286:335, 336:375, 
           376:405),
    III = c(406:475, 286:335, 106:140, 141:160, 166:175, 181:205, 336:375, 
            476:530)
  ),
  filename = "1D-quadruple_Venn.tiff",
  col = "black",
  lty = "dotted",
  lwd = 4,
  fill = c("cornflowerblue", "green", "yellow", "darkorchid1"),
  alpha = 0.50,
  label.col = c("orange", "white", "darkorchid4", "white", "white", "white",
                "white", "white", "darkblue", "white",
                "white", "white", "white", "darkgreen", "white"),
  cex = 2.5,
  fontfamily = "serif",
  fontface = "bold",
  cat.col = c("darkblue", "darkgreen", "orange", "darkorchid4"),
  cat.cex = 2.5,
  cat.fontfamily = "serif"
)

# Figure 2-1
venn.plot <- venn.diagram(
  x = list(
    A = 1:105,
    B = 101:115
  ),
  filename = "2-1_special_case_ext-text.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = c(-20, 20),
  ext.line.lty = "dotted",
  ext.line.lwd = 2,
  ext.pos = 12,
  ext.dist = -0.12,
  ext.length = 0.85
)

# Figure 2-2
venn.plot <- venn.diagram(
  x = list(
    A = 1:100,
    B = 1:10
  ),
  filename = "2-2_special_case_pairwise-inclusion.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = 0
)

# Figure 2-3
venn.plot <- venn.diagram(
  x = list(
    A = 1:150,
    B = 151:250
  ),
  filename = "2-3_special_case_pairwise-exclusion.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = c(0, 0),
  cat.dist = 0.05
)

# Figure 2-4
venn.plot <- venn.diagram(
  x = list(
    A = c(1:50, 101:140, 141:160, 161:170),
    B = c(171:230, 101:140, 161:170, 291:320),
    C = c(141:160, 161:170, 291:320)
  ),
  filename = "2-4_triple_special_case-001.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.dist = c(0.05, 0.05, -0.1)
)

# Figure 2-5
venn.plot <- venn.diagram(
  x = list(
    A = c(1:100),
    B = c(61:70, 71:100),
    C = c(41:60, 61:70)
  ),
  filename = "2-5_triple_special_case-012AA.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = c(-25, 0, 30),
  cat.dist = c(0.05, 0.05, 0.02)
)

# Figure 2-6
venn.plot <- venn.diagram(
  x = list(
    A = c(1:90),
    B = c(1:25),
    C = c(1:5)
  ),
  filename = "2-6_triple_special_case-022AAAO.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = 0,
  cat.dist = c(0.03, 0.03, 0.01)
)

# Figure 2-7
venn.plot <- venn.diagram(
  x = list(
    A = c(1:20),
    B = c(21:80),
    C = c(81:210)
  ),
  filename = "2-7_triple_special_case-100.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.dist = 0.05
)

# Figure 2-8
venn.plot <- venn.diagram(
  x = list(
    A = c(1:80),
    B = c(41:150),
    C = c(71:100)
  ),
  filename = "2-8_triple_special_case-011A.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.dist = c(0.07, 0.07, 0.02),
  cat.pos = c(-20, 20, 20)
)

# Figure 2-9
venn.plot <- venn.diagram(
  x = list(
    A = c(1:10),
    B = c(11:90),
    C = c(81:90)
  ),
  filename = "2-9_triple_special_case-121AO.tiff",
  cex = 2.5,
  cat.cex = 2.5,
  cat.pos = 0,
  cat.dist = c(0.04, 0.04, 0.02),
  reverse = TRUE
)

## dontrun-ends-here end Not run 



