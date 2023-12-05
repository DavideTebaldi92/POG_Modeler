echo on
%   
%  ****  LIST OF THE PHYSICAL BLOCKS
%  NAME  TYPE         OUT        DESCRIPTION
%  eC    Dinamico     Effort     Electric Capacitor
%  eL    Dinamico     Flow       Electric Inductor
%  eR    Resistivo    Vuoto      Electric Resistance
%  eG    Resistivo    Vuoto      Electric Conductance
%  mM    Dinamico     Effort     Translational Mass
%  mE    Dinamico     Flow       Translational Elasticity
%  mK    Dinamico     Flow       Translational Stiffness
%  mD    Resistivo    Vuoto      Reciprocal of the friction coefficient
%  mB    Resistivo    Vuoto      Friction coefficient
%  rJ    Dinamico     Effort     Rotational Inertia
%  rE    Dinamico     Flow       Rotational Elasticity
%  rK    Dinamico     Flow       Rotational Stiffness
%  rD    Resistivo    Vuoto      Reciprocal of rotational friction coefficient
%  rB    Resistivo    Vuoto      rotational friction coefficient
%  iC    Dinamico     Effort     Hydraulic Capacitor
%  iK    Dinamico     Effort     Hydraulic Stiffness
%  iL    Dinamico     Flow       Hydraulic Inductor
%  iR    Resistivo    Vuoto      Hydraulic Resistance
%  iG    Resistivo    Vuoto      Hydraulic Conductance
%   
%  ****  LIST OF THE  META-PHYSICAL BLOCKS
%  NAME  TYPE         OUT        DESCRIPTION
%  eV    Ingresso     Effort     Voltage generator
%  eI    Ingresso     Flow       Current generator
%  mV    Ingresso     Effort     Velocity generator
%  mF    Ingresso     Flow       Force generator
%  rW    Ingresso     Effort     Angular velocity generator
%  rT    Ingresso     Flow       Torque generator
%  iP    Ingresso     Effort     Pressure generator
%  iQ    Ingresso     Flow       Volume flow rate generator
%   
%  ****  COMMANDS WHICH ARE SPECIFIC TO EACH BRANCH
%  NAME     (LONG-NAME)            VALUE      NUMSTR TYPE   RANGE           DESCRIPTION
%  pSx      (pog_Block_S_dx)       '[]'       Num                           Width of the integral block S
%  pSy      (pog_Block_S_dy)       '[]'       Num                           Height of the integral block S
%  pMx      (pog_Block_M_dx)       '[]'       Num                           Width of the proportional block M
%  pMy      (pog_Block_M_dy)       '[]'       Num                           Height  of the proportional block M
%  pSyM     (pog_From_S_to_M_dy)   '[]'       Num                           Distance between the integral block S and the proportional block M
%  pSpx     (pog_Space_dx)         '[]'       Num                           Free space within the block
%  pEsu     (pog_Effort_Su)        '[]'       Str                           Indicates if the effor variable En is up-located
%  pLw      (pog_Line_Width)       '[]'       Num                           Line width of the POG branch
%  pLt      (pog_Line_Type)        '[]'       Str                           Hatch type and color of the lines of the POG branch
%  pShY     (pog_Show_Y)           '[]'       Str                           Indicates if the input variable Y must be visualized
%  pFnY     (pog_Font_Y)           '[]'       Num                           Font dimension of the input variable Y
%  pClY     (pog_Color_Y)          '[]'       Str                           Color of the input variable Y
%  pShQ     (pog_Show_Q)           '[]'       Str                           Indicates if the energy variable Q must be visualized
%  pFnQ     (pog_Font_Q)           '[]'       Num                           Font dimension of the energy variable Q
%  pClQ     (pog_Color_Q)          '[]'       Str                           Color of the energy variable Q
%  pShK     (pog_Show_K)           '[]'       Str                           Indicates if the internal parameter K must be visualized
%  pFnK     (pog_Font_K)           '[]'       Num                           Font dimension of the internal parameter K
%  pClK     (pog_Color_K)          '[]'       Str                           Color of the internal parameter K
%  pShX     (pog_Show_X)           '[]'       Str                           Indicates if the output variable X must be visualized
%  pFnX     (pog_Font_X)           '[]'       Num                           Font dimension of the output variable X
%  pClX     (pog_Color_X)          '[]'       Str                           Color of the output variable X
%  pShT     (pog_Show_T)           '[]'       Str                           Indicates if the dashed line must be visualized
%  pLwT     (pog_Width_T)          '[]'       Num                           Width of the dashed line
%  pClT     (pog_Color_T)          '[]'       Str                           Color of the dashed line
%  pVs      (pog_Visibile)         '[]'       Str                           Indicates if the POG branch must be visualized
%  pSr      (pog_Show_Nome_Ramo)   '[]'       Str                           Indicates if the numeric name of the POG branch must be visualized
%  pFr      (pog_Font_Nome_Ramo)   '[]'       Num                           Font dimension of the numeric name of the POG branch
%  pCr      (pog_Color_Nome_Ramo)  '[]'       Str                           Color of the numeric name of the POG branch
%  pColored (pog_Colored)          '[]'       Str                           Indicates if the POG block must be colored along the edges
%  pPatch   (pog_Patch)            '[]'       Str                           Indicates if the POG block must be colored inside
%  pCle     (pog_Color_e)          '[]'       Num                           RGB color of the electromagnetic POG branches
%  pClm     (pog_Color_m)          '[]'       Num                           RGB color of the mechanical-translational POG branches
%  pClr     (pog_Color_r)          '[]'       Num                           RGB color of the mechanical-rotational POG branches
%  pCli     (pog_Color_i)          '[]'       Num                           RGB color of the hydraulic POG branches
%  pCl4     (pog_Color_4)          '[]'       Num                           RGB color of the POG branches of type transformer and gyrator
%  pEFColor (pog_En_Fn_Color)      '[]'       Str                           Indicates if, in the POG scheme, the En ed Fn paths must be colored
%  pClEn    (pog_Color_En)         '[]'       Num                           RGB color of the Effort variables
%  pClFn    (pog_Color_Fn)         '[]'       Num                           RGB color of the Flow variables
%  In0      (pog_In_0)             '[]'       Str                           Default value of the input variable
%  Kn0      (pog_Kn_0)             '[]'       Str                           Value of the internal parameter Kn
%  Qn0      (pog_Qn_0)             '[]'       Str                           Initial value of the energy variable Qn
%  En0      (pog_En_0)             '[]'       Str                           Initial value of the effort variable En
%  Fn0      (pog_Fn_0)             '[]'       Str                           Initial value of the flow variable Fn
%  pUs      (pog_Underscore)       '[]'       Str                           Indicates if the "underscore" in the brance name of the POG block scheme must be left
%  pStep    (pog_Plot_Step)        '[]'       Num                           Indicates the graphication step
%  Lw       (Line_Width)           '[]'       Num                           Line width of the branch
%  Lt       (Line_Type)            '[]'       Str                           Hatch type and color of the lines of the physical branch
%  Colored  (Line_Colored_POG)     '[]'       Str                           Indicates whether the color of the branch must be the same as that of the energetic domain
%  Fw       (Frecce_Width)         '[]'       Num                           Width of the arrows of the physical branch
%  Ft       (Frecce_Type)          '[]'       Str                           Hatch type and color of the arrows of the physical branch
%  ShX      (Show_X)               '[]'       Str                           Indicates if the output variable X must be visualized
%  FnX      (Font_X)               '[]'       Num                           Font dimension of the output variable X
%  ClX      (Color_X)              '[]'       Str                           Color of the output variable X
%  ShK      (Show_K)               '[]'       Str                           Indicates if the internal parameter K must be visualized
%  FnK      (Font_K)               '[]'       Num                           Font dimension of the internal parameter K
%  ClK      (Color_K)              '[]'       Str                           Color of the internal parameter K
%  ShY      (Show_Y)               '[]'       Str                           Indicates if the input variable Y must be visualized
%  FnY      (Font_Y)               '[]'       Num                           Font dimension of the input variable Y
%  ClY      (Color_Y)              '[]'       Str                           Color of the input variable Y
%  Zm       (Zoom)                 '[]'       Num                           Zoom factor of the element present on the physical branch
%  SDR      (Show_Dots_Ramo)       '[]'       Str                           Indicates if the dots of the branch must be visualized
%  SL       (Show_Labels)          '[]'       Str                           Indicates if the labels and the arrows of the physical branch must be visualized
%  Pol      (Show_Polarita)        '[]'       Str                           Shows with small "dots" the positive pole of the physical branch
%  Out      (Out)                  'Vuoto'    Str    Set    {Effort,Flow,Vuoto}   Output variable: "E"=Effort, "F"=Flow, "Vuoto"=Undefined
%  An       (Angle)                '0'        Num    Real   [-180 180]      Rotation angle of the physical branch
%  Ln       (Lung)                 '1'        Num    Real   [0 10]          Length of the physical branch
%  Sh       (Shift)                '0'        Num    Real   [-5 5]          Lateral shift of the physical branch
%  La       (Lateral)              '0.4'      Num    Real   [-2 2]          Lateral distance from another physical branch
%  Tr       (Trasla)               '0'        Num    Real   [-10 10]        Translational shift of the element along the physical branch
%  Vs       (Visibile)             'Si'       Str    Set    {Si,No}         Indicates if the physical branch must be visualized
%  Eu       (E_up_down)            '-1'       Num    Set    [-1 1]          Up/Down position of the across-variable En
%  Ku       (K_up_down)            '1'        Num    Set    [-1 1]          Up/Down position of the internal parameter Kn
%  Qu       (Q_up_down)            '1'        Num    Set    [-1 1]          Up/Down position of the energy variable Qn
%  Fu       (F_up_down)            '-1'       Num    Set    [-1 1]          Up/Down position of the through-variable Fn
%  Pin      (Pow_In)               '1'        Num    Set    [-1 1]          Sign of the power entering the physical branch
%   
%  ****  LIST OF SYSTEM COMMANDS
%  NAME     (LONG-NAME)            VALUE      NUMSTR TYPE   RANGE           DESCRIPTION
%  pSx      (pog_Block_S_dx)       '2.2'      Num    Real   [1 4]           Width of the integral block S
%  pSy      (pog_Block_S_dy)       '2.2'      Num    Real   [1 4]           Height of the integral block S
%  pMx      (pog_Block_M_dx)       '2.7'      Num    Real   [1 6]           Width of the proportional block M
%  pMy      (pog_Block_M_dy)       '2.7'      Num    Real   [1 6]           Height  of the proportional block M
%  pSyM     (pog_From_S_to_M_dy)   '1.1'      Num    Real   [0.5 3]         Distance between the integral block S and the proportional block M
%  pSpx     (pog_Space_dx)         '1'        Num    Real   [0.1 3]         Free space within the block
%  pSsi     (pog_S_exists)         'Si'       Str    Set    {Si,No}         Indicates if the block is present
%  pEsu     (pog_Effort_Su)        'Si'       Str    Set    {Si,No}         Indicates if the effor variable En is up-located
%  pDst     (pog_Vai_a_Destra)     'Si'       Str    Set    {Si,No}         Indicates if the POG block scheme must be developed left or right
%  pLw      (pog_Line_Width)       '0.9'      Num    Real   [0.01 5]        Line width of the POG branch
%  pLt      (pog_Line_Type)        'k'        Str    Free                   Hatch type and color of the lines of the POG branch
%  pShY     (pog_Show_Y)           'No'       Str    Set    {Si,No}         Indicates if the input variable Y must be visualized
%  pFnY     (pog_Font_Y)           '9'        Num    Int    [0 30]          Font dimension of the input variable Y
%  pClY     (pog_Color_Y)          'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of the input variable Y
%  pShQ     (pog_Show_Q)           'Si'       Str    Set    {Si,No}         Indicates if the energy variable Q must be visualized
%  pFnQ     (pog_Font_Q)           '8'        Num    Int    [0 30]          Font dimension of the energy variable Q
%  pClQ     (pog_Color_Q)          'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of the energy variable Q
%  pShK     (pog_Show_K)           'Si'       Str    Set    {Si,No}         Indicates if the internal parameter K must be visualized
%  pFnK     (pog_Font_K)           '10'       Num    Int    [0 30]          Font dimension of the internal parameter K
%  pClK     (pog_Color_K)          'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of the internal parameter K
%  pShX     (pog_Show_X)           'Si'       Str    Set    {Si,No}         Indicates if the output variable X must be visualized
%  pFnX     (pog_Font_X)           '10'       Num    Int    [0 30]          Font dimension of the output variable X
%  pClX     (pog_Color_X)          'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of the output variable X
%  pShT     (pog_Show_T)           'Si'       Str    Set    {Si,No}         Indicates if the dashed line must be visualized
%  pLwT     (pog_Width_T)          '0.4'      Num    Real   [0.01 2]        Width of the dashed line
%  pClT     (pog_Color_T)          '--k'      Str    Free                   Color and type of the dashed line
%  pVs      (pog_Visibile)         'Si'       Str    Set    {Si,No}         Indicates if the POG branch must be visualized
%  pSr      (pog_Show_Nome_Ramo)   'No'       Str    Set    {Si,No}         Indicates if the numeric name of the POG branch must be visualized
%  pFr      (pog_Font_Nome_Ramo)   '6'        Num    Int    [0 30]          Font dimension of the numeric name of the POG branch
%  pCr      (pog_Color_Nome_Ramo)  'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of the numeric name of the POG branch
%  pColored (pog_Colored)          'Si'       Str    Set    {Si,No}         Indicates if the POG block must be colored along the edges
%  pPatch   (pog_Patch)            'Si'       Str    Set    {Si,No}         Indicates if the POG block must be colored inside
%  pCle     (pog_Color_e)          '[0.184 0.376 0.725]'   Num    Real   [0 1]           RGB color of the electromagnetic POG branches
%  pClm     (pog_Color_m)          '[0.267 0.502 0.361]'   Num    Real   [0 1]           RGB color of the mechanical-translational POG branches
%  pClr     (pog_Color_r)          '[0.208 0.831 0.380]'   Num    Real   [0 1]           RGB color of the mechanical-rotational POG branches
%  pCli     (pog_Color_i)          '[0.690 0.600 0.322]'   Num    Real   [0 1]           RGB color of the hydraulic POG branches
%  pCl4     (pog_Color_4)          '[100 100 100]/255'   Num    Real   [0 1]           RGB color of the POG branches of type transformer and gyrator
%  pEFColor (pog_En_Fn_Color)      'No'       Str    Set    {Si,No}         Indicates if, in the POG scheme, the En ed Fn paths must be colored
%  pClEn    (pog_Color_En)         '[0 0.6 0]'   Num    Real   [0 1]           RGB color of the Effort variables
%  pClFn    (pog_Color_Fn)         '[0.6 0 0]'   Num    Real   [0 1]           RGB color of the Flow variables
%  In0      (pog_In_0)             '10'       Str    Free                   Default values of the input variables
%  Kn0      (pog_Kn_0)             '1'        Str    Free                   Default values of the internal parameters Kn
%  Qn0      (pog_Qn_0)             '0'        Str    Free                   Default initial values of the effort variables En
%  En0      (pog_En_0)             '0'        Str    Free                   Default initial values of the flow variables Fn
%  Fn0      (pog_Fn_0)             '0'        Str    Free                   Default initial values of the energy variables Qn
%  pIntM    (pog_IntM)             'No'       Str    Set    {Si,No}         The Integration block is located before the M block
%  pPSF     (pog_Show_Psfrag)      'No'       Str    Set    {Si,No}         Indicates if the latex commands of type psfrag must be visualized for the POG block scheme
%  pUs      (pog_Underscore)       'No'       Str    Set    {Si,No}         Indicates if the "underscore" of all the names of the POG block scheme must be left
%  pStep    (pog_Plot_Step)        '3'        Num    Int    [1 3]           Indicates the graphication step of the  POG branches
%  pPr      (pog_Print_POG)        'No'       Str    Set    {Si,No}         Indicates if the POG graphic must be saved in a file
%  xPr      (slx_Print_SLX)        'No'       Str    Set    {Si,No}         Indicates if the Simulink block scheme must be saved in a file
%  sPr      (sim_Print_SIM)        'No'       Str    Set    {Si,No}         Indicates if the simulation results must be saved in a file
%  sTfin    (sim_Tfin)             '0'        Num    Real   [0 1000]        Indicates if the simulation results must be saved in a file
%  sNrTs    (sim_Nr_Ts_Points)     '2000'     Num    Int    [0 20000]       Indicates if the simulation results must be saved in a file
%  pGTy     (pog_Graphic_Type)     'epsc'     Str    Set    {eps,epsc,jpeg,tiff,png}   Type of the graphical immage of the POG graphic
%  X1Sh     (X1_Shift)             '1+1.5*1i' Num    Free                   Lateral shift of ther "SP-Foglia" blocks within the POG schemes
%  pSplit   (Split_POG)            '0'        Str    Free                   Split of the POG scheme in particular points. Please use "-1" to obtain indications.
%  pSpDx    (Split_POG_Ver_Dx)     '5'        Num    Real   [2 10]          Vertical distance between two splitted parts
%  pSpSL    (Split_POG_Show_Lines) 'Si'       Str    Set    {Si,No}         Indicates if the connection lines between the splitted parts are to be shown
%  Lw       (Line_Width)           '1.2'      Num    Real   [0.1 5]         Global width of all the lines of the graphic
%  Lt       (Line_Type)            'k'        Str    Free                   Global hatch type and color of all the lines of the graphic
%  Colored  (Line_Colored_POG)     'Si'       Str    Set    {Si,No}         Indicates whether the color of the branch must be the same as that of the energetic domain
%  Fw       (Frecce_Width)         '0.8'      Num    Real   [0.1 3]         Global width of all the arrows of the graphic
%  Ft       (Frecce_Type)          'k'        Str    Free                   Global hatch type and color of all the arrows of the graphic
%  ShX      (Show_X)               'Si'       Str    Set    {Si,No}         Indicats if all the state variables X of the graphic must be visualized
%  FnX      (Font_X)               '10'       Num    Int    [0 30]          Global font dimension of all the state variables X of the graphic
%  ClX      (Color_X)              'k'        Str    Set    {b,g,r,c,m,y,k,w}   Global color of all the state variables X of the graphic
%  ShK      (Show_K)               'Si'       Str    Set    {Si,No}         Indicats if all the internal parameters K of the graphic must be visualized
%  FnK      (Font_K)               '10'       Num    Int    [0 30]          Global font dimension of all the internal parammeters K of the graphic
%  ClK      (Color_K)              'k'        Str    Set    {b,g,r,c,m,y,k,w}   Global color of all the internal parammeters K of the graphic
%  ShY      (Show_Y)               'No'       Str    Set    {Si,No}         Indicats if all the output variables Y of the graphic must be visualized
%  FnY      (Font_Y)               '10'       Num    Int    [0 30]          Global font dimension of all the input variables Y of the graphic
%  ClY      (Color_Y)              'k'        Str    Set    {b,g,r,c,m,y,k,w}   Global color of all the input variables Y of the graphic
%  Zm       (Zoom)                 '1'        Num    Real   [0.01 10]       Global zoom factor of all the brances of the graphic
%  SDR      (Show_Dots_Ramo)       'Si'       Str    Set    {Si,No}         Indicates if the dots of the branch must be visualized
%  SL       (Show_Labels)          'Si'       Str    Set    {Si,No}         Indicates if all the labels and arrows of the graphic must be visualized
%  Pol      (Show_Polarita)        'Si'       Str    Set    {Si,No}         Shows with small dots the positive pole of all the brances of the graphic
%  ExD      (Extra_Dash)           '0.1'      Num    Real   [0.01 1]        Indicates how much all the dashed lines of the graphic must be lengthened
%  SimScBlo (Use_Simscape_Blocks)  'No'       Str    Set    {Si,No}         Indicates whether or not to use Simscape blocks
%  Split    (Split_Scheme)         ''         Str    Free                   Indicates if all the next physical are to be splitted
%  SpShift  (Split_Shift)          '-1.6*1i'  Num    Free                   Vertical shift between two splitted parts of the POG scheme
%  SpDots1  (Split_Dots_1)         '0.1'      Num    Free                   Horizontal shift of the dots of the first splitted part of the POG scheme
%  SpDots2  (Split_Dots_2)         '-0.1'     Num    Free                   Horizontal shift of the dots of the second splitted part of the POG scheme
%  Gr       (Show_Grafico)         'Si'       Str    Set    {Si,No}         Indicates if the physical graphic must be displayed
%  Pr       (Print_Grafico)        'No'       Str    Set    {Si,No}         Indicates if the physical graphic must be saved in a file
%  Ng       (Nome_del_grafico)     '__'       Str    Name                   Name of file storing the the physical graphic
%  GTy      (Graphic_Type)         'epsc'     Str    Set    {eps,epsc,jpeg,tiff,png}   Type of the graphical immage of the physical graphic
%  SD       (Show_Dots)            'No'       Str    Set    {Si,No}         Indicates whether to display (in black) all the nodal points of the branches of the physical diagram
%  Sn       (Show_Nomi_Nodi)       'Si'       Str    Set    {Si,No}         Indicates if the names of all the nodes of the physical graphic must be visualized
%  FnN      (Font_Nodi)            '10'       Num    Int    [0 30]          Font dimension of all the nodes of the physical graphic
%  ClN      (Color_Nodi)           'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of all the nodes of the physical graphic
%  Sr       (Show_Nomi_dei_Rami)   'No'       Str    Set    {Si,No}         Indicates if the number of all the brances of the physical graphic must be visualized
%  Fr       (Font_Nomi_dei_Rami)   '7'        Num    Int    [0 30]          Font dimension of all the brances of the physical graphic
%  Cr       (Color_Nomi_dei_Rami)  'k'        Str    Set    {b,g,r,c,m,y,k,w}   Color of all the brances of the physical graphic
%  SG       (Grid)                 'No'       Str    Set    {Si,No}         Indicates if a grid must be added to the physical graphic
%  GrBo     (Grid_Border)          '0.1'      Num    Real   [0 1]           Indicates the width of an additioinal border of the grid
%  GrSt     (Grid_Step)            '0.1'      Num    Real   [0 1]           Indicates the width of the grid steps
%  GrLT     (Grid_Line_Type_Big)   '-r'       Str    Free                   Indicates the color and the type of line of the larger lines
%  GrLt     (Grid_Line_Type_Small) ':r'       Str    Free                   Indicates the color and the type of line of the smaller lines
%  GrLw     (Grid_Line_Width)      '0.2'      Num    Real   [0 1]           Indicates the width of the grid lines
%  GrFs     (Grid_Label_FontSize)  '12'       Num    Int    [0 30]          Indicates the font size of the grid numbers
%  GrFc     (Grid_Label_FontColor) 'r'        Str    Free                   Indicates the font color of the grid numbers
%  Rtxt     (Rigenera_File_txt)    'No'       Str    Set    {Si,No}         Indicates whether or not to regenerate the physical system txt file
%  As       (Analizza_lo_Schema)   'Si'       Str    Set    {Si,No}         Analyze the system and write the diferential equations
%  diary    (Genera_il_file_diary) 'No'       Str    Set    {Si,No}         Do you want to generate the diary file?
%  EQN      (Salva_EQN_Diff_Eqs)   'No'       Str    Set    {Si,No}         Save the differential equations in a "m" file
%  POG      (Crea_lo_Schema_POG)   'No'       Str    Set    {Si,No}         Generate the POG block scheme of the physical system
%  SLX      (Crea_lo_Schema_SLX)   'No'       Str    Set    {Si,No}         Generate the Simmulink block scheme of the physical system
%  SIM      (Simula_lo_Schema_SLX) 'No'       Str    Set    {Si,No}         Simulate the Simmulink block scheme of the physical system
%  Skw      (Show_Skew)            'No'       Str    Set    {Si,No}         Indicates if the symmetric and skew-symmetric parts of matrix A must be shown
%  Hs       (Show_Hs)              'No'       Str    Set    {Si,No}         Indicates if the transfer matrix H(s) of the given system must be shown
%  Hs_Det   (Hs_Det)               'Si'       Str    Set    {Si,No}         Indicates if the determinant of the transfer matrix H(s) must be shown
%  Hs_In    (Hs_In)                ''         Str    Free                   Indicates the input of the transfer matrix H(s)
%  Hs_Out   (Hs_Out)               ''         Str    Free                   Indicates the output of the transfer matrix H(s)
echo off
