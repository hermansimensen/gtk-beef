namespace Gtk;

using System;
using System.Interop;

class Gdk
{

	const c_int ACTION_ALL = (.)7;
	const c_int BUTTON_MIDDLE = (.)2;
	const c_int BUTTON_PRIMARY = (.)1;
	const c_int BUTTON_SECONDARY = (.)3;
	const c_int CURRENT_TIME = (.)0;
	const c_int EVENT_PROPAGATE = (.)0;
	const c_int EVENT_STOP = (.)1;
	const c_int KEY_0 = (.)48;
	const c_int KEY_1 = (.)49;
	const c_int KEY_2 = (.)50;
	const c_int KEY_3 = (.)51;
	const c_int KEY_3270_AltCursor = (.)64784;
	const c_int KEY_3270_Attn = (.)64782;
	const c_int KEY_3270_BackTab = (.)64773;
	const c_int KEY_3270_ChangeScreen = (.)64793;
	const c_int KEY_3270_Copy = (.)64789;
	const c_int KEY_3270_CursorBlink = (.)64783;
	const c_int KEY_3270_CursorSelect = (.)64796;
	const c_int KEY_3270_DeleteWord = (.)64794;
	const c_int KEY_3270_Duplicate = (.)64769;
	const c_int KEY_3270_Enter = (.)64798;
	const c_int KEY_3270_EraseEOF = (.)64774;
	const c_int KEY_3270_EraseInput = (.)64775;
	const c_int KEY_3270_ExSelect = (.)64795;
	const c_int KEY_3270_FieldMark = (.)64770;
	const c_int KEY_3270_Ident = (.)64787;
	const c_int KEY_3270_Jump = (.)64786;
	const c_int KEY_3270_KeyClick = (.)64785;
	const c_int KEY_3270_Left2 = (.)64772;
	const c_int KEY_3270_PA1 = (.)64778;
	const c_int KEY_3270_PA2 = (.)64779;
	const c_int KEY_3270_PA3 = (.)64780;
	const c_int KEY_3270_Play = (.)64790;
	const c_int KEY_3270_PrintScreen = (.)64797;
	const c_int KEY_3270_Quit = (.)64777;
	const c_int KEY_3270_Record = (.)64792;
	const c_int KEY_3270_Reset = (.)64776;
	const c_int KEY_3270_Right2 = (.)64771;
	const c_int KEY_3270_Rule = (.)64788;
	const c_int KEY_3270_Setup = (.)64791;
	const c_int KEY_3270_Test = (.)64781;
	const c_int KEY_4 = (.)52;
	const c_int KEY_5 = (.)53;
	const c_int KEY_6 = (.)54;
	const c_int KEY_7 = (.)55;
	const c_int KEY_8 = (.)56;
	const c_int KEY_9 = (.)57;
	const c_int KEY_A = (.)65;
	const c_int KEY_AE = (.)198;
	const c_int KEY_Aacute = (.)193;
	const c_int KEY_Abelowdot = (.)16785056;
	const c_int KEY_Abreve = (.)451;
	const c_int KEY_Abreveacute = (.)16785070;
	const c_int KEY_Abrevebelowdot = (.)16785078;
	const c_int KEY_Abrevegrave = (.)16785072;
	const c_int KEY_Abrevehook = (.)16785074;
	const c_int KEY_Abrevetilde = (.)16785076;
	const c_int KEY_AccessX_Enable = (.)65136;
	const c_int KEY_AccessX_Feedback_Enable = (.)65137;
	const c_int KEY_Acircumflex = (.)194;
	const c_int KEY_Acircumflexacute = (.)16785060;
	const c_int KEY_Acircumflexbelowdot = (.)16785068;
	const c_int KEY_Acircumflexgrave = (.)16785062;
	const c_int KEY_Acircumflexhook = (.)16785064;
	const c_int KEY_Acircumflextilde = (.)16785066;
	const c_int KEY_AddFavorite = (.)269025081;
	const c_int KEY_Adiaeresis = (.)196;
	const c_int KEY_Agrave = (.)192;
	const c_int KEY_Ahook = (.)16785058;
	const c_int KEY_Alt_L = (.)65513;
	const c_int KEY_Alt_R = (.)65514;
	const c_int KEY_Amacron = (.)960;
	const c_int KEY_Aogonek = (.)417;
	const c_int KEY_ApplicationLeft = (.)269025104;
	const c_int KEY_ApplicationRight = (.)269025105;
	const c_int KEY_Arabic_0 = (.)16778848;
	const c_int KEY_Arabic_1 = (.)16778849;
	const c_int KEY_Arabic_2 = (.)16778850;
	const c_int KEY_Arabic_3 = (.)16778851;
	const c_int KEY_Arabic_4 = (.)16778852;
	const c_int KEY_Arabic_5 = (.)16778853;
	const c_int KEY_Arabic_6 = (.)16778854;
	const c_int KEY_Arabic_7 = (.)16778855;
	const c_int KEY_Arabic_8 = (.)16778856;
	const c_int KEY_Arabic_9 = (.)16778857;
	const c_int KEY_Arabic_ain = (.)1497;
	const c_int KEY_Arabic_alef = (.)1479;
	const c_int KEY_Arabic_alefmaksura = (.)1513;
	const c_int KEY_Arabic_beh = (.)1480;
	const c_int KEY_Arabic_comma = (.)1452;
	const c_int KEY_Arabic_dad = (.)1494;
	const c_int KEY_Arabic_dal = (.)1487;
	const c_int KEY_Arabic_damma = (.)1519;
	const c_int KEY_Arabic_dammatan = (.)1516;
	const c_int KEY_Arabic_ddal = (.)16778888;
	const c_int KEY_Arabic_farsi_yeh = (.)16778956;
	const c_int KEY_Arabic_fatha = (.)1518;
	const c_int KEY_Arabic_fathatan = (.)1515;
	const c_int KEY_Arabic_feh = (.)1505;
	const c_int KEY_Arabic_fullstop = (.)16778964;
	const c_int KEY_Arabic_gaf = (.)16778927;
	const c_int KEY_Arabic_ghain = (.)1498;
	const c_int KEY_Arabic_ha = (.)1511;
	const c_int KEY_Arabic_hah = (.)1485;
	const c_int KEY_Arabic_hamza = (.)1473;
	const c_int KEY_Arabic_hamza_above = (.)16778836;
	const c_int KEY_Arabic_hamza_below = (.)16778837;
	const c_int KEY_Arabic_hamzaonalef = (.)1475;
	const c_int KEY_Arabic_hamzaonwaw = (.)1476;
	const c_int KEY_Arabic_hamzaonyeh = (.)1478;
	const c_int KEY_Arabic_hamzaunderalef = (.)1477;
	const c_int KEY_Arabic_heh = (.)1511;
	const c_int KEY_Arabic_heh_doachashmee = (.)16778942;
	const c_int KEY_Arabic_heh_goal = (.)16778945;
	const c_int KEY_Arabic_jeem = (.)1484;
	const c_int KEY_Arabic_jeh = (.)16778904;
	const c_int KEY_Arabic_kaf = (.)1507;
	const c_int KEY_Arabic_kasra = (.)1520;
	const c_int KEY_Arabic_kasratan = (.)1517;
	const c_int KEY_Arabic_keheh = (.)16778921;
	const c_int KEY_Arabic_khah = (.)1486;
	const c_int KEY_Arabic_lam = (.)1508;
	const c_int KEY_Arabic_madda_above = (.)16778835;
	const c_int KEY_Arabic_maddaonalef = (.)1474;
	const c_int KEY_Arabic_meem = (.)1509;
	const c_int KEY_Arabic_noon = (.)1510;
	const c_int KEY_Arabic_noon_ghunna = (.)16778938;
	const c_int KEY_Arabic_peh = (.)16778878;
	const c_int KEY_Arabic_percent = (.)16778858;
	const c_int KEY_Arabic_qaf = (.)1506;
	const c_int KEY_Arabic_question_mark = (.)1471;
	const c_int KEY_Arabic_ra = (.)1489;
	const c_int KEY_Arabic_rreh = (.)16778897;
	const c_int KEY_Arabic_sad = (.)1493;
	const c_int KEY_Arabic_seen = (.)1491;
	const c_int KEY_Arabic_semicolon = (.)1467;
	const c_int KEY_Arabic_shadda = (.)1521;
	const c_int KEY_Arabic_sheen = (.)1492;
	const c_int KEY_Arabic_sukun = (.)1522;
	const c_int KEY_Arabic_superscript_alef = (.)16778864;
	const c_int KEY_Arabic_switch = (.)65406;
	const c_int KEY_Arabic_tah = (.)1495;
	const c_int KEY_Arabic_tatweel = (.)1504;
	const c_int KEY_Arabic_tcheh = (.)16778886;
	const c_int KEY_Arabic_teh = (.)1482;
	const c_int KEY_Arabic_tehmarbuta = (.)1481;
	const c_int KEY_Arabic_thal = (.)1488;
	const c_int KEY_Arabic_theh = (.)1483;
	const c_int KEY_Arabic_tteh = (.)16778873;
	const c_int KEY_Arabic_veh = (.)16778916;
	const c_int KEY_Arabic_waw = (.)1512;
	const c_int KEY_Arabic_yeh = (.)1514;
	const c_int KEY_Arabic_yeh_baree = (.)16778962;
	const c_int KEY_Arabic_zah = (.)1496;
	const c_int KEY_Arabic_zain = (.)1490;
	const c_int KEY_Aring = (.)197;
	const c_int KEY_Armenian_AT = (.)16778552;
	const c_int KEY_Armenian_AYB = (.)16778545;
	const c_int KEY_Armenian_BEN = (.)16778546;
	const c_int KEY_Armenian_CHA = (.)16778569;
	const c_int KEY_Armenian_DA = (.)16778548;
	const c_int KEY_Armenian_DZA = (.)16778561;
	const c_int KEY_Armenian_E = (.)16778551;
	const c_int KEY_Armenian_FE = (.)16778582;
	const c_int KEY_Armenian_GHAT = (.)16778562;
	const c_int KEY_Armenian_GIM = (.)16778547;
	const c_int KEY_Armenian_HI = (.)16778565;
	const c_int KEY_Armenian_HO = (.)16778560;
	const c_int KEY_Armenian_INI = (.)16778555;
	const c_int KEY_Armenian_JE = (.)16778571;
	const c_int KEY_Armenian_KE = (.)16778580;
	const c_int KEY_Armenian_KEN = (.)16778559;
	const c_int KEY_Armenian_KHE = (.)16778557;
	const c_int KEY_Armenian_LYUN = (.)16778556;
	const c_int KEY_Armenian_MEN = (.)16778564;
	const c_int KEY_Armenian_NU = (.)16778566;
	const c_int KEY_Armenian_O = (.)16778581;
	const c_int KEY_Armenian_PE = (.)16778570;
	const c_int KEY_Armenian_PYUR = (.)16778579;
	const c_int KEY_Armenian_RA = (.)16778572;
	const c_int KEY_Armenian_RE = (.)16778576;
	const c_int KEY_Armenian_SE = (.)16778573;
	const c_int KEY_Armenian_SHA = (.)16778567;
	const c_int KEY_Armenian_TCHE = (.)16778563;
	const c_int KEY_Armenian_TO = (.)16778553;
	const c_int KEY_Armenian_TSA = (.)16778558;
	const c_int KEY_Armenian_TSO = (.)16778577;
	const c_int KEY_Armenian_TYUN = (.)16778575;
	const c_int KEY_Armenian_VEV = (.)16778574;
	const c_int KEY_Armenian_VO = (.)16778568;
	const c_int KEY_Armenian_VYUN = (.)16778578;
	const c_int KEY_Armenian_YECH = (.)16778549;
	const c_int KEY_Armenian_ZA = (.)16778550;
	const c_int KEY_Armenian_ZHE = (.)16778554;
	const c_int KEY_Armenian_accent = (.)16778587;
	const c_int KEY_Armenian_amanak = (.)16778588;
	const c_int KEY_Armenian_apostrophe = (.)16778586;
	const c_int KEY_Armenian_at = (.)16778600;
	const c_int KEY_Armenian_ayb = (.)16778593;
	const c_int KEY_Armenian_ben = (.)16778594;
	const c_int KEY_Armenian_but = (.)16778589;
	const c_int KEY_Armenian_cha = (.)16778617;
	const c_int KEY_Armenian_da = (.)16778596;
	const c_int KEY_Armenian_dza = (.)16778609;
	const c_int KEY_Armenian_e = (.)16778599;
	const c_int KEY_Armenian_exclam = (.)16778588;
	const c_int KEY_Armenian_fe = (.)16778630;
	const c_int KEY_Armenian_full_stop = (.)16778633;
	const c_int KEY_Armenian_ghat = (.)16778610;
	const c_int KEY_Armenian_gim = (.)16778595;
	const c_int KEY_Armenian_hi = (.)16778613;
	const c_int KEY_Armenian_ho = (.)16778608;
	const c_int KEY_Armenian_hyphen = (.)16778634;
	const c_int KEY_Armenian_ini = (.)16778603;
	const c_int KEY_Armenian_je = (.)16778619;
	const c_int KEY_Armenian_ke = (.)16778628;
	const c_int KEY_Armenian_ken = (.)16778607;
	const c_int KEY_Armenian_khe = (.)16778605;
	const c_int KEY_Armenian_ligature_ew = (.)16778631;
	const c_int KEY_Armenian_lyun = (.)16778604;
	const c_int KEY_Armenian_men = (.)16778612;
	const c_int KEY_Armenian_nu = (.)16778614;
	const c_int KEY_Armenian_o = (.)16778629;
	const c_int KEY_Armenian_paruyk = (.)16778590;
	const c_int KEY_Armenian_pe = (.)16778618;
	const c_int KEY_Armenian_pyur = (.)16778627;
	const c_int KEY_Armenian_question = (.)16778590;
	const c_int KEY_Armenian_ra = (.)16778620;
	const c_int KEY_Armenian_re = (.)16778624;
	const c_int KEY_Armenian_se = (.)16778621;
	const c_int KEY_Armenian_separation_mark = (.)16778589;
	const c_int KEY_Armenian_sha = (.)16778615;
	const c_int KEY_Armenian_shesht = (.)16778587;
	const c_int KEY_Armenian_tche = (.)16778611;
	const c_int KEY_Armenian_to = (.)16778601;
	const c_int KEY_Armenian_tsa = (.)16778606;
	const c_int KEY_Armenian_tso = (.)16778625;
	const c_int KEY_Armenian_tyun = (.)16778623;
	const c_int KEY_Armenian_verjaket = (.)16778633;
	const c_int KEY_Armenian_vev = (.)16778622;
	const c_int KEY_Armenian_vo = (.)16778616;
	const c_int KEY_Armenian_vyun = (.)16778626;
	const c_int KEY_Armenian_yech = (.)16778597;
	const c_int KEY_Armenian_yentamna = (.)16778634;
	const c_int KEY_Armenian_za = (.)16778598;
	const c_int KEY_Armenian_zhe = (.)16778602;
	const c_int KEY_Atilde = (.)195;
	const c_int KEY_AudibleBell_Enable = (.)65146;
	const c_int KEY_AudioCycleTrack = (.)269025179;
	const c_int KEY_AudioForward = (.)269025175;
	const c_int KEY_AudioLowerVolume = (.)269025041;
	const c_int KEY_AudioMedia = (.)269025074;
	const c_int KEY_AudioMicMute = (.)269025202;
	const c_int KEY_AudioMute = (.)269025042;
	const c_int KEY_AudioNext = (.)269025047;
	const c_int KEY_AudioPause = (.)269025073;
	const c_int KEY_AudioPlay = (.)269025044;
	const c_int KEY_AudioPreset = (.)269025206;
	const c_int KEY_AudioPrev = (.)269025046;
	const c_int KEY_AudioRaiseVolume = (.)269025043;
	const c_int KEY_AudioRandomPlay = (.)269025177;
	const c_int KEY_AudioRecord = (.)269025052;
	const c_int KEY_AudioRepeat = (.)269025176;
	const c_int KEY_AudioRewind = (.)269025086;
	const c_int KEY_AudioStop = (.)269025045;
	const c_int KEY_Away = (.)269025165;
	const c_int KEY_B = (.)66;
	const c_int KEY_Babovedot = (.)16784898;
	const c_int KEY_Back = (.)269025062;
	const c_int KEY_BackForward = (.)269025087;
	const c_int KEY_BackSpace = (.)65288;
	const c_int KEY_Battery = (.)269025171;
	const c_int KEY_Begin = (.)65368;
	const c_int KEY_Blue = (.)269025190;
	const c_int KEY_Bluetooth = (.)269025172;
	const c_int KEY_Book = (.)269025106;
	const c_int KEY_BounceKeys_Enable = (.)65140;
	const c_int KEY_Break = (.)65387;
	const c_int KEY_BrightnessAdjust = (.)269025083;
	const c_int KEY_Byelorussian_SHORTU = (.)1726;
	const c_int KEY_Byelorussian_shortu = (.)1710;
	const c_int KEY_C = (.)67;
	const c_int KEY_CD = (.)269025107;
	const c_int KEY_CH = (.)65186;
	const c_int KEY_C_H = (.)65189;
	const c_int KEY_C_h = (.)65188;
	const c_int KEY_Cabovedot = (.)709;
	const c_int KEY_Cacute = (.)454;
	const c_int KEY_Calculator = (.)269025053;
	const c_int KEY_Calendar = (.)269025056;
	const c_int KEY_Cancel = (.)65385;
	const c_int KEY_Caps_Lock = (.)65509;
	const c_int KEY_Ccaron = (.)456;
	const c_int KEY_Ccedilla = (.)199;
	const c_int KEY_Ccircumflex = (.)710;
	const c_int KEY_Ch = (.)65185;
	const c_int KEY_Clear = (.)65291;
	const c_int KEY_ClearGrab = (.)269024801;
	const c_int KEY_Close = (.)269025110;
	const c_int KEY_Codeinput = (.)65335;
	const c_int KEY_ColonSign = (.)16785569;
	const c_int KEY_Community = (.)269025085;
	const c_int KEY_ContrastAdjust = (.)269025058;
	const c_int KEY_Control_L = (.)65507;
	const c_int KEY_Control_R = (.)65508;
	const c_int KEY_Copy = (.)269025111;
	const c_int KEY_CruzeiroSign = (.)16785570;
	const c_int KEY_Cut = (.)269025112;
	const c_int KEY_CycleAngle = (.)269025180;
	const c_int KEY_Cyrillic_A = (.)1761;
	const c_int KEY_Cyrillic_BE = (.)1762;
	const c_int KEY_Cyrillic_CHE = (.)1790;
	const c_int KEY_Cyrillic_CHE_descender = (.)16778422;
	const c_int KEY_Cyrillic_CHE_vertstroke = (.)16778424;
	const c_int KEY_Cyrillic_DE = (.)1764;
	const c_int KEY_Cyrillic_DZHE = (.)1727;
	const c_int KEY_Cyrillic_E = (.)1788;
	const c_int KEY_Cyrillic_EF = (.)1766;
	const c_int KEY_Cyrillic_EL = (.)1772;
	const c_int KEY_Cyrillic_EM = (.)1773;
	const c_int KEY_Cyrillic_EN = (.)1774;
	const c_int KEY_Cyrillic_EN_descender = (.)16778402;
	const c_int KEY_Cyrillic_ER = (.)1778;
	const c_int KEY_Cyrillic_ES = (.)1779;
	const c_int KEY_Cyrillic_GHE = (.)1767;
	const c_int KEY_Cyrillic_GHE_bar = (.)16778386;
	const c_int KEY_Cyrillic_HA = (.)1768;
	const c_int KEY_Cyrillic_HARDSIGN = (.)1791;
	const c_int KEY_Cyrillic_HA_descender = (.)16778418;
	const c_int KEY_Cyrillic_I = (.)1769;
	const c_int KEY_Cyrillic_IE = (.)1765;
	const c_int KEY_Cyrillic_IO = (.)1715;
	const c_int KEY_Cyrillic_I_macron = (.)16778466;
	const c_int KEY_Cyrillic_JE = (.)1720;
	const c_int KEY_Cyrillic_KA = (.)1771;
	const c_int KEY_Cyrillic_KA_descender = (.)16778394;
	const c_int KEY_Cyrillic_KA_vertstroke = (.)16778396;
	const c_int KEY_Cyrillic_LJE = (.)1721;
	const c_int KEY_Cyrillic_NJE = (.)1722;
	const c_int KEY_Cyrillic_O = (.)1775;
	const c_int KEY_Cyrillic_O_bar = (.)16778472;
	const c_int KEY_Cyrillic_PE = (.)1776;
	const c_int KEY_Cyrillic_SCHWA = (.)16778456;
	const c_int KEY_Cyrillic_SHA = (.)1787;
	const c_int KEY_Cyrillic_SHCHA = (.)1789;
	const c_int KEY_Cyrillic_SHHA = (.)16778426;
	const c_int KEY_Cyrillic_SHORTI = (.)1770;
	const c_int KEY_Cyrillic_SOFTSIGN = (.)1784;
	const c_int KEY_Cyrillic_TE = (.)1780;
	const c_int KEY_Cyrillic_TSE = (.)1763;
	const c_int KEY_Cyrillic_U = (.)1781;
	const c_int KEY_Cyrillic_U_macron = (.)16778478;
	const c_int KEY_Cyrillic_U_straight = (.)16778414;
	const c_int KEY_Cyrillic_U_straight_bar = (.)16778416;
	const c_int KEY_Cyrillic_VE = (.)1783;
	const c_int KEY_Cyrillic_YA = (.)1777;
	const c_int KEY_Cyrillic_YERU = (.)1785;
	const c_int KEY_Cyrillic_YU = (.)1760;
	const c_int KEY_Cyrillic_ZE = (.)1786;
	const c_int KEY_Cyrillic_ZHE = (.)1782;
	const c_int KEY_Cyrillic_ZHE_descender = (.)16778390;
	const c_int KEY_Cyrillic_a = (.)1729;
	const c_int KEY_Cyrillic_be = (.)1730;
	const c_int KEY_Cyrillic_che = (.)1758;
	const c_int KEY_Cyrillic_che_descender = (.)16778423;
	const c_int KEY_Cyrillic_che_vertstroke = (.)16778425;
	const c_int KEY_Cyrillic_de = (.)1732;
	const c_int KEY_Cyrillic_dzhe = (.)1711;
	const c_int KEY_Cyrillic_e = (.)1756;
	const c_int KEY_Cyrillic_ef = (.)1734;
	const c_int KEY_Cyrillic_el = (.)1740;
	const c_int KEY_Cyrillic_em = (.)1741;
	const c_int KEY_Cyrillic_en = (.)1742;
	const c_int KEY_Cyrillic_en_descender = (.)16778403;
	const c_int KEY_Cyrillic_er = (.)1746;
	const c_int KEY_Cyrillic_es = (.)1747;
	const c_int KEY_Cyrillic_ghe = (.)1735;
	const c_int KEY_Cyrillic_ghe_bar = (.)16778387;
	const c_int KEY_Cyrillic_ha = (.)1736;
	const c_int KEY_Cyrillic_ha_descender = (.)16778419;
	const c_int KEY_Cyrillic_hardsign = (.)1759;
	const c_int KEY_Cyrillic_i = (.)1737;
	const c_int KEY_Cyrillic_i_macron = (.)16778467;
	const c_int KEY_Cyrillic_ie = (.)1733;
	const c_int KEY_Cyrillic_io = (.)1699;
	const c_int KEY_Cyrillic_je = (.)1704;
	const c_int KEY_Cyrillic_ka = (.)1739;
	const c_int KEY_Cyrillic_ka_descender = (.)16778395;
	const c_int KEY_Cyrillic_ka_vertstroke = (.)16778397;
	const c_int KEY_Cyrillic_lje = (.)1705;
	const c_int KEY_Cyrillic_nje = (.)1706;
	const c_int KEY_Cyrillic_o = (.)1743;
	const c_int KEY_Cyrillic_o_bar = (.)16778473;
	const c_int KEY_Cyrillic_pe = (.)1744;
	const c_int KEY_Cyrillic_schwa = (.)16778457;
	const c_int KEY_Cyrillic_sha = (.)1755;
	const c_int KEY_Cyrillic_shcha = (.)1757;
	const c_int KEY_Cyrillic_shha = (.)16778427;
	const c_int KEY_Cyrillic_shorti = (.)1738;
	const c_int KEY_Cyrillic_softsign = (.)1752;
	const c_int KEY_Cyrillic_te = (.)1748;
	const c_int KEY_Cyrillic_tse = (.)1731;
	const c_int KEY_Cyrillic_u = (.)1749;
	const c_int KEY_Cyrillic_u_macron = (.)16778479;
	const c_int KEY_Cyrillic_u_straight = (.)16778415;
	const c_int KEY_Cyrillic_u_straight_bar = (.)16778417;
	const c_int KEY_Cyrillic_ve = (.)1751;
	const c_int KEY_Cyrillic_ya = (.)1745;
	const c_int KEY_Cyrillic_yeru = (.)1753;
	const c_int KEY_Cyrillic_yu = (.)1728;
	const c_int KEY_Cyrillic_ze = (.)1754;
	const c_int KEY_Cyrillic_zhe = (.)1750;
	const c_int KEY_Cyrillic_zhe_descender = (.)16778391;
	const c_int KEY_D = (.)68;
	const c_int KEY_DOS = (.)269025114;
	const c_int KEY_Dabovedot = (.)16784906;
	const c_int KEY_Dcaron = (.)463;
	const c_int KEY_Delete = (.)65535;
	const c_int KEY_Display = (.)269025113;
	const c_int KEY_Documents = (.)269025115;
	const c_int KEY_DongSign = (.)16785579;
	const c_int KEY_Down = (.)65364;
	const c_int KEY_Dstroke = (.)464;
	const c_int KEY_E = (.)69;
	const c_int KEY_ENG = (.)957;
	const c_int KEY_ETH = (.)208;
	const c_int KEY_EZH = (.)16777655;
	const c_int KEY_Eabovedot = (.)972;
	const c_int KEY_Eacute = (.)201;
	const c_int KEY_Ebelowdot = (.)16785080;
	const c_int KEY_Ecaron = (.)460;
	const c_int KEY_Ecircumflex = (.)202;
	const c_int KEY_Ecircumflexacute = (.)16785086;
	const c_int KEY_Ecircumflexbelowdot = (.)16785094;
	const c_int KEY_Ecircumflexgrave = (.)16785088;
	const c_int KEY_Ecircumflexhook = (.)16785090;
	const c_int KEY_Ecircumflextilde = (.)16785092;
	const c_int KEY_EcuSign = (.)16785568;
	const c_int KEY_Ediaeresis = (.)203;
	const c_int KEY_Egrave = (.)200;
	const c_int KEY_Ehook = (.)16785082;
	const c_int KEY_Eisu_Shift = (.)65327;
	const c_int KEY_Eisu_toggle = (.)65328;
	const c_int KEY_Eject = (.)269025068;
	const c_int KEY_Emacron = (.)938;
	const c_int KEY_End = (.)65367;
	const c_int KEY_Eogonek = (.)458;
	const c_int KEY_Escape = (.)65307;
	const c_int KEY_Eth = (.)208;
	const c_int KEY_Etilde = (.)16785084;
	const c_int KEY_EuroSign = (.)8364;
	const c_int KEY_Excel = (.)269025116;
	const c_int KEY_Execute = (.)65378;
	const c_int KEY_Explorer = (.)269025117;
	const c_int KEY_F = (.)70;
	const c_int KEY_F1 = (.)65470;
	const c_int KEY_F10 = (.)65479;
	const c_int KEY_F11 = (.)65480;
	const c_int KEY_F12 = (.)65481;
	const c_int KEY_F13 = (.)65482;
	const c_int KEY_F14 = (.)65483;
	const c_int KEY_F15 = (.)65484;
	const c_int KEY_F16 = (.)65485;
	const c_int KEY_F17 = (.)65486;
	const c_int KEY_F18 = (.)65487;
	const c_int KEY_F19 = (.)65488;
	const c_int KEY_F2 = (.)65471;
	const c_int KEY_F20 = (.)65489;
	const c_int KEY_F21 = (.)65490;
	const c_int KEY_F22 = (.)65491;
	const c_int KEY_F23 = (.)65492;
	const c_int KEY_F24 = (.)65493;
	const c_int KEY_F25 = (.)65494;
	const c_int KEY_F26 = (.)65495;
	const c_int KEY_F27 = (.)65496;
	const c_int KEY_F28 = (.)65497;
	const c_int KEY_F29 = (.)65498;
	const c_int KEY_F3 = (.)65472;
	const c_int KEY_F30 = (.)65499;
	const c_int KEY_F31 = (.)65500;
	const c_int KEY_F32 = (.)65501;
	const c_int KEY_F33 = (.)65502;
	const c_int KEY_F34 = (.)65503;
	const c_int KEY_F35 = (.)65504;
	const c_int KEY_F4 = (.)65473;
	const c_int KEY_F5 = (.)65474;
	const c_int KEY_F6 = (.)65475;
	const c_int KEY_F7 = (.)65476;
	const c_int KEY_F8 = (.)65477;
	const c_int KEY_F9 = (.)65478;
	const c_int KEY_FFrancSign = (.)16785571;
	const c_int KEY_Fabovedot = (.)16784926;
	const c_int KEY_Farsi_0 = (.)16778992;
	const c_int KEY_Farsi_1 = (.)16778993;
	const c_int KEY_Farsi_2 = (.)16778994;
	const c_int KEY_Farsi_3 = (.)16778995;
	const c_int KEY_Farsi_4 = (.)16778996;
	const c_int KEY_Farsi_5 = (.)16778997;
	const c_int KEY_Farsi_6 = (.)16778998;
	const c_int KEY_Farsi_7 = (.)16778999;
	const c_int KEY_Farsi_8 = (.)16779000;
	const c_int KEY_Farsi_9 = (.)16779001;
	const c_int KEY_Farsi_yeh = (.)16778956;
	const c_int KEY_Favorites = (.)269025072;
	const c_int KEY_Finance = (.)269025084;
	const c_int KEY_Find = (.)65384;
	const c_int KEY_First_Virtual_Screen = (.)65232;
	const c_int KEY_Forward = (.)269025063;
	const c_int KEY_FrameBack = (.)269025181;
	const c_int KEY_FrameForward = (.)269025182;
	const c_int KEY_G = (.)71;
	const c_int KEY_Gabovedot = (.)725;
	const c_int KEY_Game = (.)269025118;
	const c_int KEY_Gbreve = (.)683;
	const c_int KEY_Gcaron = (.)16777702;
	const c_int KEY_Gcedilla = (.)939;
	const c_int KEY_Gcircumflex = (.)728;
	const c_int KEY_Georgian_an = (.)16781520;
	const c_int KEY_Georgian_ban = (.)16781521;
	const c_int KEY_Georgian_can = (.)16781546;
	const c_int KEY_Georgian_char = (.)16781549;
	const c_int KEY_Georgian_chin = (.)16781545;
	const c_int KEY_Georgian_cil = (.)16781548;
	const c_int KEY_Georgian_don = (.)16781523;
	const c_int KEY_Georgian_en = (.)16781524;
	const c_int KEY_Georgian_fi = (.)16781558;
	const c_int KEY_Georgian_gan = (.)16781522;
	const c_int KEY_Georgian_ghan = (.)16781542;
	const c_int KEY_Georgian_hae = (.)16781552;
	const c_int KEY_Georgian_har = (.)16781556;
	const c_int KEY_Georgian_he = (.)16781553;
	const c_int KEY_Georgian_hie = (.)16781554;
	const c_int KEY_Georgian_hoe = (.)16781557;
	const c_int KEY_Georgian_in = (.)16781528;
	const c_int KEY_Georgian_jhan = (.)16781551;
	const c_int KEY_Georgian_jil = (.)16781547;
	const c_int KEY_Georgian_kan = (.)16781529;
	const c_int KEY_Georgian_khar = (.)16781541;
	const c_int KEY_Georgian_las = (.)16781530;
	const c_int KEY_Georgian_man = (.)16781531;
	const c_int KEY_Georgian_nar = (.)16781532;
	const c_int KEY_Georgian_on = (.)16781533;
	const c_int KEY_Georgian_par = (.)16781534;
	const c_int KEY_Georgian_phar = (.)16781540;
	const c_int KEY_Georgian_qar = (.)16781543;
	const c_int KEY_Georgian_rae = (.)16781536;
	const c_int KEY_Georgian_san = (.)16781537;
	const c_int KEY_Georgian_shin = (.)16781544;
	const c_int KEY_Georgian_tan = (.)16781527;
	const c_int KEY_Georgian_tar = (.)16781538;
	const c_int KEY_Georgian_un = (.)16781539;
	const c_int KEY_Georgian_vin = (.)16781525;
	const c_int KEY_Georgian_we = (.)16781555;
	const c_int KEY_Georgian_xan = (.)16781550;
	const c_int KEY_Georgian_zen = (.)16781526;
	const c_int KEY_Georgian_zhar = (.)16781535;
	const c_int KEY_Go = (.)269025119;
	const c_int KEY_Greek_ALPHA = (.)1985;
	const c_int KEY_Greek_ALPHAaccent = (.)1953;
	const c_int KEY_Greek_BETA = (.)1986;
	const c_int KEY_Greek_CHI = (.)2007;
	const c_int KEY_Greek_DELTA = (.)1988;
	const c_int KEY_Greek_EPSILON = (.)1989;
	const c_int KEY_Greek_EPSILONaccent = (.)1954;
	const c_int KEY_Greek_ETA = (.)1991;
	const c_int KEY_Greek_ETAaccent = (.)1955;
	const c_int KEY_Greek_GAMMA = (.)1987;
	const c_int KEY_Greek_IOTA = (.)1993;
	const c_int KEY_Greek_IOTAaccent = (.)1956;
	const c_int KEY_Greek_IOTAdiaeresis = (.)1957;
	const c_int KEY_Greek_IOTAdieresis = (.)1957;
	const c_int KEY_Greek_KAPPA = (.)1994;
	const c_int KEY_Greek_LAMBDA = (.)1995;
	const c_int KEY_Greek_LAMDA = (.)1995;
	const c_int KEY_Greek_MU = (.)1996;
	const c_int KEY_Greek_NU = (.)1997;
	const c_int KEY_Greek_OMEGA = (.)2009;
	const c_int KEY_Greek_OMEGAaccent = (.)1963;
	const c_int KEY_Greek_OMICRON = (.)1999;
	const c_int KEY_Greek_OMICRONaccent = (.)1959;
	const c_int KEY_Greek_PHI = (.)2006;
	const c_int KEY_Greek_PI = (.)2000;
	const c_int KEY_Greek_PSI = (.)2008;
	const c_int KEY_Greek_RHO = (.)2001;
	const c_int KEY_Greek_SIGMA = (.)2002;
	const c_int KEY_Greek_TAU = (.)2004;
	const c_int KEY_Greek_THETA = (.)1992;
	const c_int KEY_Greek_UPSILON = (.)2005;
	const c_int KEY_Greek_UPSILONaccent = (.)1960;
	const c_int KEY_Greek_UPSILONdieresis = (.)1961;
	const c_int KEY_Greek_XI = (.)1998;
	const c_int KEY_Greek_ZETA = (.)1990;
	const c_int KEY_Greek_accentdieresis = (.)1966;
	const c_int KEY_Greek_alpha = (.)2017;
	const c_int KEY_Greek_alphaaccent = (.)1969;
	const c_int KEY_Greek_beta = (.)2018;
	const c_int KEY_Greek_chi = (.)2039;
	const c_int KEY_Greek_delta = (.)2020;
	const c_int KEY_Greek_epsilon = (.)2021;
	const c_int KEY_Greek_epsilonaccent = (.)1970;
	const c_int KEY_Greek_eta = (.)2023;
	const c_int KEY_Greek_etaaccent = (.)1971;
	const c_int KEY_Greek_finalsmallsigma = (.)2035;
	const c_int KEY_Greek_gamma = (.)2019;
	const c_int KEY_Greek_horizbar = (.)1967;
	const c_int KEY_Greek_iota = (.)2025;
	const c_int KEY_Greek_iotaaccent = (.)1972;
	const c_int KEY_Greek_iotaaccentdieresis = (.)1974;
	const c_int KEY_Greek_iotadieresis = (.)1973;
	const c_int KEY_Greek_kappa = (.)2026;
	const c_int KEY_Greek_lambda = (.)2027;
	const c_int KEY_Greek_lamda = (.)2027;
	const c_int KEY_Greek_mu = (.)2028;
	const c_int KEY_Greek_nu = (.)2029;
	const c_int KEY_Greek_omega = (.)2041;
	const c_int KEY_Greek_omegaaccent = (.)1979;
	const c_int KEY_Greek_omicron = (.)2031;
	const c_int KEY_Greek_omicronaccent = (.)1975;
	const c_int KEY_Greek_phi = (.)2038;
	const c_int KEY_Greek_pi = (.)2032;
	const c_int KEY_Greek_psi = (.)2040;
	const c_int KEY_Greek_rho = (.)2033;
	const c_int KEY_Greek_sigma = (.)2034;
	const c_int KEY_Greek_switch = (.)65406;
	const c_int KEY_Greek_tau = (.)2036;
	const c_int KEY_Greek_theta = (.)2024;
	const c_int KEY_Greek_upsilon = (.)2037;
	const c_int KEY_Greek_upsilonaccent = (.)1976;
	const c_int KEY_Greek_upsilonaccentdieresis = (.)1978;
	const c_int KEY_Greek_upsilondieresis = (.)1977;
	const c_int KEY_Greek_xi = (.)2030;
	const c_int KEY_Greek_zeta = (.)2022;
	const c_int KEY_Green = (.)269025188;
	const c_int KEY_H = (.)72;
	const c_int KEY_Hangul = (.)65329;
	const c_int KEY_Hangul_A = (.)3775;
	const c_int KEY_Hangul_AE = (.)3776;
	const c_int KEY_Hangul_AraeA = (.)3830;
	const c_int KEY_Hangul_AraeAE = (.)3831;
	const c_int KEY_Hangul_Banja = (.)65337;
	const c_int KEY_Hangul_Cieuc = (.)3770;
	const c_int KEY_Hangul_Codeinput = (.)65335;
	const c_int KEY_Hangul_Dikeud = (.)3751;
	const c_int KEY_Hangul_E = (.)3780;
	const c_int KEY_Hangul_EO = (.)3779;
	const c_int KEY_Hangul_EU = (.)3793;
	const c_int KEY_Hangul_End = (.)65331;
	const c_int KEY_Hangul_Hanja = (.)65332;
	const c_int KEY_Hangul_Hieuh = (.)3774;
	const c_int KEY_Hangul_I = (.)3795;
	const c_int KEY_Hangul_Ieung = (.)3767;
	const c_int KEY_Hangul_J_Cieuc = (.)3818;
	const c_int KEY_Hangul_J_Dikeud = (.)3802;
	const c_int KEY_Hangul_J_Hieuh = (.)3822;
	const c_int KEY_Hangul_J_Ieung = (.)3816;
	const c_int KEY_Hangul_J_Jieuj = (.)3817;
	const c_int KEY_Hangul_J_Khieuq = (.)3819;
	const c_int KEY_Hangul_J_Kiyeog = (.)3796;
	const c_int KEY_Hangul_J_KiyeogSios = (.)3798;
	const c_int KEY_Hangul_J_KkogjiDalrinIeung = (.)3833;
	const c_int KEY_Hangul_J_Mieum = (.)3811;
	const c_int KEY_Hangul_J_Nieun = (.)3799;
	const c_int KEY_Hangul_J_NieunHieuh = (.)3801;
	const c_int KEY_Hangul_J_NieunJieuj = (.)3800;
	const c_int KEY_Hangul_J_PanSios = (.)3832;
	const c_int KEY_Hangul_J_Phieuf = (.)3821;
	const c_int KEY_Hangul_J_Pieub = (.)3812;
	const c_int KEY_Hangul_J_PieubSios = (.)3813;
	const c_int KEY_Hangul_J_Rieul = (.)3803;
	const c_int KEY_Hangul_J_RieulHieuh = (.)3810;
	const c_int KEY_Hangul_J_RieulKiyeog = (.)3804;
	const c_int KEY_Hangul_J_RieulMieum = (.)3805;
	const c_int KEY_Hangul_J_RieulPhieuf = (.)3809;
	const c_int KEY_Hangul_J_RieulPieub = (.)3806;
	const c_int KEY_Hangul_J_RieulSios = (.)3807;
	const c_int KEY_Hangul_J_RieulTieut = (.)3808;
	const c_int KEY_Hangul_J_Sios = (.)3814;
	const c_int KEY_Hangul_J_SsangKiyeog = (.)3797;
	const c_int KEY_Hangul_J_SsangSios = (.)3815;
	const c_int KEY_Hangul_J_Tieut = (.)3820;
	const c_int KEY_Hangul_J_YeorinHieuh = (.)3834;
	const c_int KEY_Hangul_Jamo = (.)65333;
	const c_int KEY_Hangul_Jeonja = (.)65336;
	const c_int KEY_Hangul_Jieuj = (.)3768;
	const c_int KEY_Hangul_Khieuq = (.)3771;
	const c_int KEY_Hangul_Kiyeog = (.)3745;
	const c_int KEY_Hangul_KiyeogSios = (.)3747;
	const c_int KEY_Hangul_KkogjiDalrinIeung = (.)3827;
	const c_int KEY_Hangul_Mieum = (.)3761;
	const c_int KEY_Hangul_MultipleCandidate = (.)65341;
	const c_int KEY_Hangul_Nieun = (.)3748;
	const c_int KEY_Hangul_NieunHieuh = (.)3750;
	const c_int KEY_Hangul_NieunJieuj = (.)3749;
	const c_int KEY_Hangul_O = (.)3783;
	const c_int KEY_Hangul_OE = (.)3786;
	const c_int KEY_Hangul_PanSios = (.)3826;
	const c_int KEY_Hangul_Phieuf = (.)3773;
	const c_int KEY_Hangul_Pieub = (.)3762;
	const c_int KEY_Hangul_PieubSios = (.)3764;
	const c_int KEY_Hangul_PostHanja = (.)65339;
	const c_int KEY_Hangul_PreHanja = (.)65338;
	const c_int KEY_Hangul_PreviousCandidate = (.)65342;
	const c_int KEY_Hangul_Rieul = (.)3753;
	const c_int KEY_Hangul_RieulHieuh = (.)3760;
	const c_int KEY_Hangul_RieulKiyeog = (.)3754;
	const c_int KEY_Hangul_RieulMieum = (.)3755;
	const c_int KEY_Hangul_RieulPhieuf = (.)3759;
	const c_int KEY_Hangul_RieulPieub = (.)3756;
	const c_int KEY_Hangul_RieulSios = (.)3757;
	const c_int KEY_Hangul_RieulTieut = (.)3758;
	const c_int KEY_Hangul_RieulYeorinHieuh = (.)3823;
	const c_int KEY_Hangul_Romaja = (.)65334;
	const c_int KEY_Hangul_SingleCandidate = (.)65340;
	const c_int KEY_Hangul_Sios = (.)3765;
	const c_int KEY_Hangul_Special = (.)65343;
	const c_int KEY_Hangul_SsangDikeud = (.)3752;
	const c_int KEY_Hangul_SsangJieuj = (.)3769;
	const c_int KEY_Hangul_SsangKiyeog = (.)3746;
	const c_int KEY_Hangul_SsangPieub = (.)3763;
	const c_int KEY_Hangul_SsangSios = (.)3766;
	const c_int KEY_Hangul_Start = (.)65330;
	const c_int KEY_Hangul_SunkyeongeumMieum = (.)3824;
	const c_int KEY_Hangul_SunkyeongeumPhieuf = (.)3828;
	const c_int KEY_Hangul_SunkyeongeumPieub = (.)3825;
	const c_int KEY_Hangul_Tieut = (.)3772;
	const c_int KEY_Hangul_U = (.)3788;
	const c_int KEY_Hangul_WA = (.)3784;
	const c_int KEY_Hangul_WAE = (.)3785;
	const c_int KEY_Hangul_WE = (.)3790;
	const c_int KEY_Hangul_WEO = (.)3789;
	const c_int KEY_Hangul_WI = (.)3791;
	const c_int KEY_Hangul_YA = (.)3777;
	const c_int KEY_Hangul_YAE = (.)3778;
	const c_int KEY_Hangul_YE = (.)3782;
	const c_int KEY_Hangul_YEO = (.)3781;
	const c_int KEY_Hangul_YI = (.)3794;
	const c_int KEY_Hangul_YO = (.)3787;
	const c_int KEY_Hangul_YU = (.)3792;
	const c_int KEY_Hangul_YeorinHieuh = (.)3829;
	const c_int KEY_Hangul_switch = (.)65406;
	const c_int KEY_Hankaku = (.)65321;
	const c_int KEY_Hcircumflex = (.)678;
	const c_int KEY_Hebrew_switch = (.)65406;
	const c_int KEY_Help = (.)65386;
	const c_int KEY_Henkan = (.)65315;
	const c_int KEY_Henkan_Mode = (.)65315;
	const c_int KEY_Hibernate = (.)269025192;
	const c_int KEY_Hiragana = (.)65317;
	const c_int KEY_Hiragana_Katakana = (.)65319;
	const c_int KEY_History = (.)269025079;
	const c_int KEY_Home = (.)65360;
	const c_int KEY_HomePage = (.)269025048;
	const c_int KEY_HotLinks = (.)269025082;
	const c_int KEY_Hstroke = (.)673;
	const c_int KEY_Hyper_L = (.)65517;
	const c_int KEY_Hyper_R = (.)65518;
	const c_int KEY_I = (.)73;
	const c_int KEY_ISO_Center_Object = (.)65075;
	const c_int KEY_ISO_Continuous_Underline = (.)65072;
	const c_int KEY_ISO_Discontinuous_Underline = (.)65073;
	const c_int KEY_ISO_Emphasize = (.)65074;
	const c_int KEY_ISO_Enter = (.)65076;
	const c_int KEY_ISO_Fast_Cursor_Down = (.)65071;
	const c_int KEY_ISO_Fast_Cursor_Left = (.)65068;
	const c_int KEY_ISO_Fast_Cursor_Right = (.)65069;
	const c_int KEY_ISO_Fast_Cursor_Up = (.)65070;
	const c_int KEY_ISO_First_Group = (.)65036;
	const c_int KEY_ISO_First_Group_Lock = (.)65037;
	const c_int KEY_ISO_Group_Latch = (.)65030;
	const c_int KEY_ISO_Group_Lock = (.)65031;
	const c_int KEY_ISO_Group_Shift = (.)65406;
	const c_int KEY_ISO_Last_Group = (.)65038;
	const c_int KEY_ISO_Last_Group_Lock = (.)65039;
	const c_int KEY_ISO_Left_Tab = (.)65056;
	const c_int KEY_ISO_Level2_Latch = (.)65026;
	const c_int KEY_ISO_Level3_Latch = (.)65028;
	const c_int KEY_ISO_Level3_Lock = (.)65029;
	const c_int KEY_ISO_Level3_Shift = (.)65027;
	const c_int KEY_ISO_Level5_Latch = (.)65042;
	const c_int KEY_ISO_Level5_Lock = (.)65043;
	const c_int KEY_ISO_Level5_Shift = (.)65041;
	const c_int KEY_ISO_Lock = (.)65025;
	const c_int KEY_ISO_Move_Line_Down = (.)65058;
	const c_int KEY_ISO_Move_Line_Up = (.)65057;
	const c_int KEY_ISO_Next_Group = (.)65032;
	const c_int KEY_ISO_Next_Group_Lock = (.)65033;
	const c_int KEY_ISO_Partial_Line_Down = (.)65060;
	const c_int KEY_ISO_Partial_Line_Up = (.)65059;
	const c_int KEY_ISO_Partial_Space_Left = (.)65061;
	const c_int KEY_ISO_Partial_Space_Right = (.)65062;
	const c_int KEY_ISO_Prev_Group = (.)65034;
	const c_int KEY_ISO_Prev_Group_Lock = (.)65035;
	const c_int KEY_ISO_Release_Both_Margins = (.)65067;
	const c_int KEY_ISO_Release_Margin_Left = (.)65065;
	const c_int KEY_ISO_Release_Margin_Right = (.)65066;
	const c_int KEY_ISO_Set_Margin_Left = (.)65063;
	const c_int KEY_ISO_Set_Margin_Right = (.)65064;
	const c_int KEY_Iabovedot = (.)681;
	const c_int KEY_Iacute = (.)205;
	const c_int KEY_Ibelowdot = (.)16785098;
	const c_int KEY_Ibreve = (.)16777516;
	const c_int KEY_Icircumflex = (.)206;
	const c_int KEY_Idiaeresis = (.)207;
	const c_int KEY_Igrave = (.)204;
	const c_int KEY_Ihook = (.)16785096;
	const c_int KEY_Imacron = (.)975;
	const c_int KEY_Insert = (.)65379;
	const c_int KEY_Iogonek = (.)967;
	const c_int KEY_Itilde = (.)933;
	const c_int KEY_J = (.)74;
	const c_int KEY_Jcircumflex = (.)684;
	const c_int KEY_K = (.)75;
	const c_int KEY_KP_0 = (.)65456;
	const c_int KEY_KP_1 = (.)65457;
	const c_int KEY_KP_2 = (.)65458;
	const c_int KEY_KP_3 = (.)65459;
	const c_int KEY_KP_4 = (.)65460;
	const c_int KEY_KP_5 = (.)65461;
	const c_int KEY_KP_6 = (.)65462;
	const c_int KEY_KP_7 = (.)65463;
	const c_int KEY_KP_8 = (.)65464;
	const c_int KEY_KP_9 = (.)65465;
	const c_int KEY_KP_Add = (.)65451;
	const c_int KEY_KP_Begin = (.)65437;
	const c_int KEY_KP_Decimal = (.)65454;
	const c_int KEY_KP_Delete = (.)65439;
	const c_int KEY_KP_Divide = (.)65455;
	const c_int KEY_KP_Down = (.)65433;
	const c_int KEY_KP_End = (.)65436;
	const c_int KEY_KP_Enter = (.)65421;
	const c_int KEY_KP_Equal = (.)65469;
	const c_int KEY_KP_F1 = (.)65425;
	const c_int KEY_KP_F2 = (.)65426;
	const c_int KEY_KP_F3 = (.)65427;
	const c_int KEY_KP_F4 = (.)65428;
	const c_int KEY_KP_Home = (.)65429;
	const c_int KEY_KP_Insert = (.)65438;
	const c_int KEY_KP_Left = (.)65430;
	const c_int KEY_KP_Multiply = (.)65450;
	const c_int KEY_KP_Next = (.)65435;
	const c_int KEY_KP_Page_Down = (.)65435;
	const c_int KEY_KP_Page_Up = (.)65434;
	const c_int KEY_KP_Prior = (.)65434;
	const c_int KEY_KP_Right = (.)65432;
	const c_int KEY_KP_Separator = (.)65452;
	const c_int KEY_KP_Space = (.)65408;
	const c_int KEY_KP_Subtract = (.)65453;
	const c_int KEY_KP_Tab = (.)65417;
	const c_int KEY_KP_Up = (.)65431;
	const c_int KEY_Kana_Lock = (.)65325;
	const c_int KEY_Kana_Shift = (.)65326;
	const c_int KEY_Kanji = (.)65313;
	const c_int KEY_Kanji_Bangou = (.)65335;
	const c_int KEY_Katakana = (.)65318;
	const c_int KEY_KbdBrightnessDown = (.)269025030;
	const c_int KEY_KbdBrightnessUp = (.)269025029;
	const c_int KEY_KbdLightOnOff = (.)269025028;
	const c_int KEY_Kcedilla = (.)979;
	const c_int KEY_Keyboard = (.)269025203;
	const c_int KEY_Korean_Won = (.)3839;
	const c_int KEY_L = (.)76;
	const c_int KEY_L1 = (.)65480;
	const c_int KEY_L10 = (.)65489;
	const c_int KEY_L2 = (.)65481;
	const c_int KEY_L3 = (.)65482;
	const c_int KEY_L4 = (.)65483;
	const c_int KEY_L5 = (.)65484;
	const c_int KEY_L6 = (.)65485;
	const c_int KEY_L7 = (.)65486;
	const c_int KEY_L8 = (.)65487;
	const c_int KEY_L9 = (.)65488;
	const c_int KEY_Lacute = (.)453;
	const c_int KEY_Last_Virtual_Screen = (.)65236;
	const c_int KEY_Launch0 = (.)269025088;
	const c_int KEY_Launch1 = (.)269025089;
	const c_int KEY_Launch2 = (.)269025090;
	const c_int KEY_Launch3 = (.)269025091;
	const c_int KEY_Launch4 = (.)269025092;
	const c_int KEY_Launch5 = (.)269025093;
	const c_int KEY_Launch6 = (.)269025094;
	const c_int KEY_Launch7 = (.)269025095;
	const c_int KEY_Launch8 = (.)269025096;
	const c_int KEY_Launch9 = (.)269025097;
	const c_int KEY_LaunchA = (.)269025098;
	const c_int KEY_LaunchB = (.)269025099;
	const c_int KEY_LaunchC = (.)269025100;
	const c_int KEY_LaunchD = (.)269025101;
	const c_int KEY_LaunchE = (.)269025102;
	const c_int KEY_LaunchF = (.)269025103;
	const c_int KEY_Lbelowdot = (.)16784950;
	const c_int KEY_Lcaron = (.)421;
	const c_int KEY_Lcedilla = (.)934;
	const c_int KEY_Left = (.)65361;
	const c_int KEY_LightBulb = (.)269025077;
	const c_int KEY_Linefeed = (.)65290;
	const c_int KEY_LiraSign = (.)16785572;
	const c_int KEY_LogGrabInfo = (.)269024805;
	const c_int KEY_LogOff = (.)269025121;
	const c_int KEY_LogWindowTree = (.)269024804;
	const c_int KEY_Lstroke = (.)419;
	const c_int KEY_M = (.)77;
	const c_int KEY_Mabovedot = (.)16784960;
	const c_int KEY_Macedonia_DSE = (.)1717;
	const c_int KEY_Macedonia_GJE = (.)1714;
	const c_int KEY_Macedonia_KJE = (.)1724;
	const c_int KEY_Macedonia_dse = (.)1701;
	const c_int KEY_Macedonia_gje = (.)1698;
	const c_int KEY_Macedonia_kje = (.)1708;
	const c_int KEY_Mae_Koho = (.)65342;
	const c_int KEY_Mail = (.)269025049;
	const c_int KEY_MailForward = (.)269025168;
	const c_int KEY_Market = (.)269025122;
	const c_int KEY_Massyo = (.)65324;
	const c_int KEY_Meeting = (.)269025123;
	const c_int KEY_Memo = (.)269025054;
	const c_int KEY_Menu = (.)65383;
	const c_int KEY_MenuKB = (.)269025125;
	const c_int KEY_MenuPB = (.)269025126;
	const c_int KEY_Messenger = (.)269025166;
	const c_int KEY_Meta_L = (.)65511;
	const c_int KEY_Meta_R = (.)65512;
	const c_int KEY_MillSign = (.)16785573;
	const c_int KEY_ModeLock = (.)269025025;
	const c_int KEY_Mode_switch = (.)65406;
	const c_int KEY_MonBrightnessDown = (.)269025027;
	const c_int KEY_MonBrightnessUp = (.)269025026;
	const c_int KEY_MouseKeys_Accel_Enable = (.)65143;
	const c_int KEY_MouseKeys_Enable = (.)65142;
	const c_int KEY_Muhenkan = (.)65314;
	const c_int KEY_Multi_key = (.)65312;
	const c_int KEY_MultipleCandidate = (.)65341;
	const c_int KEY_Music = (.)269025170;
	const c_int KEY_MyComputer = (.)269025075;
	const c_int KEY_MySites = (.)269025127;
	const c_int KEY_N = (.)78;
	const c_int KEY_Nacute = (.)465;
	const c_int KEY_NairaSign = (.)16785574;
	const c_int KEY_Ncaron = (.)466;
	const c_int KEY_Ncedilla = (.)977;
	const c_int KEY_New = (.)269025128;
	const c_int KEY_NewSheqelSign = (.)16785578;
	const c_int KEY_News = (.)269025129;
	const c_int KEY_Next = (.)65366;
	const c_int KEY_Next_VMode = (.)269024802;
	const c_int KEY_Next_Virtual_Screen = (.)65234;
	const c_int KEY_Ntilde = (.)209;
	const c_int KEY_Num_Lock = (.)65407;
	const c_int KEY_O = (.)79;
	const c_int KEY_OE = (.)5052;
	const c_int KEY_Oacute = (.)211;
	const c_int KEY_Obarred = (.)16777631;
	const c_int KEY_Obelowdot = (.)16785100;
	const c_int KEY_Ocaron = (.)16777681;
	const c_int KEY_Ocircumflex = (.)212;
	const c_int KEY_Ocircumflexacute = (.)16785104;
	const c_int KEY_Ocircumflexbelowdot = (.)16785112;
	const c_int KEY_Ocircumflexgrave = (.)16785106;
	const c_int KEY_Ocircumflexhook = (.)16785108;
	const c_int KEY_Ocircumflextilde = (.)16785110;
	const c_int KEY_Odiaeresis = (.)214;
	const c_int KEY_Odoubleacute = (.)469;
	const c_int KEY_OfficeHome = (.)269025130;
	const c_int KEY_Ograve = (.)210;
	const c_int KEY_Ohook = (.)16785102;
	const c_int KEY_Ohorn = (.)16777632;
	const c_int KEY_Ohornacute = (.)16785114;
	const c_int KEY_Ohornbelowdot = (.)16785122;
	const c_int KEY_Ohorngrave = (.)16785116;
	const c_int KEY_Ohornhook = (.)16785118;
	const c_int KEY_Ohorntilde = (.)16785120;
	const c_int KEY_Omacron = (.)978;
	const c_int KEY_Ooblique = (.)216;
	const c_int KEY_Open = (.)269025131;
	const c_int KEY_OpenURL = (.)269025080;
	const c_int KEY_Option = (.)269025132;
	const c_int KEY_Oslash = (.)216;
	const c_int KEY_Otilde = (.)213;
	const c_int KEY_Overlay1_Enable = (.)65144;
	const c_int KEY_Overlay2_Enable = (.)65145;
	const c_int KEY_P = (.)80;
	const c_int KEY_Pabovedot = (.)16784982;
	const c_int KEY_Page_Down = (.)65366;
	const c_int KEY_Page_Up = (.)65365;
	const c_int KEY_Paste = (.)269025133;
	const c_int KEY_Pause = (.)65299;
	const c_int KEY_PesetaSign = (.)16785575;
	const c_int KEY_Phone = (.)269025134;
	const c_int KEY_Pictures = (.)269025169;
	const c_int KEY_Pointer_Accelerate = (.)65274;
	const c_int KEY_Pointer_Button1 = (.)65257;
	const c_int KEY_Pointer_Button2 = (.)65258;
	const c_int KEY_Pointer_Button3 = (.)65259;
	const c_int KEY_Pointer_Button4 = (.)65260;
	const c_int KEY_Pointer_Button5 = (.)65261;
	const c_int KEY_Pointer_Button_Dflt = (.)65256;
	const c_int KEY_Pointer_DblClick1 = (.)65263;
	const c_int KEY_Pointer_DblClick2 = (.)65264;
	const c_int KEY_Pointer_DblClick3 = (.)65265;
	const c_int KEY_Pointer_DblClick4 = (.)65266;
	const c_int KEY_Pointer_DblClick5 = (.)65267;
	const c_int KEY_Pointer_DblClick_Dflt = (.)65262;
	const c_int KEY_Pointer_DfltBtnNext = (.)65275;
	const c_int KEY_Pointer_DfltBtnPrev = (.)65276;
	const c_int KEY_Pointer_Down = (.)65251;
	const c_int KEY_Pointer_DownLeft = (.)65254;
	const c_int KEY_Pointer_DownRight = (.)65255;
	const c_int KEY_Pointer_Drag1 = (.)65269;
	const c_int KEY_Pointer_Drag2 = (.)65270;
	const c_int KEY_Pointer_Drag3 = (.)65271;
	const c_int KEY_Pointer_Drag4 = (.)65272;
	const c_int KEY_Pointer_Drag5 = (.)65277;
	const c_int KEY_Pointer_Drag_Dflt = (.)65268;
	const c_int KEY_Pointer_EnableKeys = (.)65273;
	const c_int KEY_Pointer_Left = (.)65248;
	const c_int KEY_Pointer_Right = (.)65249;
	const c_int KEY_Pointer_Up = (.)65250;
	const c_int KEY_Pointer_UpLeft = (.)65252;
	const c_int KEY_Pointer_UpRight = (.)65253;
	const c_int KEY_PowerDown = (.)269025057;
	const c_int KEY_PowerOff = (.)269025066;
	const c_int KEY_Prev_VMode = (.)269024803;
	const c_int KEY_Prev_Virtual_Screen = (.)65233;
	const c_int KEY_PreviousCandidate = (.)65342;
	const c_int KEY_Print = (.)65377;
	const c_int KEY_Prior = (.)65365;
	const c_int KEY_Q = (.)81;
	const c_int KEY_R = (.)82;
	const c_int KEY_R1 = (.)65490;
	const c_int KEY_R10 = (.)65499;
	const c_int KEY_R11 = (.)65500;
	const c_int KEY_R12 = (.)65501;
	const c_int KEY_R13 = (.)65502;
	const c_int KEY_R14 = (.)65503;
	const c_int KEY_R15 = (.)65504;
	const c_int KEY_R2 = (.)65491;
	const c_int KEY_R3 = (.)65492;
	const c_int KEY_R4 = (.)65493;
	const c_int KEY_R5 = (.)65494;
	const c_int KEY_R6 = (.)65495;
	const c_int KEY_R7 = (.)65496;
	const c_int KEY_R8 = (.)65497;
	const c_int KEY_R9 = (.)65498;
	const c_int KEY_RFKill = (.)269025205;
	const c_int KEY_Racute = (.)448;
	const c_int KEY_Rcaron = (.)472;
	const c_int KEY_Rcedilla = (.)931;
	const c_int KEY_Red = (.)269025187;
	const c_int KEY_Redo = (.)65382;
	const c_int KEY_Refresh = (.)269025065;
	const c_int KEY_Reload = (.)269025139;
	const c_int KEY_RepeatKeys_Enable = (.)65138;
	const c_int KEY_Reply = (.)269025138;
	const c_int KEY_Return = (.)65293;
	const c_int KEY_Right = (.)65363;
	const c_int KEY_RockerDown = (.)269025060;
	const c_int KEY_RockerEnter = (.)269025061;
	const c_int KEY_RockerUp = (.)269025059;
	const c_int KEY_Romaji = (.)65316;
	const c_int KEY_RotateWindows = (.)269025140;
	const c_int KEY_RotationKB = (.)269025142;
	const c_int KEY_RotationPB = (.)269025141;
	const c_int KEY_RupeeSign = (.)16785576;
	const c_int KEY_S = (.)83;
	const c_int KEY_SCHWA = (.)16777615;
	const c_int KEY_Sabovedot = (.)16784992;
	const c_int KEY_Sacute = (.)422;
	const c_int KEY_Save = (.)269025143;
	const c_int KEY_Scaron = (.)425;
	const c_int KEY_Scedilla = (.)426;
	const c_int KEY_Scircumflex = (.)734;
	const c_int KEY_ScreenSaver = (.)269025069;
	const c_int KEY_ScrollClick = (.)269025146;
	const c_int KEY_ScrollDown = (.)269025145;
	const c_int KEY_ScrollUp = (.)269025144;
	const c_int KEY_Scroll_Lock = (.)65300;
	const c_int KEY_Search = (.)269025051;
	const c_int KEY_Select = (.)65376;
	const c_int KEY_SelectButton = (.)269025184;
	const c_int KEY_Send = (.)269025147;
	const c_int KEY_Serbian_DJE = (.)1713;
	const c_int KEY_Serbian_DZE = (.)1727;
	const c_int KEY_Serbian_JE = (.)1720;
	const c_int KEY_Serbian_LJE = (.)1721;
	const c_int KEY_Serbian_NJE = (.)1722;
	const c_int KEY_Serbian_TSHE = (.)1723;
	const c_int KEY_Serbian_dje = (.)1697;
	const c_int KEY_Serbian_dze = (.)1711;
	const c_int KEY_Serbian_je = (.)1704;
	const c_int KEY_Serbian_lje = (.)1705;
	const c_int KEY_Serbian_nje = (.)1706;
	const c_int KEY_Serbian_tshe = (.)1707;
	const c_int KEY_Shift_L = (.)65505;
	const c_int KEY_Shift_Lock = (.)65510;
	const c_int KEY_Shift_R = (.)65506;
	const c_int KEY_Shop = (.)269025078;
	const c_int KEY_SingleCandidate = (.)65340;
	const c_int KEY_Sinh_a = (.)16780677;
	const c_int KEY_Sinh_aa = (.)16780678;
	const c_int KEY_Sinh_aa2 = (.)16780751;
	const c_int KEY_Sinh_ae = (.)16780679;
	const c_int KEY_Sinh_ae2 = (.)16780752;
	const c_int KEY_Sinh_aee = (.)16780680;
	const c_int KEY_Sinh_aee2 = (.)16780753;
	const c_int KEY_Sinh_ai = (.)16780691;
	const c_int KEY_Sinh_ai2 = (.)16780763;
	const c_int KEY_Sinh_al = (.)16780746;
	const c_int KEY_Sinh_au = (.)16780694;
	const c_int KEY_Sinh_au2 = (.)16780766;
	const c_int KEY_Sinh_ba = (.)16780726;
	const c_int KEY_Sinh_bha = (.)16780727;
	const c_int KEY_Sinh_ca = (.)16780704;
	const c_int KEY_Sinh_cha = (.)16780705;
	const c_int KEY_Sinh_dda = (.)16780713;
	const c_int KEY_Sinh_ddha = (.)16780714;
	const c_int KEY_Sinh_dha = (.)16780719;
	const c_int KEY_Sinh_dhha = (.)16780720;
	const c_int KEY_Sinh_e = (.)16780689;
	const c_int KEY_Sinh_e2 = (.)16780761;
	const c_int KEY_Sinh_ee = (.)16780690;
	const c_int KEY_Sinh_ee2 = (.)16780762;
	const c_int KEY_Sinh_fa = (.)16780742;
	const c_int KEY_Sinh_ga = (.)16780700;
	const c_int KEY_Sinh_gha = (.)16780701;
	const c_int KEY_Sinh_h2 = (.)16780675;
	const c_int KEY_Sinh_ha = (.)16780740;
	const c_int KEY_Sinh_i = (.)16780681;
	const c_int KEY_Sinh_i2 = (.)16780754;
	const c_int KEY_Sinh_ii = (.)16780682;
	const c_int KEY_Sinh_ii2 = (.)16780755;
	const c_int KEY_Sinh_ja = (.)16780706;
	const c_int KEY_Sinh_jha = (.)16780707;
	const c_int KEY_Sinh_jnya = (.)16780709;
	const c_int KEY_Sinh_ka = (.)16780698;
	const c_int KEY_Sinh_kha = (.)16780699;
	const c_int KEY_Sinh_kunddaliya = (.)16780788;
	const c_int KEY_Sinh_la = (.)16780733;
	const c_int KEY_Sinh_lla = (.)16780741;
	const c_int KEY_Sinh_lu = (.)16780687;
	const c_int KEY_Sinh_lu2 = (.)16780767;
	const c_int KEY_Sinh_luu = (.)16780688;
	const c_int KEY_Sinh_luu2 = (.)16780787;
	const c_int KEY_Sinh_ma = (.)16780728;
	const c_int KEY_Sinh_mba = (.)16780729;
	const c_int KEY_Sinh_na = (.)16780721;
	const c_int KEY_Sinh_ndda = (.)16780716;
	const c_int KEY_Sinh_ndha = (.)16780723;
	const c_int KEY_Sinh_ng = (.)16780674;
	const c_int KEY_Sinh_ng2 = (.)16780702;
	const c_int KEY_Sinh_nga = (.)16780703;
	const c_int KEY_Sinh_nja = (.)16780710;
	const c_int KEY_Sinh_nna = (.)16780715;
	const c_int KEY_Sinh_nya = (.)16780708;
	const c_int KEY_Sinh_o = (.)16780692;
	const c_int KEY_Sinh_o2 = (.)16780764;
	const c_int KEY_Sinh_oo = (.)16780693;
	const c_int KEY_Sinh_oo2 = (.)16780765;
	const c_int KEY_Sinh_pa = (.)16780724;
	const c_int KEY_Sinh_pha = (.)16780725;
	const c_int KEY_Sinh_ra = (.)16780731;
	const c_int KEY_Sinh_ri = (.)16780685;
	const c_int KEY_Sinh_rii = (.)16780686;
	const c_int KEY_Sinh_ru2 = (.)16780760;
	const c_int KEY_Sinh_ruu2 = (.)16780786;
	const c_int KEY_Sinh_sa = (.)16780739;
	const c_int KEY_Sinh_sha = (.)16780737;
	const c_int KEY_Sinh_ssha = (.)16780738;
	const c_int KEY_Sinh_tha = (.)16780717;
	const c_int KEY_Sinh_thha = (.)16780718;
	const c_int KEY_Sinh_tta = (.)16780711;
	const c_int KEY_Sinh_ttha = (.)16780712;
	const c_int KEY_Sinh_u = (.)16780683;
	const c_int KEY_Sinh_u2 = (.)16780756;
	const c_int KEY_Sinh_uu = (.)16780684;
	const c_int KEY_Sinh_uu2 = (.)16780758;
	const c_int KEY_Sinh_va = (.)16780736;
	const c_int KEY_Sinh_ya = (.)16780730;
	const c_int KEY_Sleep = (.)269025071;
	const c_int KEY_SlowKeys_Enable = (.)65139;
	const c_int KEY_Spell = (.)269025148;
	const c_int KEY_SplitScreen = (.)269025149;
	const c_int KEY_Standby = (.)269025040;
	const c_int KEY_Start = (.)269025050;
	const c_int KEY_StickyKeys_Enable = (.)65141;
	const c_int KEY_Stop = (.)269025064;
	const c_int KEY_Subtitle = (.)269025178;
	const c_int KEY_Super_L = (.)65515;
	const c_int KEY_Super_R = (.)65516;
	const c_int KEY_Support = (.)269025150;
	const c_int KEY_Suspend = (.)269025191;
	const c_int KEY_Switch_VT_1 = (.)269024769;
	const c_int KEY_Switch_VT_10 = (.)269024778;
	const c_int KEY_Switch_VT_11 = (.)269024779;
	const c_int KEY_Switch_VT_12 = (.)269024780;
	const c_int KEY_Switch_VT_2 = (.)269024770;
	const c_int KEY_Switch_VT_3 = (.)269024771;
	const c_int KEY_Switch_VT_4 = (.)269024772;
	const c_int KEY_Switch_VT_5 = (.)269024773;
	const c_int KEY_Switch_VT_6 = (.)269024774;
	const c_int KEY_Switch_VT_7 = (.)269024775;
	const c_int KEY_Switch_VT_8 = (.)269024776;
	const c_int KEY_Switch_VT_9 = (.)269024777;
	const c_int KEY_Sys_Req = (.)65301;
	const c_int KEY_T = (.)84;
	const c_int KEY_THORN = (.)222;
	const c_int KEY_Tab = (.)65289;
	const c_int KEY_Tabovedot = (.)16785002;
	const c_int KEY_TaskPane = (.)269025151;
	const c_int KEY_Tcaron = (.)427;
	const c_int KEY_Tcedilla = (.)478;
	const c_int KEY_Terminal = (.)269025152;
	const c_int KEY_Terminate_Server = (.)65237;
	const c_int KEY_Thai_baht = (.)3551;
	const c_int KEY_Thai_bobaimai = (.)3514;
	const c_int KEY_Thai_chochan = (.)3496;
	const c_int KEY_Thai_chochang = (.)3498;
	const c_int KEY_Thai_choching = (.)3497;
	const c_int KEY_Thai_chochoe = (.)3500;
	const c_int KEY_Thai_dochada = (.)3502;
	const c_int KEY_Thai_dodek = (.)3508;
	const c_int KEY_Thai_fofa = (.)3517;
	const c_int KEY_Thai_fofan = (.)3519;
	const c_int KEY_Thai_hohip = (.)3531;
	const c_int KEY_Thai_honokhuk = (.)3534;
	const c_int KEY_Thai_khokhai = (.)3490;
	const c_int KEY_Thai_khokhon = (.)3493;
	const c_int KEY_Thai_khokhuat = (.)3491;
	const c_int KEY_Thai_khokhwai = (.)3492;
	const c_int KEY_Thai_khorakhang = (.)3494;
	const c_int KEY_Thai_kokai = (.)3489;
	const c_int KEY_Thai_lakkhangyao = (.)3557;
	const c_int KEY_Thai_lekchet = (.)3575;
	const c_int KEY_Thai_lekha = (.)3573;
	const c_int KEY_Thai_lekhok = (.)3574;
	const c_int KEY_Thai_lekkao = (.)3577;
	const c_int KEY_Thai_leknung = (.)3569;
	const c_int KEY_Thai_lekpaet = (.)3576;
	const c_int KEY_Thai_leksam = (.)3571;
	const c_int KEY_Thai_leksi = (.)3572;
	const c_int KEY_Thai_leksong = (.)3570;
	const c_int KEY_Thai_leksun = (.)3568;
	const c_int KEY_Thai_lochula = (.)3532;
	const c_int KEY_Thai_loling = (.)3525;
	const c_int KEY_Thai_lu = (.)3526;
	const c_int KEY_Thai_maichattawa = (.)3563;
	const c_int KEY_Thai_maiek = (.)3560;
	const c_int KEY_Thai_maihanakat = (.)3537;
	const c_int KEY_Thai_maihanakat_maitho = (.)3550;
	const c_int KEY_Thai_maitaikhu = (.)3559;
	const c_int KEY_Thai_maitho = (.)3561;
	const c_int KEY_Thai_maitri = (.)3562;
	const c_int KEY_Thai_maiyamok = (.)3558;
	const c_int KEY_Thai_moma = (.)3521;
	const c_int KEY_Thai_ngongu = (.)3495;
	const c_int KEY_Thai_nikhahit = (.)3565;
	const c_int KEY_Thai_nonen = (.)3507;
	const c_int KEY_Thai_nonu = (.)3513;
	const c_int KEY_Thai_oang = (.)3533;
	const c_int KEY_Thai_paiyannoi = (.)3535;
	const c_int KEY_Thai_phinthu = (.)3546;
	const c_int KEY_Thai_phophan = (.)3518;
	const c_int KEY_Thai_phophung = (.)3516;
	const c_int KEY_Thai_phosamphao = (.)3520;
	const c_int KEY_Thai_popla = (.)3515;
	const c_int KEY_Thai_rorua = (.)3523;
	const c_int KEY_Thai_ru = (.)3524;
	const c_int KEY_Thai_saraa = (.)3536;
	const c_int KEY_Thai_saraaa = (.)3538;
	const c_int KEY_Thai_saraae = (.)3553;
	const c_int KEY_Thai_saraaimaimalai = (.)3556;
	const c_int KEY_Thai_saraaimaimuan = (.)3555;
	const c_int KEY_Thai_saraam = (.)3539;
	const c_int KEY_Thai_sarae = (.)3552;
	const c_int KEY_Thai_sarai = (.)3540;
	const c_int KEY_Thai_saraii = (.)3541;
	const c_int KEY_Thai_sarao = (.)3554;
	const c_int KEY_Thai_sarau = (.)3544;
	const c_int KEY_Thai_saraue = (.)3542;
	const c_int KEY_Thai_sarauee = (.)3543;
	const c_int KEY_Thai_sarauu = (.)3545;
	const c_int KEY_Thai_sorusi = (.)3529;
	const c_int KEY_Thai_sosala = (.)3528;
	const c_int KEY_Thai_soso = (.)3499;
	const c_int KEY_Thai_sosua = (.)3530;
	const c_int KEY_Thai_thanthakhat = (.)3564;
	const c_int KEY_Thai_thonangmontho = (.)3505;
	const c_int KEY_Thai_thophuthao = (.)3506;
	const c_int KEY_Thai_thothahan = (.)3511;
	const c_int KEY_Thai_thothan = (.)3504;
	const c_int KEY_Thai_thothong = (.)3512;
	const c_int KEY_Thai_thothung = (.)3510;
	const c_int KEY_Thai_topatak = (.)3503;
	const c_int KEY_Thai_totao = (.)3509;
	const c_int KEY_Thai_wowaen = (.)3527;
	const c_int KEY_Thai_yoyak = (.)3522;
	const c_int KEY_Thai_yoying = (.)3501;
	const c_int KEY_Thorn = (.)222;
	const c_int KEY_Time = (.)269025183;
	const c_int KEY_ToDoList = (.)269025055;
	const c_int KEY_Tools = (.)269025153;
	const c_int KEY_TopMenu = (.)269025186;
	const c_int KEY_TouchpadOff = (.)269025201;
	const c_int KEY_TouchpadOn = (.)269025200;
	const c_int KEY_TouchpadToggle = (.)269025193;
	const c_int KEY_Touroku = (.)65323;
	const c_int KEY_Travel = (.)269025154;
	const c_int KEY_Tslash = (.)940;
	const c_int KEY_U = (.)85;
	const c_int KEY_UWB = (.)269025174;
	const c_int KEY_Uacute = (.)218;
	const c_int KEY_Ubelowdot = (.)16785124;
	const c_int KEY_Ubreve = (.)733;
	const c_int KEY_Ucircumflex = (.)219;
	const c_int KEY_Udiaeresis = (.)220;
	const c_int KEY_Udoubleacute = (.)475;
	const c_int KEY_Ugrave = (.)217;
	const c_int KEY_Uhook = (.)16785126;
	const c_int KEY_Uhorn = (.)16777647;
	const c_int KEY_Uhornacute = (.)16785128;
	const c_int KEY_Uhornbelowdot = (.)16785136;
	const c_int KEY_Uhorngrave = (.)16785130;
	const c_int KEY_Uhornhook = (.)16785132;
	const c_int KEY_Uhorntilde = (.)16785134;
	const c_int KEY_Ukrainian_GHE_WITH_UPTURN = (.)1725;
	const c_int KEY_Ukrainian_I = (.)1718;
	const c_int KEY_Ukrainian_IE = (.)1716;
	const c_int KEY_Ukrainian_YI = (.)1719;
	const c_int KEY_Ukrainian_ghe_with_upturn = (.)1709;
	const c_int KEY_Ukrainian_i = (.)1702;
	const c_int KEY_Ukrainian_ie = (.)1700;
	const c_int KEY_Ukrainian_yi = (.)1703;
	const c_int KEY_Ukranian_I = (.)1718;
	const c_int KEY_Ukranian_JE = (.)1716;
	const c_int KEY_Ukranian_YI = (.)1719;
	const c_int KEY_Ukranian_i = (.)1702;
	const c_int KEY_Ukranian_je = (.)1700;
	const c_int KEY_Ukranian_yi = (.)1703;
	const c_int KEY_Umacron = (.)990;
	const c_int KEY_Undo = (.)65381;
	const c_int KEY_Ungrab = (.)269024800;
	const c_int KEY_Uogonek = (.)985;
	const c_int KEY_Up = (.)65362;
	const c_int KEY_Uring = (.)473;
	const c_int KEY_User1KB = (.)269025157;
	const c_int KEY_User2KB = (.)269025158;
	const c_int KEY_UserPB = (.)269025156;
	const c_int KEY_Utilde = (.)989;
	const c_int KEY_V = (.)86;
	const c_int KEY_VendorHome = (.)269025076;
	const c_int KEY_Video = (.)269025159;
	const c_int KEY_View = (.)269025185;
	const c_int KEY_VoidSymbol = (.)16777215;
	const c_int KEY_W = (.)87;
	const c_int KEY_WLAN = (.)269025173;
	const c_int KEY_WWAN = (.)269025204;
	const c_int KEY_WWW = (.)269025070;
	const c_int KEY_Wacute = (.)16785026;
	const c_int KEY_WakeUp = (.)269025067;
	const c_int KEY_Wcircumflex = (.)16777588;
	const c_int KEY_Wdiaeresis = (.)16785028;
	const c_int KEY_WebCam = (.)269025167;
	const c_int KEY_Wgrave = (.)16785024;
	const c_int KEY_WheelButton = (.)269025160;
	const c_int KEY_WindowClear = (.)269025109;
	const c_int KEY_WonSign = (.)16785577;
	const c_int KEY_Word = (.)269025161;
	const c_int KEY_X = (.)88;
	const c_int KEY_Xabovedot = (.)16785034;
	const c_int KEY_Xfer = (.)269025162;
	const c_int KEY_Y = (.)89;
	const c_int KEY_Yacute = (.)221;
	const c_int KEY_Ybelowdot = (.)16785140;
	const c_int KEY_Ycircumflex = (.)16777590;
	const c_int KEY_Ydiaeresis = (.)5054;
	const c_int KEY_Yellow = (.)269025189;
	const c_int KEY_Ygrave = (.)16785138;
	const c_int KEY_Yhook = (.)16785142;
	const c_int KEY_Ytilde = (.)16785144;
	const c_int KEY_Z = (.)90;
	const c_int KEY_Zabovedot = (.)431;
	const c_int KEY_Zacute = (.)428;
	const c_int KEY_Zcaron = (.)430;
	const c_int KEY_Zen_Koho = (.)65341;
	const c_int KEY_Zenkaku = (.)65320;
	const c_int KEY_Zenkaku_Hankaku = (.)65322;
	const c_int KEY_ZoomIn = (.)269025163;
	const c_int KEY_ZoomOut = (.)269025164;
	const c_int KEY_Zstroke = (.)16777653;
	const c_int KEY_a = (.)97;
	const c_int KEY_aacute = (.)225;
	const c_int KEY_abelowdot = (.)16785057;
	const c_int KEY_abovedot = (.)511;
	const c_int KEY_abreve = (.)483;
	const c_int KEY_abreveacute = (.)16785071;
	const c_int KEY_abrevebelowdot = (.)16785079;
	const c_int KEY_abrevegrave = (.)16785073;
	const c_int KEY_abrevehook = (.)16785075;
	const c_int KEY_abrevetilde = (.)16785077;
	const c_int KEY_acircumflex = (.)226;
	const c_int KEY_acircumflexacute = (.)16785061;
	const c_int KEY_acircumflexbelowdot = (.)16785069;
	const c_int KEY_acircumflexgrave = (.)16785063;
	const c_int KEY_acircumflexhook = (.)16785065;
	const c_int KEY_acircumflextilde = (.)16785067;
	const c_int KEY_acute = (.)180;
	const c_int KEY_adiaeresis = (.)228;
	const c_int KEY_ae = (.)230;
	const c_int KEY_agrave = (.)224;
	const c_int KEY_ahook = (.)16785059;
	const c_int KEY_amacron = (.)992;
	const c_int KEY_ampersand = (.)38;
	const c_int KEY_aogonek = (.)433;
	const c_int KEY_apostrophe = (.)39;
	const c_int KEY_approxeq = (.)16785992;
	const c_int KEY_approximate = (.)2248;
	const c_int KEY_aring = (.)229;
	const c_int KEY_asciicircum = (.)94;
	const c_int KEY_asciitilde = (.)126;
	const c_int KEY_asterisk = (.)42;
	const c_int KEY_at = (.)64;
	const c_int KEY_atilde = (.)227;
	const c_int KEY_b = (.)98;
	const c_int KEY_babovedot = (.)16784899;
	const c_int KEY_backslash = (.)92;
	const c_int KEY_ballotcross = (.)2804;
	const c_int KEY_bar = (.)124;
	const c_int KEY_because = (.)16785973;
	const c_int KEY_blank = (.)2527;
	const c_int KEY_botintegral = (.)2213;
	const c_int KEY_botleftparens = (.)2220;
	const c_int KEY_botleftsqbracket = (.)2216;
	const c_int KEY_botleftsummation = (.)2226;
	const c_int KEY_botrightparens = (.)2222;
	const c_int KEY_botrightsqbracket = (.)2218;
	const c_int KEY_botrightsummation = (.)2230;
	const c_int KEY_bott = (.)2550;
	const c_int KEY_botvertsummationconnector = (.)2228;
	const c_int KEY_braceleft = (.)123;
	const c_int KEY_braceright = (.)125;
	const c_int KEY_bracketleft = (.)91;
	const c_int KEY_bracketright = (.)93;
	const c_int KEY_braille_blank = (.)16787456;
	const c_int KEY_braille_dot_1 = (.)65521;
	const c_int KEY_braille_dot_10 = (.)65530;
	const c_int KEY_braille_dot_2 = (.)65522;
	const c_int KEY_braille_dot_3 = (.)65523;
	const c_int KEY_braille_dot_4 = (.)65524;
	const c_int KEY_braille_dot_5 = (.)65525;
	const c_int KEY_braille_dot_6 = (.)65526;
	const c_int KEY_braille_dot_7 = (.)65527;
	const c_int KEY_braille_dot_8 = (.)65528;
	const c_int KEY_braille_dot_9 = (.)65529;
	const c_int KEY_braille_dots_1 = (.)16787457;
	const c_int KEY_braille_dots_12 = (.)16787459;
	const c_int KEY_braille_dots_123 = (.)16787463;
	const c_int KEY_braille_dots_1234 = (.)16787471;
	const c_int KEY_braille_dots_12345 = (.)16787487;
	const c_int KEY_braille_dots_123456 = (.)16787519;
	const c_int KEY_braille_dots_1234567 = (.)16787583;
	const c_int KEY_braille_dots_12345678 = (.)16787711;
	const c_int KEY_braille_dots_1234568 = (.)16787647;
	const c_int KEY_braille_dots_123457 = (.)16787551;
	const c_int KEY_braille_dots_1234578 = (.)16787679;
	const c_int KEY_braille_dots_123458 = (.)16787615;
	const c_int KEY_braille_dots_12346 = (.)16787503;
	const c_int KEY_braille_dots_123467 = (.)16787567;
	const c_int KEY_braille_dots_1234678 = (.)16787695;
	const c_int KEY_braille_dots_123468 = (.)16787631;
	const c_int KEY_braille_dots_12347 = (.)16787535;
	const c_int KEY_braille_dots_123478 = (.)16787663;
	const c_int KEY_braille_dots_12348 = (.)16787599;
	const c_int KEY_braille_dots_1235 = (.)16787479;
	const c_int KEY_braille_dots_12356 = (.)16787511;
	const c_int KEY_braille_dots_123567 = (.)16787575;
	const c_int KEY_braille_dots_1235678 = (.)16787703;
	const c_int KEY_braille_dots_123568 = (.)16787639;
	const c_int KEY_braille_dots_12357 = (.)16787543;
	const c_int KEY_braille_dots_123578 = (.)16787671;
	const c_int KEY_braille_dots_12358 = (.)16787607;
	const c_int KEY_braille_dots_1236 = (.)16787495;
	const c_int KEY_braille_dots_12367 = (.)16787559;
	const c_int KEY_braille_dots_123678 = (.)16787687;
	const c_int KEY_braille_dots_12368 = (.)16787623;
	const c_int KEY_braille_dots_1237 = (.)16787527;
	const c_int KEY_braille_dots_12378 = (.)16787655;
	const c_int KEY_braille_dots_1238 = (.)16787591;
	const c_int KEY_braille_dots_124 = (.)16787467;
	const c_int KEY_braille_dots_1245 = (.)16787483;
	const c_int KEY_braille_dots_12456 = (.)16787515;
	const c_int KEY_braille_dots_124567 = (.)16787579;
	const c_int KEY_braille_dots_1245678 = (.)16787707;
	const c_int KEY_braille_dots_124568 = (.)16787643;
	const c_int KEY_braille_dots_12457 = (.)16787547;
	const c_int KEY_braille_dots_124578 = (.)16787675;
	const c_int KEY_braille_dots_12458 = (.)16787611;
	const c_int KEY_braille_dots_1246 = (.)16787499;
	const c_int KEY_braille_dots_12467 = (.)16787563;
	const c_int KEY_braille_dots_124678 = (.)16787691;
	const c_int KEY_braille_dots_12468 = (.)16787627;
	const c_int KEY_braille_dots_1247 = (.)16787531;
	const c_int KEY_braille_dots_12478 = (.)16787659;
	const c_int KEY_braille_dots_1248 = (.)16787595;
	const c_int KEY_braille_dots_125 = (.)16787475;
	const c_int KEY_braille_dots_1256 = (.)16787507;
	const c_int KEY_braille_dots_12567 = (.)16787571;
	const c_int KEY_braille_dots_125678 = (.)16787699;
	const c_int KEY_braille_dots_12568 = (.)16787635;
	const c_int KEY_braille_dots_1257 = (.)16787539;
	const c_int KEY_braille_dots_12578 = (.)16787667;
	const c_int KEY_braille_dots_1258 = (.)16787603;
	const c_int KEY_braille_dots_126 = (.)16787491;
	const c_int KEY_braille_dots_1267 = (.)16787555;
	const c_int KEY_braille_dots_12678 = (.)16787683;
	const c_int KEY_braille_dots_1268 = (.)16787619;
	const c_int KEY_braille_dots_127 = (.)16787523;
	const c_int KEY_braille_dots_1278 = (.)16787651;
	const c_int KEY_braille_dots_128 = (.)16787587;
	const c_int KEY_braille_dots_13 = (.)16787461;
	const c_int KEY_braille_dots_134 = (.)16787469;
	const c_int KEY_braille_dots_1345 = (.)16787485;
	const c_int KEY_braille_dots_13456 = (.)16787517;
	const c_int KEY_braille_dots_134567 = (.)16787581;
	const c_int KEY_braille_dots_1345678 = (.)16787709;
	const c_int KEY_braille_dots_134568 = (.)16787645;
	const c_int KEY_braille_dots_13457 = (.)16787549;
	const c_int KEY_braille_dots_134578 = (.)16787677;
	const c_int KEY_braille_dots_13458 = (.)16787613;
	const c_int KEY_braille_dots_1346 = (.)16787501;
	const c_int KEY_braille_dots_13467 = (.)16787565;
	const c_int KEY_braille_dots_134678 = (.)16787693;
	const c_int KEY_braille_dots_13468 = (.)16787629;
	const c_int KEY_braille_dots_1347 = (.)16787533;
	const c_int KEY_braille_dots_13478 = (.)16787661;
	const c_int KEY_braille_dots_1348 = (.)16787597;
	const c_int KEY_braille_dots_135 = (.)16787477;
	const c_int KEY_braille_dots_1356 = (.)16787509;
	const c_int KEY_braille_dots_13567 = (.)16787573;
	const c_int KEY_braille_dots_135678 = (.)16787701;
	const c_int KEY_braille_dots_13568 = (.)16787637;
	const c_int KEY_braille_dots_1357 = (.)16787541;
	const c_int KEY_braille_dots_13578 = (.)16787669;
	const c_int KEY_braille_dots_1358 = (.)16787605;
	const c_int KEY_braille_dots_136 = (.)16787493;
	const c_int KEY_braille_dots_1367 = (.)16787557;
	const c_int KEY_braille_dots_13678 = (.)16787685;
	const c_int KEY_braille_dots_1368 = (.)16787621;
	const c_int KEY_braille_dots_137 = (.)16787525;
	const c_int KEY_braille_dots_1378 = (.)16787653;
	const c_int KEY_braille_dots_138 = (.)16787589;
	const c_int KEY_braille_dots_14 = (.)16787465;
	const c_int KEY_braille_dots_145 = (.)16787481;
	const c_int KEY_braille_dots_1456 = (.)16787513;
	const c_int KEY_braille_dots_14567 = (.)16787577;
	const c_int KEY_braille_dots_145678 = (.)16787705;
	const c_int KEY_braille_dots_14568 = (.)16787641;
	const c_int KEY_braille_dots_1457 = (.)16787545;
	const c_int KEY_braille_dots_14578 = (.)16787673;
	const c_int KEY_braille_dots_1458 = (.)16787609;
	const c_int KEY_braille_dots_146 = (.)16787497;
	const c_int KEY_braille_dots_1467 = (.)16787561;
	const c_int KEY_braille_dots_14678 = (.)16787689;
	const c_int KEY_braille_dots_1468 = (.)16787625;
	const c_int KEY_braille_dots_147 = (.)16787529;
	const c_int KEY_braille_dots_1478 = (.)16787657;
	const c_int KEY_braille_dots_148 = (.)16787593;
	const c_int KEY_braille_dots_15 = (.)16787473;
	const c_int KEY_braille_dots_156 = (.)16787505;
	const c_int KEY_braille_dots_1567 = (.)16787569;
	const c_int KEY_braille_dots_15678 = (.)16787697;
	const c_int KEY_braille_dots_1568 = (.)16787633;
	const c_int KEY_braille_dots_157 = (.)16787537;
	const c_int KEY_braille_dots_1578 = (.)16787665;
	const c_int KEY_braille_dots_158 = (.)16787601;
	const c_int KEY_braille_dots_16 = (.)16787489;
	const c_int KEY_braille_dots_167 = (.)16787553;
	const c_int KEY_braille_dots_1678 = (.)16787681;
	const c_int KEY_braille_dots_168 = (.)16787617;
	const c_int KEY_braille_dots_17 = (.)16787521;
	const c_int KEY_braille_dots_178 = (.)16787649;
	const c_int KEY_braille_dots_18 = (.)16787585;
	const c_int KEY_braille_dots_2 = (.)16787458;
	const c_int KEY_braille_dots_23 = (.)16787462;
	const c_int KEY_braille_dots_234 = (.)16787470;
	const c_int KEY_braille_dots_2345 = (.)16787486;
	const c_int KEY_braille_dots_23456 = (.)16787518;
	const c_int KEY_braille_dots_234567 = (.)16787582;
	const c_int KEY_braille_dots_2345678 = (.)16787710;
	const c_int KEY_braille_dots_234568 = (.)16787646;
	const c_int KEY_braille_dots_23457 = (.)16787550;
	const c_int KEY_braille_dots_234578 = (.)16787678;
	const c_int KEY_braille_dots_23458 = (.)16787614;
	const c_int KEY_braille_dots_2346 = (.)16787502;
	const c_int KEY_braille_dots_23467 = (.)16787566;
	const c_int KEY_braille_dots_234678 = (.)16787694;
	const c_int KEY_braille_dots_23468 = (.)16787630;
	const c_int KEY_braille_dots_2347 = (.)16787534;
	const c_int KEY_braille_dots_23478 = (.)16787662;
	const c_int KEY_braille_dots_2348 = (.)16787598;
	const c_int KEY_braille_dots_235 = (.)16787478;
	const c_int KEY_braille_dots_2356 = (.)16787510;
	const c_int KEY_braille_dots_23567 = (.)16787574;
	const c_int KEY_braille_dots_235678 = (.)16787702;
	const c_int KEY_braille_dots_23568 = (.)16787638;
	const c_int KEY_braille_dots_2357 = (.)16787542;
	const c_int KEY_braille_dots_23578 = (.)16787670;
	const c_int KEY_braille_dots_2358 = (.)16787606;
	const c_int KEY_braille_dots_236 = (.)16787494;
	const c_int KEY_braille_dots_2367 = (.)16787558;
	const c_int KEY_braille_dots_23678 = (.)16787686;
	const c_int KEY_braille_dots_2368 = (.)16787622;
	const c_int KEY_braille_dots_237 = (.)16787526;
	const c_int KEY_braille_dots_2378 = (.)16787654;
	const c_int KEY_braille_dots_238 = (.)16787590;
	const c_int KEY_braille_dots_24 = (.)16787466;
	const c_int KEY_braille_dots_245 = (.)16787482;
	const c_int KEY_braille_dots_2456 = (.)16787514;
	const c_int KEY_braille_dots_24567 = (.)16787578;
	const c_int KEY_braille_dots_245678 = (.)16787706;
	const c_int KEY_braille_dots_24568 = (.)16787642;
	const c_int KEY_braille_dots_2457 = (.)16787546;
	const c_int KEY_braille_dots_24578 = (.)16787674;
	const c_int KEY_braille_dots_2458 = (.)16787610;
	const c_int KEY_braille_dots_246 = (.)16787498;
	const c_int KEY_braille_dots_2467 = (.)16787562;
	const c_int KEY_braille_dots_24678 = (.)16787690;
	const c_int KEY_braille_dots_2468 = (.)16787626;
	const c_int KEY_braille_dots_247 = (.)16787530;
	const c_int KEY_braille_dots_2478 = (.)16787658;
	const c_int KEY_braille_dots_248 = (.)16787594;
	const c_int KEY_braille_dots_25 = (.)16787474;
	const c_int KEY_braille_dots_256 = (.)16787506;
	const c_int KEY_braille_dots_2567 = (.)16787570;
	const c_int KEY_braille_dots_25678 = (.)16787698;
	const c_int KEY_braille_dots_2568 = (.)16787634;
	const c_int KEY_braille_dots_257 = (.)16787538;
	const c_int KEY_braille_dots_2578 = (.)16787666;
	const c_int KEY_braille_dots_258 = (.)16787602;
	const c_int KEY_braille_dots_26 = (.)16787490;
	const c_int KEY_braille_dots_267 = (.)16787554;
	const c_int KEY_braille_dots_2678 = (.)16787682;
	const c_int KEY_braille_dots_268 = (.)16787618;
	const c_int KEY_braille_dots_27 = (.)16787522;
	const c_int KEY_braille_dots_278 = (.)16787650;
	const c_int KEY_braille_dots_28 = (.)16787586;
	const c_int KEY_braille_dots_3 = (.)16787460;
	const c_int KEY_braille_dots_34 = (.)16787468;
	const c_int KEY_braille_dots_345 = (.)16787484;
	const c_int KEY_braille_dots_3456 = (.)16787516;
	const c_int KEY_braille_dots_34567 = (.)16787580;
	const c_int KEY_braille_dots_345678 = (.)16787708;
	const c_int KEY_braille_dots_34568 = (.)16787644;
	const c_int KEY_braille_dots_3457 = (.)16787548;
	const c_int KEY_braille_dots_34578 = (.)16787676;
	const c_int KEY_braille_dots_3458 = (.)16787612;
	const c_int KEY_braille_dots_346 = (.)16787500;
	const c_int KEY_braille_dots_3467 = (.)16787564;
	const c_int KEY_braille_dots_34678 = (.)16787692;
	const c_int KEY_braille_dots_3468 = (.)16787628;
	const c_int KEY_braille_dots_347 = (.)16787532;
	const c_int KEY_braille_dots_3478 = (.)16787660;
	const c_int KEY_braille_dots_348 = (.)16787596;
	const c_int KEY_braille_dots_35 = (.)16787476;
	const c_int KEY_braille_dots_356 = (.)16787508;
	const c_int KEY_braille_dots_3567 = (.)16787572;
	const c_int KEY_braille_dots_35678 = (.)16787700;
	const c_int KEY_braille_dots_3568 = (.)16787636;
	const c_int KEY_braille_dots_357 = (.)16787540;
	const c_int KEY_braille_dots_3578 = (.)16787668;
	const c_int KEY_braille_dots_358 = (.)16787604;
	const c_int KEY_braille_dots_36 = (.)16787492;
	const c_int KEY_braille_dots_367 = (.)16787556;
	const c_int KEY_braille_dots_3678 = (.)16787684;
	const c_int KEY_braille_dots_368 = (.)16787620;
	const c_int KEY_braille_dots_37 = (.)16787524;
	const c_int KEY_braille_dots_378 = (.)16787652;
	const c_int KEY_braille_dots_38 = (.)16787588;
	const c_int KEY_braille_dots_4 = (.)16787464;
	const c_int KEY_braille_dots_45 = (.)16787480;
	const c_int KEY_braille_dots_456 = (.)16787512;
	const c_int KEY_braille_dots_4567 = (.)16787576;
	const c_int KEY_braille_dots_45678 = (.)16787704;
	const c_int KEY_braille_dots_4568 = (.)16787640;
	const c_int KEY_braille_dots_457 = (.)16787544;
	const c_int KEY_braille_dots_4578 = (.)16787672;
	const c_int KEY_braille_dots_458 = (.)16787608;
	const c_int KEY_braille_dots_46 = (.)16787496;
	const c_int KEY_braille_dots_467 = (.)16787560;
	const c_int KEY_braille_dots_4678 = (.)16787688;
	const c_int KEY_braille_dots_468 = (.)16787624;
	const c_int KEY_braille_dots_47 = (.)16787528;
	const c_int KEY_braille_dots_478 = (.)16787656;
	const c_int KEY_braille_dots_48 = (.)16787592;
	const c_int KEY_braille_dots_5 = (.)16787472;
	const c_int KEY_braille_dots_56 = (.)16787504;
	const c_int KEY_braille_dots_567 = (.)16787568;
	const c_int KEY_braille_dots_5678 = (.)16787696;
	const c_int KEY_braille_dots_568 = (.)16787632;
	const c_int KEY_braille_dots_57 = (.)16787536;
	const c_int KEY_braille_dots_578 = (.)16787664;
	const c_int KEY_braille_dots_58 = (.)16787600;
	const c_int KEY_braille_dots_6 = (.)16787488;
	const c_int KEY_braille_dots_67 = (.)16787552;
	const c_int KEY_braille_dots_678 = (.)16787680;
	const c_int KEY_braille_dots_68 = (.)16787616;
	const c_int KEY_braille_dots_7 = (.)16787520;
	const c_int KEY_braille_dots_78 = (.)16787648;
	const c_int KEY_braille_dots_8 = (.)16787584;
	const c_int KEY_breve = (.)418;
	const c_int KEY_brokenbar = (.)166;
	const c_int KEY_c = (.)99;
	const c_int KEY_c_h = (.)65187;
	const c_int KEY_cabovedot = (.)741;
	const c_int KEY_cacute = (.)486;
	const c_int KEY_careof = (.)2744;
	const c_int KEY_caret = (.)2812;
	const c_int KEY_caron = (.)439;
	const c_int KEY_ccaron = (.)488;
	const c_int KEY_ccedilla = (.)231;
	const c_int KEY_ccircumflex = (.)742;
	const c_int KEY_cedilla = (.)184;
	const c_int KEY_cent = (.)162;
	const c_int KEY_ch = (.)65184;
	const c_int KEY_checkerboard = (.)2529;
	const c_int KEY_checkmark = (.)2803;
	const c_int KEY_circle = (.)3023;
	const c_int KEY_club = (.)2796;
	const c_int KEY_colon = (.)58;
	const c_int KEY_comma = (.)44;
	const c_int KEY_containsas = (.)16785931;
	const c_int KEY_copyright = (.)169;
	const c_int KEY_cr = (.)2532;
	const c_int KEY_crossinglines = (.)2542;
	const c_int KEY_cuberoot = (.)16785947;
	const c_int KEY_currency = (.)164;
	const c_int KEY_cursor = (.)2815;
	const c_int KEY_d = (.)100;
	const c_int KEY_dabovedot = (.)16784907;
	const c_int KEY_dagger = (.)2801;
	const c_int KEY_dcaron = (.)495;
	const c_int KEY_dead_A = (.)65153;
	const c_int KEY_dead_E = (.)65155;
	const c_int KEY_dead_I = (.)65157;
	const c_int KEY_dead_O = (.)65159;
	const c_int KEY_dead_U = (.)65161;
	const c_int KEY_dead_a = (.)65152;
	const c_int KEY_dead_abovecomma = (.)65124;
	const c_int KEY_dead_abovedot = (.)65110;
	const c_int KEY_dead_abovereversedcomma = (.)65125;
	const c_int KEY_dead_abovering = (.)65112;
	const c_int KEY_dead_aboveverticalline = (.)65169;
	const c_int KEY_dead_acute = (.)65105;
	const c_int KEY_dead_belowbreve = (.)65131;
	const c_int KEY_dead_belowcircumflex = (.)65129;
	const c_int KEY_dead_belowcomma = (.)65134;
	const c_int KEY_dead_belowdiaeresis = (.)65132;
	const c_int KEY_dead_belowdot = (.)65120;
	const c_int KEY_dead_belowmacron = (.)65128;
	const c_int KEY_dead_belowring = (.)65127;
	const c_int KEY_dead_belowtilde = (.)65130;
	const c_int KEY_dead_belowverticalline = (.)65170;
	const c_int KEY_dead_breve = (.)65109;
	const c_int KEY_dead_capital_schwa = (.)65163;
	const c_int KEY_dead_caron = (.)65114;
	const c_int KEY_dead_cedilla = (.)65115;
	const c_int KEY_dead_circumflex = (.)65106;
	const c_int KEY_dead_currency = (.)65135;
	const c_int KEY_dead_dasia = (.)65125;
	const c_int KEY_dead_diaeresis = (.)65111;
	const c_int KEY_dead_doubleacute = (.)65113;
	const c_int KEY_dead_doublegrave = (.)65126;
	const c_int KEY_dead_e = (.)65154;
	const c_int KEY_dead_grave = (.)65104;
	const c_int KEY_dead_greek = (.)65164;
	const c_int KEY_dead_hook = (.)65121;
	const c_int KEY_dead_horn = (.)65122;
	const c_int KEY_dead_i = (.)65156;
	const c_int KEY_dead_invertedbreve = (.)65133;
	const c_int KEY_dead_iota = (.)65117;
	const c_int KEY_dead_longsolidusoverlay = (.)65171;
	const c_int KEY_dead_lowline = (.)65168;
	const c_int KEY_dead_macron = (.)65108;
	const c_int KEY_dead_o = (.)65158;
	const c_int KEY_dead_ogonek = (.)65116;
	const c_int KEY_dead_perispomeni = (.)65107;
	const c_int KEY_dead_psili = (.)65124;
	const c_int KEY_dead_semivoiced_sound = (.)65119;
	const c_int KEY_dead_small_schwa = (.)65162;
	const c_int KEY_dead_stroke = (.)65123;
	const c_int KEY_dead_tilde = (.)65107;
	const c_int KEY_dead_u = (.)65160;
	const c_int KEY_dead_voiced_sound = (.)65118;
	const c_int KEY_decimalpoint = (.)2749;
	const c_int KEY_degree = (.)176;
	const c_int KEY_diaeresis = (.)168;
	const c_int KEY_diamond = (.)2797;
	const c_int KEY_digitspace = (.)2725;
	const c_int KEY_dintegral = (.)16785964;
	const c_int KEY_division = (.)247;
	const c_int KEY_dollar = (.)36;
	const c_int KEY_doubbaselinedot = (.)2735;
	const c_int KEY_doubleacute = (.)445;
	const c_int KEY_doubledagger = (.)2802;
	const c_int KEY_doublelowquotemark = (.)2814;
	const c_int KEY_downarrow = (.)2302;
	const c_int KEY_downcaret = (.)2984;
	const c_int KEY_downshoe = (.)3030;
	const c_int KEY_downstile = (.)3012;
	const c_int KEY_downtack = (.)3010;
	const c_int KEY_dstroke = (.)496;
	const c_int KEY_e = (.)101;
	const c_int KEY_eabovedot = (.)1004;
	const c_int KEY_eacute = (.)233;
	const c_int KEY_ebelowdot = (.)16785081;
	const c_int KEY_ecaron = (.)492;
	const c_int KEY_ecircumflex = (.)234;
	const c_int KEY_ecircumflexacute = (.)16785087;
	const c_int KEY_ecircumflexbelowdot = (.)16785095;
	const c_int KEY_ecircumflexgrave = (.)16785089;
	const c_int KEY_ecircumflexhook = (.)16785091;
	const c_int KEY_ecircumflextilde = (.)16785093;
	const c_int KEY_ediaeresis = (.)235;
	const c_int KEY_egrave = (.)232;
	const c_int KEY_ehook = (.)16785083;
	const c_int KEY_eightsubscript = (.)16785544;
	const c_int KEY_eightsuperior = (.)16785528;
	const c_int KEY_elementof = (.)16785928;
	const c_int KEY_ellipsis = (.)2734;
	const c_int KEY_em3space = (.)2723;
	const c_int KEY_em4space = (.)2724;
	const c_int KEY_emacron = (.)954;
	const c_int KEY_emdash = (.)2729;
	const c_int KEY_emfilledcircle = (.)2782;
	const c_int KEY_emfilledrect = (.)2783;
	const c_int KEY_emopencircle = (.)2766;
	const c_int KEY_emopenrectangle = (.)2767;
	const c_int KEY_emptyset = (.)16785925;
	const c_int KEY_emspace = (.)2721;
	const c_int KEY_endash = (.)2730;
	const c_int KEY_enfilledcircbullet = (.)2790;
	const c_int KEY_enfilledsqbullet = (.)2791;
	const c_int KEY_eng = (.)959;
	const c_int KEY_enopencircbullet = (.)2784;
	const c_int KEY_enopensquarebullet = (.)2785;
	const c_int KEY_enspace = (.)2722;
	const c_int KEY_eogonek = (.)490;
	const c_int KEY_equal = (.)61;
	const c_int KEY_eth = (.)240;
	const c_int KEY_etilde = (.)16785085;
	const c_int KEY_exclam = (.)33;
	const c_int KEY_exclamdown = (.)161;
	const c_int KEY_ezh = (.)16777874;
	const c_int KEY_f = (.)102;
	const c_int KEY_fabovedot = (.)16784927;
	const c_int KEY_femalesymbol = (.)2808;
	const c_int KEY_ff = (.)2531;
	const c_int KEY_figdash = (.)2747;
	const c_int KEY_filledlefttribullet = (.)2780;
	const c_int KEY_filledrectbullet = (.)2779;
	const c_int KEY_filledrighttribullet = (.)2781;
	const c_int KEY_filledtribulletdown = (.)2793;
	const c_int KEY_filledtribulletup = (.)2792;
	const c_int KEY_fiveeighths = (.)2757;
	const c_int KEY_fivesixths = (.)2743;
	const c_int KEY_fivesubscript = (.)16785541;
	const c_int KEY_fivesuperior = (.)16785525;
	const c_int KEY_fourfifths = (.)2741;
	const c_int KEY_foursubscript = (.)16785540;
	const c_int KEY_foursuperior = (.)16785524;
	const c_int KEY_fourthroot = (.)16785948;
	const c_int KEY_function = (.)2294;
	const c_int KEY_g = (.)103;
	const c_int KEY_gabovedot = (.)757;
	const c_int KEY_gbreve = (.)699;
	const c_int KEY_gcaron = (.)16777703;
	const c_int KEY_gcedilla = (.)955;
	const c_int KEY_gcircumflex = (.)760;
	const c_int KEY_grave = (.)96;
	const c_int KEY_greater = (.)62;
	const c_int KEY_greaterthanequal = (.)2238;
	const c_int KEY_guillemotleft = (.)171;
	const c_int KEY_guillemotright = (.)187;
	const c_int KEY_h = (.)104;
	const c_int KEY_hairspace = (.)2728;
	const c_int KEY_hcircumflex = (.)694;
	const c_int KEY_heart = (.)2798;
	const c_int KEY_hebrew_aleph = (.)3296;
	const c_int KEY_hebrew_ayin = (.)3314;
	const c_int KEY_hebrew_bet = (.)3297;
	const c_int KEY_hebrew_beth = (.)3297;
	const c_int KEY_hebrew_chet = (.)3303;
	const c_int KEY_hebrew_dalet = (.)3299;
	const c_int KEY_hebrew_daleth = (.)3299;
	const c_int KEY_hebrew_doublelowline = (.)3295;
	const c_int KEY_hebrew_finalkaph = (.)3306;
	const c_int KEY_hebrew_finalmem = (.)3309;
	const c_int KEY_hebrew_finalnun = (.)3311;
	const c_int KEY_hebrew_finalpe = (.)3315;
	const c_int KEY_hebrew_finalzade = (.)3317;
	const c_int KEY_hebrew_finalzadi = (.)3317;
	const c_int KEY_hebrew_gimel = (.)3298;
	const c_int KEY_hebrew_gimmel = (.)3298;
	const c_int KEY_hebrew_he = (.)3300;
	const c_int KEY_hebrew_het = (.)3303;
	const c_int KEY_hebrew_kaph = (.)3307;
	const c_int KEY_hebrew_kuf = (.)3319;
	const c_int KEY_hebrew_lamed = (.)3308;
	const c_int KEY_hebrew_mem = (.)3310;
	const c_int KEY_hebrew_nun = (.)3312;
	const c_int KEY_hebrew_pe = (.)3316;
	const c_int KEY_hebrew_qoph = (.)3319;
	const c_int KEY_hebrew_resh = (.)3320;
	const c_int KEY_hebrew_samech = (.)3313;
	const c_int KEY_hebrew_samekh = (.)3313;
	const c_int KEY_hebrew_shin = (.)3321;
	const c_int KEY_hebrew_taf = (.)3322;
	const c_int KEY_hebrew_taw = (.)3322;
	const c_int KEY_hebrew_tet = (.)3304;
	const c_int KEY_hebrew_teth = (.)3304;
	const c_int KEY_hebrew_waw = (.)3301;
	const c_int KEY_hebrew_yod = (.)3305;
	const c_int KEY_hebrew_zade = (.)3318;
	const c_int KEY_hebrew_zadi = (.)3318;
	const c_int KEY_hebrew_zain = (.)3302;
	const c_int KEY_hebrew_zayin = (.)3302;
	const c_int KEY_hexagram = (.)2778;
	const c_int KEY_horizconnector = (.)2211;
	const c_int KEY_horizlinescan1 = (.)2543;
	const c_int KEY_horizlinescan3 = (.)2544;
	const c_int KEY_horizlinescan5 = (.)2545;
	const c_int KEY_horizlinescan7 = (.)2546;
	const c_int KEY_horizlinescan9 = (.)2547;
	const c_int KEY_hstroke = (.)689;
	const c_int KEY_ht = (.)2530;
	const c_int KEY_hyphen = (.)173;
	const c_int KEY_i = (.)105;
	const c_int KEY_iTouch = (.)269025120;
	const c_int KEY_iacute = (.)237;
	const c_int KEY_ibelowdot = (.)16785099;
	const c_int KEY_ibreve = (.)16777517;
	const c_int KEY_icircumflex = (.)238;
	const c_int KEY_identical = (.)2255;
	const c_int KEY_idiaeresis = (.)239;
	const c_int KEY_idotless = (.)697;
	const c_int KEY_ifonlyif = (.)2253;
	const c_int KEY_igrave = (.)236;
	const c_int KEY_ihook = (.)16785097;
	const c_int KEY_imacron = (.)1007;
	const c_int KEY_implies = (.)2254;
	const c_int KEY_includedin = (.)2266;
	const c_int KEY_includes = (.)2267;
	const c_int KEY_infinity = (.)2242;
	const c_int KEY_integral = (.)2239;
	const c_int KEY_intersection = (.)2268;
	const c_int KEY_iogonek = (.)999;
	const c_int KEY_itilde = (.)949;
	const c_int KEY_j = (.)106;
	const c_int KEY_jcircumflex = (.)700;
	const c_int KEY_jot = (.)3018;
	const c_int KEY_k = (.)107;
	const c_int KEY_kana_A = (.)1201;
	const c_int KEY_kana_CHI = (.)1217;
	const c_int KEY_kana_E = (.)1204;
	const c_int KEY_kana_FU = (.)1228;
	const c_int KEY_kana_HA = (.)1226;
	const c_int KEY_kana_HE = (.)1229;
	const c_int KEY_kana_HI = (.)1227;
	const c_int KEY_kana_HO = (.)1230;
	const c_int KEY_kana_HU = (.)1228;
	const c_int KEY_kana_I = (.)1202;
	const c_int KEY_kana_KA = (.)1206;
	const c_int KEY_kana_KE = (.)1209;
	const c_int KEY_kana_KI = (.)1207;
	const c_int KEY_kana_KO = (.)1210;
	const c_int KEY_kana_KU = (.)1208;
	const c_int KEY_kana_MA = (.)1231;
	const c_int KEY_kana_ME = (.)1234;
	const c_int KEY_kana_MI = (.)1232;
	const c_int KEY_kana_MO = (.)1235;
	const c_int KEY_kana_MU = (.)1233;
	const c_int KEY_kana_N = (.)1245;
	const c_int KEY_kana_NA = (.)1221;
	const c_int KEY_kana_NE = (.)1224;
	const c_int KEY_kana_NI = (.)1222;
	const c_int KEY_kana_NO = (.)1225;
	const c_int KEY_kana_NU = (.)1223;
	const c_int KEY_kana_O = (.)1205;
	const c_int KEY_kana_RA = (.)1239;
	const c_int KEY_kana_RE = (.)1242;
	const c_int KEY_kana_RI = (.)1240;
	const c_int KEY_kana_RO = (.)1243;
	const c_int KEY_kana_RU = (.)1241;
	const c_int KEY_kana_SA = (.)1211;
	const c_int KEY_kana_SE = (.)1214;
	const c_int KEY_kana_SHI = (.)1212;
	const c_int KEY_kana_SO = (.)1215;
	const c_int KEY_kana_SU = (.)1213;
	const c_int KEY_kana_TA = (.)1216;
	const c_int KEY_kana_TE = (.)1219;
	const c_int KEY_kana_TI = (.)1217;
	const c_int KEY_kana_TO = (.)1220;
	const c_int KEY_kana_TSU = (.)1218;
	const c_int KEY_kana_TU = (.)1218;
	const c_int KEY_kana_U = (.)1203;
	const c_int KEY_kana_WA = (.)1244;
	const c_int KEY_kana_WO = (.)1190;
	const c_int KEY_kana_YA = (.)1236;
	const c_int KEY_kana_YO = (.)1238;
	const c_int KEY_kana_YU = (.)1237;
	const c_int KEY_kana_a = (.)1191;
	const c_int KEY_kana_closingbracket = (.)1187;
	const c_int KEY_kana_comma = (.)1188;
	const c_int KEY_kana_conjunctive = (.)1189;
	const c_int KEY_kana_e = (.)1194;
	const c_int KEY_kana_fullstop = (.)1185;
	const c_int KEY_kana_i = (.)1192;
	const c_int KEY_kana_middledot = (.)1189;
	const c_int KEY_kana_o = (.)1195;
	const c_int KEY_kana_openingbracket = (.)1186;
	const c_int KEY_kana_switch = (.)65406;
	const c_int KEY_kana_tsu = (.)1199;
	const c_int KEY_kana_tu = (.)1199;
	const c_int KEY_kana_u = (.)1193;
	const c_int KEY_kana_ya = (.)1196;
	const c_int KEY_kana_yo = (.)1198;
	const c_int KEY_kana_yu = (.)1197;
	const c_int KEY_kappa = (.)930;
	const c_int KEY_kcedilla = (.)1011;
	const c_int KEY_kra = (.)930;
	const c_int KEY_l = (.)108;
	const c_int KEY_lacute = (.)485;
	const c_int KEY_latincross = (.)2777;
	const c_int KEY_lbelowdot = (.)16784951;
	const c_int KEY_lcaron = (.)437;
	const c_int KEY_lcedilla = (.)950;
	const c_int KEY_leftanglebracket = (.)2748;
	const c_int KEY_leftarrow = (.)2299;
	const c_int KEY_leftcaret = (.)2979;
	const c_int KEY_leftdoublequotemark = (.)2770;
	const c_int KEY_leftmiddlecurlybrace = (.)2223;
	const c_int KEY_leftopentriangle = (.)2764;
	const c_int KEY_leftpointer = (.)2794;
	const c_int KEY_leftradical = (.)2209;
	const c_int KEY_leftshoe = (.)3034;
	const c_int KEY_leftsinglequotemark = (.)2768;
	const c_int KEY_leftt = (.)2548;
	const c_int KEY_lefttack = (.)3036;
	const c_int KEY_less = (.)60;
	const c_int KEY_lessthanequal = (.)2236;
	const c_int KEY_lf = (.)2533;
	const c_int KEY_logicaland = (.)2270;
	const c_int KEY_logicalor = (.)2271;
	const c_int KEY_lowleftcorner = (.)2541;
	const c_int KEY_lowrightcorner = (.)2538;
	const c_int KEY_lstroke = (.)435;
	const c_int KEY_m = (.)109;
	const c_int KEY_mabovedot = (.)16784961;
	const c_int KEY_macron = (.)175;
	const c_int KEY_malesymbol = (.)2807;
	const c_int KEY_maltesecross = (.)2800;
	const c_int KEY_marker = (.)2751;
	const c_int KEY_masculine = (.)186;
	const c_int KEY_minus = (.)45;
	const c_int KEY_minutes = (.)2774;
	const c_int KEY_mu = (.)181;
	const c_int KEY_multiply = (.)215;
	const c_int KEY_musicalflat = (.)2806;
	const c_int KEY_musicalsharp = (.)2805;
	const c_int KEY_n = (.)110;
	const c_int KEY_nabla = (.)2245;
	const c_int KEY_nacute = (.)497;
	const c_int KEY_ncaron = (.)498;
	const c_int KEY_ncedilla = (.)1009;
	const c_int KEY_ninesubscript = (.)16785545;
	const c_int KEY_ninesuperior = (.)16785529;
	const c_int KEY_nl = (.)2536;
	const c_int KEY_nobreakspace = (.)160;
	const c_int KEY_notapproxeq = (.)16785991;
	const c_int KEY_notelementof = (.)16785929;
	const c_int KEY_notequal = (.)2237;
	const c_int KEY_notidentical = (.)16786018;
	const c_int KEY_notsign = (.)172;
	const c_int KEY_ntilde = (.)241;
	const c_int KEY_numbersign = (.)35;
	const c_int KEY_numerosign = (.)1712;
	const c_int KEY_o = (.)111;
	const c_int KEY_oacute = (.)243;
	const c_int KEY_obarred = (.)16777845;
	const c_int KEY_obelowdot = (.)16785101;
	const c_int KEY_ocaron = (.)16777682;
	const c_int KEY_ocircumflex = (.)244;
	const c_int KEY_ocircumflexacute = (.)16785105;
	const c_int KEY_ocircumflexbelowdot = (.)16785113;
	const c_int KEY_ocircumflexgrave = (.)16785107;
	const c_int KEY_ocircumflexhook = (.)16785109;
	const c_int KEY_ocircumflextilde = (.)16785111;
	const c_int KEY_odiaeresis = (.)246;
	const c_int KEY_odoubleacute = (.)501;
	const c_int KEY_oe = (.)5053;
	const c_int KEY_ogonek = (.)434;
	const c_int KEY_ograve = (.)242;
	const c_int KEY_ohook = (.)16785103;
	const c_int KEY_ohorn = (.)16777633;
	const c_int KEY_ohornacute = (.)16785115;
	const c_int KEY_ohornbelowdot = (.)16785123;
	const c_int KEY_ohorngrave = (.)16785117;
	const c_int KEY_ohornhook = (.)16785119;
	const c_int KEY_ohorntilde = (.)16785121;
	const c_int KEY_omacron = (.)1010;
	const c_int KEY_oneeighth = (.)2755;
	const c_int KEY_onefifth = (.)2738;
	const c_int KEY_onehalf = (.)189;
	const c_int KEY_onequarter = (.)188;
	const c_int KEY_onesixth = (.)2742;
	const c_int KEY_onesubscript = (.)16785537;
	const c_int KEY_onesuperior = (.)185;
	const c_int KEY_onethird = (.)2736;
	const c_int KEY_ooblique = (.)248;
	const c_int KEY_openrectbullet = (.)2786;
	const c_int KEY_openstar = (.)2789;
	const c_int KEY_opentribulletdown = (.)2788;
	const c_int KEY_opentribulletup = (.)2787;
	const c_int KEY_ordfeminine = (.)170;
	const c_int KEY_oslash = (.)248;
	const c_int KEY_otilde = (.)245;
	const c_int KEY_overbar = (.)3008;
	const c_int KEY_overline = (.)1150;
	const c_int KEY_p = (.)112;
	const c_int KEY_pabovedot = (.)16784983;
	const c_int KEY_paragraph = (.)182;
	const c_int KEY_parenleft = (.)40;
	const c_int KEY_parenright = (.)41;
	const c_int KEY_partdifferential = (.)16785922;
	const c_int KEY_partialderivative = (.)2287;
	const c_int KEY_percent = (.)37;
	const c_int KEY_period = (.)46;
	const c_int KEY_periodcentered = (.)183;
	const c_int KEY_permille = (.)2773;
	const c_int KEY_phonographcopyright = (.)2811;
	const c_int KEY_plus = (.)43;
	const c_int KEY_plusminus = (.)177;
	const c_int KEY_prescription = (.)2772;
	const c_int KEY_prolongedsound = (.)1200;
	const c_int KEY_punctspace = (.)2726;
	const c_int KEY_q = (.)113;
	const c_int KEY_quad = (.)3020;
	const c_int KEY_question = (.)63;
	const c_int KEY_questiondown = (.)191;
	const c_int KEY_quotedbl = (.)34;
	const c_int KEY_quoteleft = (.)96;
	const c_int KEY_quoteright = (.)39;
	const c_int KEY_r = (.)114;
	const c_int KEY_racute = (.)480;
	const c_int KEY_radical = (.)2262;
	const c_int KEY_rcaron = (.)504;
	const c_int KEY_rcedilla = (.)947;
	const c_int KEY_registered = (.)174;
	const c_int KEY_rightanglebracket = (.)2750;
	const c_int KEY_rightarrow = (.)2301;
	const c_int KEY_rightcaret = (.)2982;
	const c_int KEY_rightdoublequotemark = (.)2771;
	const c_int KEY_rightmiddlecurlybrace = (.)2224;
	const c_int KEY_rightmiddlesummation = (.)2231;
	const c_int KEY_rightopentriangle = (.)2765;
	const c_int KEY_rightpointer = (.)2795;
	const c_int KEY_rightshoe = (.)3032;
	const c_int KEY_rightsinglequotemark = (.)2769;
	const c_int KEY_rightt = (.)2549;
	const c_int KEY_righttack = (.)3068;
	const c_int KEY_s = (.)115;
	const c_int KEY_sabovedot = (.)16784993;
	const c_int KEY_sacute = (.)438;
	const c_int KEY_scaron = (.)441;
	const c_int KEY_scedilla = (.)442;
	const c_int KEY_schwa = (.)16777817;
	const c_int KEY_scircumflex = (.)766;
	const c_int KEY_script_switch = (.)65406;
	const c_int KEY_seconds = (.)2775;
	const c_int KEY_section = (.)167;
	const c_int KEY_semicolon = (.)59;
	const c_int KEY_semivoicedsound = (.)1247;
	const c_int KEY_seveneighths = (.)2758;
	const c_int KEY_sevensubscript = (.)16785543;
	const c_int KEY_sevensuperior = (.)16785527;
	const c_int KEY_signaturemark = (.)2762;
	const c_int KEY_signifblank = (.)2732;
	const c_int KEY_similarequal = (.)2249;
	const c_int KEY_singlelowquotemark = (.)2813;
	const c_int KEY_sixsubscript = (.)16785542;
	const c_int KEY_sixsuperior = (.)16785526;
	const c_int KEY_slash = (.)47;
	const c_int KEY_soliddiamond = (.)2528;
	const c_int KEY_space = (.)32;
	const c_int KEY_squareroot = (.)16785946;
	const c_int KEY_ssharp = (.)223;
	const c_int KEY_sterling = (.)163;
	const c_int KEY_stricteq = (.)16786019;
	const c_int KEY_t = (.)116;
	const c_int KEY_tabovedot = (.)16785003;
	const c_int KEY_tcaron = (.)443;
	const c_int KEY_tcedilla = (.)510;
	const c_int KEY_telephone = (.)2809;
	const c_int KEY_telephonerecorder = (.)2810;
	const c_int KEY_therefore = (.)2240;
	const c_int KEY_thinspace = (.)2727;
	const c_int KEY_thorn = (.)254;
	const c_int KEY_threeeighths = (.)2756;
	const c_int KEY_threefifths = (.)2740;
	const c_int KEY_threequarters = (.)190;
	const c_int KEY_threesubscript = (.)16785539;
	const c_int KEY_threesuperior = (.)179;
	const c_int KEY_tintegral = (.)16785965;
	const c_int KEY_topintegral = (.)2212;
	const c_int KEY_topleftparens = (.)2219;
	const c_int KEY_topleftradical = (.)2210;
	const c_int KEY_topleftsqbracket = (.)2215;
	const c_int KEY_topleftsummation = (.)2225;
	const c_int KEY_toprightparens = (.)2221;
	const c_int KEY_toprightsqbracket = (.)2217;
	const c_int KEY_toprightsummation = (.)2229;
	const c_int KEY_topt = (.)2551;
	const c_int KEY_topvertsummationconnector = (.)2227;
	const c_int KEY_trademark = (.)2761;
	const c_int KEY_trademarkincircle = (.)2763;
	const c_int KEY_tslash = (.)956;
	const c_int KEY_twofifths = (.)2739;
	const c_int KEY_twosubscript = (.)16785538;
	const c_int KEY_twosuperior = (.)178;
	const c_int KEY_twothirds = (.)2737;
	const c_int KEY_u = (.)117;
	const c_int KEY_uacute = (.)250;
	const c_int KEY_ubelowdot = (.)16785125;
	const c_int KEY_ubreve = (.)765;
	const c_int KEY_ucircumflex = (.)251;
	const c_int KEY_udiaeresis = (.)252;
	const c_int KEY_udoubleacute = (.)507;
	const c_int KEY_ugrave = (.)249;
	const c_int KEY_uhook = (.)16785127;
	const c_int KEY_uhorn = (.)16777648;
	const c_int KEY_uhornacute = (.)16785129;
	const c_int KEY_uhornbelowdot = (.)16785137;
	const c_int KEY_uhorngrave = (.)16785131;
	const c_int KEY_uhornhook = (.)16785133;
	const c_int KEY_uhorntilde = (.)16785135;
	const c_int KEY_umacron = (.)1022;
	const c_int KEY_underbar = (.)3014;
	const c_int KEY_underscore = (.)95;
	const c_int KEY_union = (.)2269;
	const c_int KEY_uogonek = (.)1017;
	const c_int KEY_uparrow = (.)2300;
	const c_int KEY_upcaret = (.)2985;
	const c_int KEY_upleftcorner = (.)2540;
	const c_int KEY_uprightcorner = (.)2539;
	const c_int KEY_upshoe = (.)3011;
	const c_int KEY_upstile = (.)3027;
	const c_int KEY_uptack = (.)3022;
	const c_int KEY_uring = (.)505;
	const c_int KEY_utilde = (.)1021;
	const c_int KEY_v = (.)118;
	const c_int KEY_variation = (.)2241;
	const c_int KEY_vertbar = (.)2552;
	const c_int KEY_vertconnector = (.)2214;
	const c_int KEY_voicedsound = (.)1246;
	const c_int KEY_vt = (.)2537;
	const c_int KEY_w = (.)119;
	const c_int KEY_wacute = (.)16785027;
	const c_int KEY_wcircumflex = (.)16777589;
	const c_int KEY_wdiaeresis = (.)16785029;
	const c_int KEY_wgrave = (.)16785025;
	const c_int KEY_x = (.)120;
	const c_int KEY_xabovedot = (.)16785035;
	const c_int KEY_y = (.)121;
	const c_int KEY_yacute = (.)253;
	const c_int KEY_ybelowdot = (.)16785141;
	const c_int KEY_ycircumflex = (.)16777591;
	const c_int KEY_ydiaeresis = (.)255;
	const c_int KEY_yen = (.)165;
	const c_int KEY_ygrave = (.)16785139;
	const c_int KEY_yhook = (.)16785143;
	const c_int KEY_ytilde = (.)16785145;
	const c_int KEY_z = (.)122;
	const c_int KEY_zabovedot = (.)447;
	const c_int KEY_zacute = (.)444;
	const c_int KEY_zcaron = (.)446;
	const c_int KEY_zerosubscript = (.)16785536;
	const c_int KEY_zerosuperior = (.)16785520;
	const c_int KEY_zstroke = (.)16777654;
	const c_int MODIFIER_MASK = (.)469769999;
	const c_int PRIORITY_REDRAW = (.)120;
	[CRepr]
	public struct AppLaunchContext : Gio.AppLaunchContext
	{
		[LinkName("gdk_app_launch_context_get_display")]
		public static extern Display* GetDisplay(AppLaunchContext* context);
		[LinkName("gdk_app_launch_context_set_desktop")]
		public static extern void SetDesktop(AppLaunchContext* context, c_int desktop);
		[LinkName("gdk_app_launch_context_set_icon")]
		public static extern void SetIcon(AppLaunchContext* context, Gio.Icon* icon);
		[LinkName("gdk_app_launch_context_set_icon_name")]
		public static extern void SetIconName(AppLaunchContext* context, char8* icon_name);
		[LinkName("gdk_app_launch_context_set_timestamp")]
		public static extern void SetTimestamp(AppLaunchContext* context, c_uint timestamp);
	}
	[CRepr]
	public struct ButtonEvent : Event
	{
		[LinkName("gdk_button_event_get_button")]
		public static extern c_uint GetButton(ButtonEvent* event);
	}
	[CRepr]
	public struct CairoContext : DrawContext
	{
		[LinkName("gdk_cairo_context_cairo_create")]
		public static extern cairo.Context* CairoCreate(CairoContext* self);
	}
	[CRepr]
	public struct Clipboard : GObject.Object
	{
		[LinkName("gdk_clipboard_get_content")]
		public static extern ContentProvider* GetContent(Clipboard* clipboard);
		[LinkName("gdk_clipboard_get_display")]
		public static extern Display* GetDisplay(Clipboard* clipboard);
		[LinkName("gdk_clipboard_get_formats")]
		public static extern ContentFormats* GetFormats(Clipboard* clipboard);
		[LinkName("gdk_clipboard_is_local")]
		public static extern c_int IsLocal(Clipboard* clipboard);
		[LinkName("gdk_clipboard_read_async")]
		public static extern void ReadAsync(Clipboard* clipboard, char8** mime_types, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_clipboard_read_finish")]
		public static extern Gio.InputStream* ReadFinish(Clipboard* clipboard, Gio.AsyncResult* result, char8** out_mime_type);
		[LinkName("gdk_clipboard_read_text_async")]
		public static extern void ReadTextAsync(Clipboard* clipboard, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_clipboard_read_text_finish")]
		public static extern char8* ReadTextFinish(Clipboard* clipboard, Gio.AsyncResult* result);
		[LinkName("gdk_clipboard_read_texture_async")]
		public static extern void ReadTextureAsync(Clipboard* clipboard, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_clipboard_read_texture_finish")]
		public static extern Texture* ReadTextureFinish(Clipboard* clipboard, Gio.AsyncResult* result);
		[LinkName("gdk_clipboard_read_value_async")]
		public static extern void ReadValueAsync(Clipboard* clipboard, GLib.Type type, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_clipboard_read_value_finish")]
		public static extern GObject.Value* ReadValueFinish(Clipboard* clipboard, Gio.AsyncResult* result);
		[LinkName("gdk_clipboard_set_content")]
		public static extern c_int SetContent(Clipboard* clipboard, ContentProvider* provider);
		[LinkName("gdk_clipboard_set_value")]
		public static extern void SetValue(Clipboard* clipboard, GObject.Value* value);
		[LinkName("gdk_clipboard_store_async")]
		public static extern void StoreAsync(Clipboard* clipboard, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_clipboard_store_finish")]
		public static extern c_int StoreFinish(Clipboard* clipboard, Gio.AsyncResult* result);
		public function void ChangedFunc(Clipboard* self, void* user_data);
	}
	[CRepr]
	public struct ContentDeserializer : GObject.Object
	{
		[LinkName("gdk_content_deserializer_get_cancellable")]
		public static extern Gio.Cancellable* GetCancellable(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_gtype")]
		public static extern GLib.Type GetGtype(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_input_stream")]
		public static extern Gio.InputStream* GetInputStream(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_mime_type")]
		public static extern char8* GetMimeType(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_priority")]
		public static extern c_int GetPriority(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_task_data")]
		public static extern void* GetTaskData(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_user_data")]
		public static extern void* GetUserData(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_get_value")]
		public static extern GObject.Value* GetValue(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_return_error")]
		public static extern void ReturnError(ContentDeserializer* deserializer, GLib.Error* error);
		[LinkName("gdk_content_deserializer_return_success")]
		public static extern void ReturnSuccess(ContentDeserializer* deserializer);
		[LinkName("gdk_content_deserializer_set_task_data")]
		public static extern void SetTaskData(ContentDeserializer* deserializer, void* data, GLib.DestroyNotify notify);
	}
	[CRepr]
	public struct ContentProvider : GObject.Object
	{
		[LinkName("gdk_content_provider_new_for_bytes")]
		public static extern ContentProvider* NewForBytes(char8* mime_type, GLib.Bytes* bytes);
		[LinkName("gdk_content_provider_new_for_value")]
		public static extern ContentProvider* NewForValue(GObject.Value* value);
		[LinkName("gdk_content_provider_new_union")]
		public static extern ContentProvider* NewUnion(ContentProvider** providers, c_ulong n_providers);
		[LinkName("gdk_content_provider_content_changed")]
		public static extern void ContentChanged(ContentProvider* provider);
		[LinkName("gdk_content_provider_get_value")]
		public static extern c_int GetValue(ContentProvider* provider, GObject.Value* value);
		[LinkName("gdk_content_provider_ref_formats")]
		public static extern ContentFormats* RefFormats(ContentProvider* provider);
		[LinkName("gdk_content_provider_ref_storable_formats")]
		public static extern ContentFormats* RefStorableFormats(ContentProvider* provider);
		[LinkName("gdk_content_provider_write_mime_type_async")]
		public static extern void WriteMimeTypeAsync(ContentProvider* provider, char8* mime_type, Gio.OutputStream* stream, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_content_provider_write_mime_type_finish")]
		public static extern c_int WriteMimeTypeFinish(ContentProvider* provider, Gio.AsyncResult* result);
		public function void ContentChangedFunc(ContentProvider* self, void* user_data);
	}
	[CRepr]
	public struct ContentSerializer : GObject.Object
	{
		[LinkName("gdk_content_serializer_get_cancellable")]
		public static extern Gio.Cancellable* GetCancellable(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_gtype")]
		public static extern GLib.Type GetGtype(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_mime_type")]
		public static extern char8* GetMimeType(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_output_stream")]
		public static extern Gio.OutputStream* GetOutputStream(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_priority")]
		public static extern c_int GetPriority(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_task_data")]
		public static extern void* GetTaskData(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_user_data")]
		public static extern void* GetUserData(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_get_value")]
		public static extern GObject.Value* GetValue(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_return_error")]
		public static extern void ReturnError(ContentSerializer* serializer, GLib.Error* error);
		[LinkName("gdk_content_serializer_return_success")]
		public static extern void ReturnSuccess(ContentSerializer* serializer);
		[LinkName("gdk_content_serializer_set_task_data")]
		public static extern void SetTaskData(ContentSerializer* serializer, void* data, GLib.DestroyNotify notify);
	}
	[CRepr]
	public struct CrossingEvent : Event
	{
		[LinkName("gdk_crossing_event_get_detail")]
		public static extern NotifyType GetDetail(CrossingEvent* event);
		[LinkName("gdk_crossing_event_get_focus")]
		public static extern c_int GetFocus(CrossingEvent* event);
		[LinkName("gdk_crossing_event_get_mode")]
		public static extern CrossingMode GetMode(CrossingEvent* event);
	}
	[CRepr]
	public struct Cursor : GObject.Object
	{
		[LinkName("gdk_cursor_new_from_name")]
		public static extern Cursor* NewFromName(char8* name, Cursor* fallback);
		[LinkName("gdk_cursor_new_from_texture")]
		public static extern Cursor* NewFromTexture(Texture* texture, c_int hotspot_x, c_int hotspot_y, Cursor* fallback);
		[LinkName("gdk_cursor_get_fallback")]
		public static extern Cursor* GetFallback(Cursor* cursor);
		[LinkName("gdk_cursor_get_hotspot_x")]
		public static extern c_int GetHotspotX(Cursor* cursor);
		[LinkName("gdk_cursor_get_hotspot_y")]
		public static extern c_int GetHotspotY(Cursor* cursor);
		[LinkName("gdk_cursor_get_name")]
		public static extern char8* GetName(Cursor* cursor);
		[LinkName("gdk_cursor_get_texture")]
		public static extern Texture* GetTexture(Cursor* cursor);
	}
	[CRepr]
	public struct DNDEvent : Event
	{
		[LinkName("gdk_dnd_event_get_drop")]
		public static extern Drop* GetDrop(DNDEvent* event);
	}
	[CRepr]
	public struct DeleteEvent : Event
	{
	}
	[CRepr]
	public struct Device : GObject.Object
	{
		[LinkName("gdk_device_get_caps_lock_state")]
		public static extern c_int GetCapsLockState(Device* device);
		[LinkName("gdk_device_get_device_tool")]
		public static extern DeviceTool* GetDeviceTool(Device* device);
		[LinkName("gdk_device_get_direction")]
		public static extern Pango.Direction GetDirection(Device* device);
		[LinkName("gdk_device_get_display")]
		public static extern Display* GetDisplay(Device* device);
		[LinkName("gdk_device_get_has_cursor")]
		public static extern c_int GetHasCursor(Device* device);
		[LinkName("gdk_device_get_modifier_state")]
		public static extern ModifierType GetModifierState(Device* device);
		[LinkName("gdk_device_get_name")]
		public static extern char8* GetName(Device* device);
		[LinkName("gdk_device_get_num_lock_state")]
		public static extern c_int GetNumLockState(Device* device);
		[LinkName("gdk_device_get_num_touches")]
		public static extern c_uint GetNumTouches(Device* device);
		[LinkName("gdk_device_get_product_id")]
		public static extern char8* GetProductId(Device* device);
		[LinkName("gdk_device_get_scroll_lock_state")]
		public static extern c_int GetScrollLockState(Device* device);
		[LinkName("gdk_device_get_seat")]
		public static extern Seat* GetSeat(Device* device);
		[LinkName("gdk_device_get_source")]
		public static extern InputSource GetSource(Device* device);
		[LinkName("gdk_device_get_surface_at_position")]
		public static extern Surface* GetSurfaceAtPosition(Device* device, double* win_x, double* win_y);
		[LinkName("gdk_device_get_timestamp")]
		public static extern c_uint GetTimestamp(Device* device);
		[LinkName("gdk_device_get_vendor_id")]
		public static extern char8* GetVendorId(Device* device);
		[LinkName("gdk_device_has_bidi_layouts")]
		public static extern c_int HasBidiLayouts(Device* device);
		public function void ChangedFunc(Device* self, void* user_data);
		public function void ToolChangedFunc(Device* self, DeviceTool tool, void* user_data);
	}
	[CRepr]
	public struct DeviceTool : GObject.Object
	{
		[LinkName("gdk_device_tool_get_axes")]
		public static extern AxisFlags GetAxes(DeviceTool* tool);
		[LinkName("gdk_device_tool_get_hardware_id")]
		public static extern c_ulonglong GetHardwareId(DeviceTool* tool);
		[LinkName("gdk_device_tool_get_serial")]
		public static extern c_ulonglong GetSerial(DeviceTool* tool);
		[LinkName("gdk_device_tool_get_tool_type")]
		public static extern DeviceToolType GetToolType(DeviceTool* tool);
	}
	[CRepr]
	public struct Display : GObject.Object
	{
		[LinkName("gdk_display_beep")]
		public static extern void Beep(Display* display);
		[LinkName("gdk_display_close")]
		public static extern void Close(Display* display);
		[LinkName("gdk_display_create_gl_context")]
		public static extern GLContext* CreateGlContext(Display* self);
		[LinkName("gdk_display_device_is_grabbed")]
		public static extern c_int DeviceIsGrabbed(Display* display, Device* device);
		[LinkName("gdk_display_flush")]
		public static extern void Flush(Display* display);
		[LinkName("gdk_display_get_app_launch_context")]
		public static extern AppLaunchContext* GetAppLaunchContext(Display* display);
		[LinkName("gdk_display_get_clipboard")]
		public static extern Clipboard* GetClipboard(Display* display);
		[LinkName("gdk_display_get_default_seat")]
		public static extern Seat* GetDefaultSeat(Display* display);
		[LinkName("gdk_display_get_monitor_at_surface")]
		public static extern Monitor* GetMonitorAtSurface(Display* display, Surface* surface);
		[LinkName("gdk_display_get_monitors")]
		public static extern Gio.ListModel* GetMonitors(Display* self);
		[LinkName("gdk_display_get_name")]
		public static extern char8* GetName(Display* display);
		[LinkName("gdk_display_get_primary_clipboard")]
		public static extern Clipboard* GetPrimaryClipboard(Display* display);
		[LinkName("gdk_display_get_setting")]
		public static extern c_int GetSetting(Display* display, char8* name, GObject.Value* value);
		[LinkName("gdk_display_get_startup_notification_id")]
		public static extern char8* GetStartupNotificationId(Display* display);
		[LinkName("gdk_display_is_closed")]
		public static extern c_int IsClosed(Display* display);
		[LinkName("gdk_display_is_composited")]
		public static extern c_int IsComposited(Display* display);
		[LinkName("gdk_display_is_rgba")]
		public static extern c_int IsRgba(Display* display);
		[LinkName("gdk_display_list_seats")]
		public static extern GLib.List* ListSeats(Display* display);
		[LinkName("gdk_display_map_keycode")]
		public static extern c_int MapKeycode(Display* display, c_uint keycode, KeymapKey** keys, c_uint** keyvals, c_int* n_entries);
		[LinkName("gdk_display_map_keyval")]
		public static extern c_int MapKeyval(Display* display, c_uint keyval, KeymapKey** keys, c_int* n_keys);
		[LinkName("gdk_display_notify_startup_complete")]
		public static extern void NotifyStartupComplete(Display* display, char8* startup_id);
		[LinkName("gdk_display_prepare_gl")]
		public static extern c_int PrepareGl(Display* self);
		[LinkName("gdk_display_put_event")]
		public static extern void PutEvent(Display* display, Event* event);
		[LinkName("gdk_display_supports_input_shapes")]
		public static extern c_int SupportsInputShapes(Display* display);
		[LinkName("gdk_display_sync")]
		public static extern void Sync(Display* display);
		[LinkName("gdk_display_translate_key")]
		public static extern c_int TranslateKey(Display* display, c_uint keycode, ModifierType state, c_int group, c_uint* keyval, c_int* effective_group, c_int* level, ModifierType* consumed);
		public function void ClosedFunc(Display* self, c_int is_error, void* user_data);
		public function void OpenedFunc(Display* self, void* user_data);
		public function void SeatAddedFunc(Display* self, Seat seat, void* user_data);
		public function void SeatRemovedFunc(Display* self, Seat seat, void* user_data);
		public function void SettingChangedFunc(Display* self, char8* setting, void* user_data);
	}
	[CRepr]
	public struct DisplayManager : GObject.Object
	{
		[LinkName("gdk_display_manager_get_default_display")]
		public static extern Display* GetDefaultDisplay(DisplayManager* manager);
		[LinkName("gdk_display_manager_list_displays")]
		public static extern GLib.SList* ListDisplays(DisplayManager* manager);
		[LinkName("gdk_display_manager_open_display")]
		public static extern Display* OpenDisplay(DisplayManager* manager, char8* name);
		[LinkName("gdk_display_manager_set_default_display")]
		public static extern void SetDefaultDisplay(DisplayManager* manager, Display* display);
		public function void DisplayOpenedFunc(DisplayManager* self, Display display, void* user_data);
	}
	[CRepr]
	public struct Drag : GObject.Object
	{
		[LinkName("gdk_drag_drop_done")]
		public static extern void DropDone(Drag* drag, c_int success);
		[LinkName("gdk_drag_get_actions")]
		public static extern DragAction GetActions(Drag* drag);
		[LinkName("gdk_drag_get_content")]
		public static extern ContentProvider* GetContent(Drag* drag);
		[LinkName("gdk_drag_get_device")]
		public static extern Device* GetDevice(Drag* drag);
		[LinkName("gdk_drag_get_display")]
		public static extern Display* GetDisplay(Drag* drag);
		[LinkName("gdk_drag_get_drag_surface")]
		public static extern Surface* GetDragSurface(Drag* drag);
		[LinkName("gdk_drag_get_formats")]
		public static extern ContentFormats* GetFormats(Drag* drag);
		[LinkName("gdk_drag_get_selected_action")]
		public static extern DragAction GetSelectedAction(Drag* drag);
		[LinkName("gdk_drag_get_surface")]
		public static extern Surface* GetSurface(Drag* drag);
		[LinkName("gdk_drag_set_hotspot")]
		public static extern void SetHotspot(Drag* drag, c_int hot_x, c_int hot_y);
		public function void CancelFunc(Drag* self, DragCancelReason reason, void* user_data);
		public function void DndFinishedFunc(Drag* self, void* user_data);
		public function void DropPerformedFunc(Drag* self, void* user_data);
	}
	[CRepr]
	public struct DrawContext : GObject.Object
	{
		[LinkName("gdk_draw_context_begin_frame")]
		public static extern void BeginFrame(DrawContext* context, cairo.Region* region);
		[LinkName("gdk_draw_context_end_frame")]
		public static extern void EndFrame(DrawContext* context);
		[LinkName("gdk_draw_context_get_display")]
		public static extern Display* GetDisplay(DrawContext* context);
		[LinkName("gdk_draw_context_get_frame_region")]
		public static extern cairo.Region* GetFrameRegion(DrawContext* context);
		[LinkName("gdk_draw_context_get_surface")]
		public static extern Surface* GetSurface(DrawContext* context);
		[LinkName("gdk_draw_context_is_in_frame")]
		public static extern c_int IsInFrame(DrawContext* context);
	}
	[CRepr]
	public struct Drop : GObject.Object
	{
		[LinkName("gdk_drop_finish")]
		public static extern void Finish(Drop* self, DragAction action);
		[LinkName("gdk_drop_get_actions")]
		public static extern DragAction GetActions(Drop* self);
		[LinkName("gdk_drop_get_device")]
		public static extern Device* GetDevice(Drop* self);
		[LinkName("gdk_drop_get_display")]
		public static extern Display* GetDisplay(Drop* self);
		[LinkName("gdk_drop_get_drag")]
		public static extern Drag* GetDrag(Drop* self);
		[LinkName("gdk_drop_get_formats")]
		public static extern ContentFormats* GetFormats(Drop* self);
		[LinkName("gdk_drop_get_surface")]
		public static extern Surface* GetSurface(Drop* self);
		[LinkName("gdk_drop_read_async")]
		public static extern void ReadAsync(Drop* self, char8** mime_types, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_drop_read_finish")]
		public static extern Gio.InputStream* ReadFinish(Drop* self, Gio.AsyncResult* result, char8** out_mime_type);
		[LinkName("gdk_drop_read_value_async")]
		public static extern void ReadValueAsync(Drop* self, GLib.Type type, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_drop_read_value_finish")]
		public static extern GObject.Value* ReadValueFinish(Drop* self, Gio.AsyncResult* result);
		[LinkName("gdk_drop_status")]
		public static extern void Status(Drop* self, DragAction actions, DragAction preferred);
	}
	[CRepr]
	public struct Event
	{
		[LinkName("gdk_events_get_angle")]
		public static extern c_int GetAngle(Event* event1, Event* event2, double* angle);
		[LinkName("gdk_events_get_center")]
		public static extern c_int GetCenter(Event* event1, Event* event2, double* x, double* y);
		[LinkName("gdk_events_get_distance")]
		public static extern c_int GetDistance(Event* event1, Event* event2, double* distance);
		[LinkName("gdk_event_get_axes")]
		public static extern c_int GetAxes(Event* event, double** axes, c_uint* n_axes);
		[LinkName("gdk_event_get_axis")]
		public static extern c_int GetAxis(Event* event, AxisUse axis_use, double* value);
		[LinkName("gdk_event_get_device")]
		public static extern Device* GetDevice(Event* event);
		[LinkName("gdk_event_get_device_tool")]
		public static extern DeviceTool* GetDeviceTool(Event* event);
		[LinkName("gdk_event_get_display")]
		public static extern Display* GetDisplay(Event* event);
		[LinkName("gdk_event_get_event_sequence")]
		public static extern EventSequence* GetEventSequence(Event* event);
		[LinkName("gdk_event_get_event_type")]
		public static extern EventType GetEventType(Event* event);
		[LinkName("gdk_event_get_history")]
		public static extern TimeCoord* GetHistory(Event* event, c_uint* out_n_coords);
		[LinkName("gdk_event_get_modifier_state")]
		public static extern ModifierType GetModifierState(Event* event);
		[LinkName("gdk_event_get_pointer_emulated")]
		public static extern c_int GetPointerEmulated(Event* event);
		[LinkName("gdk_event_get_position")]
		public static extern c_int GetPosition(Event* event, double* x, double* y);
		[LinkName("gdk_event_get_seat")]
		public static extern Seat* GetSeat(Event* event);
		[LinkName("gdk_event_get_surface")]
		public static extern Surface* GetSurface(Event* event);
		[LinkName("gdk_event_get_time")]
		public static extern c_uint GetTime(Event* event);
		[LinkName("gdk_event_ref")]
		public static extern Event* Ref(Event* event);
		[LinkName("gdk_event_triggers_context_menu")]
		public static extern c_int TriggersContextMenu(Event* event);
		[LinkName("gdk_event_unref")]
		public static extern void Unref(Event* event);
	}
	[CRepr]
	public struct FocusEvent : Event
	{
		[LinkName("gdk_focus_event_get_in")]
		public static extern c_int GetIn(FocusEvent* event);
	}
	[CRepr]
	public struct FrameClock : GObject.Object
	{
		[LinkName("gdk_frame_clock_begin_updating")]
		public static extern void BeginUpdating(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_end_updating")]
		public static extern void EndUpdating(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_current_timings")]
		public static extern FrameTimings* GetCurrentTimings(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_fps")]
		public static extern double GetFps(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_frame_counter")]
		public static extern c_longlong GetFrameCounter(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_frame_time")]
		public static extern c_longlong GetFrameTime(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_history_start")]
		public static extern c_longlong GetHistoryStart(FrameClock* frame_clock);
		[LinkName("gdk_frame_clock_get_refresh_info")]
		public static extern void GetRefreshInfo(FrameClock* frame_clock, c_longlong base_time, c_longlong* refresh_interval_return, c_longlong* presentation_time_return);
		[LinkName("gdk_frame_clock_get_timings")]
		public static extern FrameTimings* GetTimings(FrameClock* frame_clock, c_longlong frame_counter);
		[LinkName("gdk_frame_clock_request_phase")]
		public static extern void RequestPhase(FrameClock* frame_clock, FrameClockPhase phase);
		public function void AfterPaintFunc(FrameClock* self, void* user_data);
		public function void BeforePaintFunc(FrameClock* self, void* user_data);
		public function void FlushEventsFunc(FrameClock* self, void* user_data);
		public function void LayoutFunc(FrameClock* self, void* user_data);
		public function void PaintFunc(FrameClock* self, void* user_data);
		public function void ResumeEventsFunc(FrameClock* self, void* user_data);
		public function void UpdateFunc(FrameClock* self, void* user_data);
	}
	[CRepr]
	public struct GLContext : DrawContext
	{
		[LinkName("gdk_gl_context_get_allowed_apis")]
		public static extern GLAPI GetAllowedApis(GLContext* self);
		[LinkName("gdk_gl_context_get_api")]
		public static extern GLAPI GetApi(GLContext* self);
		[LinkName("gdk_gl_context_get_debug_enabled")]
		public static extern c_int GetDebugEnabled(GLContext* context);
		[LinkName("gdk_gl_context_get_display")]
		public static extern Display* GetDisplay(GLContext* context);
		[LinkName("gdk_gl_context_get_forward_compatible")]
		public static extern c_int GetForwardCompatible(GLContext* context);
		[LinkName("gdk_gl_context_get_required_version")]
		public static extern void GetRequiredVersion(GLContext* context, c_int* major, c_int* minor);
		[LinkName("gdk_gl_context_get_shared_context")]
		public static extern GLContext* GetSharedContext(GLContext* context);
		[LinkName("gdk_gl_context_get_surface")]
		public static extern Surface* GetSurface(GLContext* context);
		[LinkName("gdk_gl_context_get_use_es")]
		public static extern c_int GetUseEs(GLContext* context);
		[LinkName("gdk_gl_context_get_version")]
		public static extern void GetVersion(GLContext* context, c_int* major, c_int* minor);
		[LinkName("gdk_gl_context_is_legacy")]
		public static extern c_int IsLegacy(GLContext* context);
		[LinkName("gdk_gl_context_is_shared")]
		public static extern c_int IsShared(GLContext* self, GLContext* other);
		[LinkName("gdk_gl_context_make_current")]
		public static extern void MakeCurrent(GLContext* context);
		[LinkName("gdk_gl_context_realize")]
		public static extern c_int Realize(GLContext* context);
		[LinkName("gdk_gl_context_set_allowed_apis")]
		public static extern void SetAllowedApis(GLContext* self, GLAPI apis);
		[LinkName("gdk_gl_context_set_debug_enabled")]
		public static extern void SetDebugEnabled(GLContext* context, c_int enabled);
		[LinkName("gdk_gl_context_set_forward_compatible")]
		public static extern void SetForwardCompatible(GLContext* context, c_int compatible);
		[LinkName("gdk_gl_context_set_required_version")]
		public static extern void SetRequiredVersion(GLContext* context, c_int major, c_int minor);
		[LinkName("gdk_gl_context_set_use_es")]
		public static extern void SetUseEs(GLContext* context, c_int use_es);
	}
	[CRepr]
	public struct GLTexture : Texture
	{
		[LinkName("gdk_gl_texture_new")]
		public static extern GLTexture* New(GLContext* context, c_uint id, c_int width, c_int height, GLib.DestroyNotify destroy, void* data);
		[LinkName("gdk_gl_texture_release")]
		public static extern void Release(GLTexture* self);
	}
	[CRepr]
	public struct GLTextureBuilder : GObject.Object
	{
		[LinkName("gdk_gl_texture_builder_new")]
		public static extern GLTextureBuilder* New();
		[LinkName("gdk_gl_texture_builder_build")]
		public static extern Texture* Build(GLTextureBuilder* self, GLib.DestroyNotify destroy, void* data);
		[LinkName("gdk_gl_texture_builder_get_context")]
		public static extern GLContext* GetContext(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_format")]
		public static extern MemoryFormat GetFormat(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_has_mipmap")]
		public static extern c_int GetHasMipmap(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_height")]
		public static extern c_int GetHeight(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_id")]
		public static extern c_uint GetId(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_sync")]
		public static extern void* GetSync(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_update_region")]
		public static extern cairo.Region* GetUpdateRegion(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_update_texture")]
		public static extern Texture* GetUpdateTexture(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_get_width")]
		public static extern c_int GetWidth(GLTextureBuilder* self);
		[LinkName("gdk_gl_texture_builder_set_context")]
		public static extern void SetContext(GLTextureBuilder* self, GLContext* context);
		[LinkName("gdk_gl_texture_builder_set_format")]
		public static extern void SetFormat(GLTextureBuilder* self, MemoryFormat format);
		[LinkName("gdk_gl_texture_builder_set_has_mipmap")]
		public static extern void SetHasMipmap(GLTextureBuilder* self, c_int has_mipmap);
		[LinkName("gdk_gl_texture_builder_set_height")]
		public static extern void SetHeight(GLTextureBuilder* self, c_int height);
		[LinkName("gdk_gl_texture_builder_set_id")]
		public static extern void SetId(GLTextureBuilder* self, c_uint id);
		[LinkName("gdk_gl_texture_builder_set_sync")]
		public static extern void SetSync(GLTextureBuilder* self, void* sync);
		[LinkName("gdk_gl_texture_builder_set_update_region")]
		public static extern void SetUpdateRegion(GLTextureBuilder* self, cairo.Region* region);
		[LinkName("gdk_gl_texture_builder_set_update_texture")]
		public static extern void SetUpdateTexture(GLTextureBuilder* self, Texture* texture);
		[LinkName("gdk_gl_texture_builder_set_width")]
		public static extern void SetWidth(GLTextureBuilder* self, c_int width);
	}
	[CRepr]
	public struct GrabBrokenEvent : Event
	{
		[LinkName("gdk_grab_broken_event_get_grab_surface")]
		public static extern Surface* GetGrabSurface(GrabBrokenEvent* event);
		[LinkName("gdk_grab_broken_event_get_implicit")]
		public static extern c_int GetImplicit(GrabBrokenEvent* event);
	}
	[CRepr]
	public struct KeyEvent : Event
	{
		[LinkName("gdk_key_event_get_consumed_modifiers")]
		public static extern ModifierType GetConsumedModifiers(KeyEvent* event);
		[LinkName("gdk_key_event_get_keycode")]
		public static extern c_uint GetKeycode(KeyEvent* event);
		[LinkName("gdk_key_event_get_keyval")]
		public static extern c_uint GetKeyval(KeyEvent* event);
		[LinkName("gdk_key_event_get_layout")]
		public static extern c_uint GetLayout(KeyEvent* event);
		[LinkName("gdk_key_event_get_level")]
		public static extern c_uint GetLevel(KeyEvent* event);
		[LinkName("gdk_key_event_get_match")]
		public static extern c_int GetMatch(KeyEvent* event, c_uint* keyval, ModifierType* modifiers);
		[LinkName("gdk_key_event_is_modifier")]
		public static extern c_int IsModifier(KeyEvent* event);
		[LinkName("gdk_key_event_matches")]
		public static extern KeyMatch Matches(KeyEvent* event, c_uint keyval, ModifierType modifiers);
	}
	[CRepr]
	public struct MemoryTexture : Texture
	{
		[LinkName("gdk_memory_texture_new")]
		public static extern MemoryTexture* New(c_int width, c_int height, MemoryFormat format, GLib.Bytes* bytes, c_ulong stride);
	}
	[CRepr]
	public struct Monitor : GObject.Object
	{
		[LinkName("gdk_monitor_get_connector")]
		public static extern char8* GetConnector(Monitor* monitor);
		[LinkName("gdk_monitor_get_description")]
		public static extern char8* GetDescription(Monitor* monitor);
		[LinkName("gdk_monitor_get_display")]
		public static extern Display* GetDisplay(Monitor* monitor);
		[LinkName("gdk_monitor_get_geometry")]
		public static extern void GetGeometry(Monitor* monitor, Rectangle* geometry);
		[LinkName("gdk_monitor_get_height_mm")]
		public static extern c_int GetHeightMm(Monitor* monitor);
		[LinkName("gdk_monitor_get_manufacturer")]
		public static extern char8* GetManufacturer(Monitor* monitor);
		[LinkName("gdk_monitor_get_model")]
		public static extern char8* GetModel(Monitor* monitor);
		[LinkName("gdk_monitor_get_refresh_rate")]
		public static extern c_int GetRefreshRate(Monitor* monitor);
		[LinkName("gdk_monitor_get_scale_factor")]
		public static extern c_int GetScaleFactor(Monitor* monitor);
		[LinkName("gdk_monitor_get_subpixel_layout")]
		public static extern SubpixelLayout GetSubpixelLayout(Monitor* monitor);
		[LinkName("gdk_monitor_get_width_mm")]
		public static extern c_int GetWidthMm(Monitor* monitor);
		[LinkName("gdk_monitor_is_valid")]
		public static extern c_int IsValid(Monitor* monitor);
		public function void InvalidateFunc(Monitor* self, void* user_data);
	}
	[CRepr]
	public struct MotionEvent : Event
	{
	}
	[CRepr]
	public struct PadEvent : Event
	{
		[LinkName("gdk_pad_event_get_axis_value")]
		public static extern void GetAxisValue(PadEvent* event, c_uint* index, double* value);
		[LinkName("gdk_pad_event_get_button")]
		public static extern c_uint GetButton(PadEvent* event);
		[LinkName("gdk_pad_event_get_group_mode")]
		public static extern void GetGroupMode(PadEvent* event, c_uint* group, c_uint* mode);
	}
	[CRepr]
	public struct ProximityEvent : Event
	{
	}
	[CRepr]
	public struct ScrollEvent : Event
	{
		[LinkName("gdk_scroll_event_get_deltas")]
		public static extern void GetDeltas(ScrollEvent* event, double* delta_x, double* delta_y);
		[LinkName("gdk_scroll_event_get_direction")]
		public static extern ScrollDirection GetDirection(ScrollEvent* event);
		[LinkName("gdk_scroll_event_get_unit")]
		public static extern ScrollUnit GetUnit(ScrollEvent* event);
		[LinkName("gdk_scroll_event_is_stop")]
		public static extern c_int IsStop(ScrollEvent* event);
	}
	[CRepr]
	public struct Seat : GObject.Object
	{
		[LinkName("gdk_seat_get_capabilities")]
		public static extern SeatCapabilities GetCapabilities(Seat* seat);
		[LinkName("gdk_seat_get_devices")]
		public static extern GLib.List* GetDevices(Seat* seat, SeatCapabilities capabilities);
		[LinkName("gdk_seat_get_display")]
		public static extern Display* GetDisplay(Seat* seat);
		[LinkName("gdk_seat_get_keyboard")]
		public static extern Device* GetKeyboard(Seat* seat);
		[LinkName("gdk_seat_get_pointer")]
		public static extern Device* GetPointer(Seat* seat);
		[LinkName("gdk_seat_get_tools")]
		public static extern GLib.List* GetTools(Seat* seat);
		public function void DeviceAddedFunc(Seat* self, Device device, void* user_data);
		public function void DeviceRemovedFunc(Seat* self, Device device, void* user_data);
		public function void ToolAddedFunc(Seat* self, DeviceTool tool, void* user_data);
		public function void ToolRemovedFunc(Seat* self, DeviceTool tool, void* user_data);
	}
	[CRepr]
	public struct Snapshot : GObject.Object
	{
	}
	[CRepr]
	public struct Surface : GObject.Object
	{
		[LinkName("gdk_surface_new_popup")]
		public static extern Surface* NewPopup(Surface* parent, c_int autohide);
		[LinkName("gdk_surface_new_toplevel")]
		public static extern Surface* NewToplevel(Display* display);
		[LinkName("gdk_surface_beep")]
		public static extern void Beep(Surface* surface);
		[LinkName("gdk_surface_create_cairo_context")]
		public static extern CairoContext* CreateCairoContext(Surface* surface);
		[LinkName("gdk_surface_create_gl_context")]
		public static extern GLContext* CreateGlContext(Surface* surface);
		[LinkName("gdk_surface_create_similar_surface")]
		public static extern cairo.Surface* CreateSimilarSurface(Surface* surface, cairo.Content content, c_int width, c_int height);
		[LinkName("gdk_surface_create_vulkan_context")]
		public static extern VulkanContext* CreateVulkanContext(Surface* surface);
		[LinkName("gdk_surface_destroy")]
		public static extern void Destroy(Surface* surface);
		[LinkName("gdk_surface_get_cursor")]
		public static extern Cursor* GetCursor(Surface* surface);
		[LinkName("gdk_surface_get_device_cursor")]
		public static extern Cursor* GetDeviceCursor(Surface* surface, Device* device);
		[LinkName("gdk_surface_get_device_position")]
		public static extern c_int GetDevicePosition(Surface* surface, Device* device, double* x, double* y, ModifierType* mask);
		[LinkName("gdk_surface_get_display")]
		public static extern Display* GetDisplay(Surface* surface);
		[LinkName("gdk_surface_get_frame_clock")]
		public static extern FrameClock* GetFrameClock(Surface* surface);
		[LinkName("gdk_surface_get_height")]
		public static extern c_int GetHeight(Surface* surface);
		[LinkName("gdk_surface_get_mapped")]
		public static extern c_int GetMapped(Surface* surface);
		[LinkName("gdk_surface_get_scale")]
		public static extern double GetScale(Surface* surface);
		[LinkName("gdk_surface_get_scale_factor")]
		public static extern c_int GetScaleFactor(Surface* surface);
		[LinkName("gdk_surface_get_width")]
		public static extern c_int GetWidth(Surface* surface);
		[LinkName("gdk_surface_hide")]
		public static extern void Hide(Surface* surface);
		[LinkName("gdk_surface_is_destroyed")]
		public static extern c_int IsDestroyed(Surface* surface);
		[LinkName("gdk_surface_queue_render")]
		public static extern void QueueRender(Surface* surface);
		[LinkName("gdk_surface_request_layout")]
		public static extern void RequestLayout(Surface* surface);
		[LinkName("gdk_surface_set_cursor")]
		public static extern void SetCursor(Surface* surface, Cursor* cursor);
		[LinkName("gdk_surface_set_device_cursor")]
		public static extern void SetDeviceCursor(Surface* surface, Device* device, Cursor* cursor);
		[LinkName("gdk_surface_set_input_region")]
		public static extern void SetInputRegion(Surface* surface, cairo.Region* region);
		[LinkName("gdk_surface_set_opaque_region")]
		public static extern void SetOpaqueRegion(Surface* surface, cairo.Region* region);
		[LinkName("gdk_surface_translate_coordinates")]
		public static extern c_int TranslateCoordinates(Surface* from, Surface* to, double* x, double* y);
		public function void EnterMonitorFunc(Surface* self, Monitor monitor, void* user_data);
		public function c_int EventFunc(Surface* self, Event* event, void* user_data);
		public function void LayoutFunc(Surface* self, c_int width, c_int height, void* user_data);
		public function void LeaveMonitorFunc(Surface* self, Monitor monitor, void* user_data);
		public function c_int RenderFunc(Surface* self, cairo.Region region, void* user_data);
	}
	[CRepr]
	public struct Texture : GObject.Object
	{
		[LinkName("gdk_texture_new_for_pixbuf")]
		public static extern Texture* NewForPixbuf(GdkPixbuf.Pixbuf* pixbuf);
		[LinkName("gdk_texture_new_from_bytes")]
		public static extern Texture* NewFromBytes(GLib.Bytes* bytes);
		[LinkName("gdk_texture_new_from_file")]
		public static extern Texture* NewFromFile(Gio.File* file);
		[LinkName("gdk_texture_new_from_filename")]
		public static extern Texture* NewFromFilename(char8* path);
		[LinkName("gdk_texture_new_from_resource")]
		public static extern Texture* NewFromResource(char8* resource_path);
		[LinkName("gdk_texture_download")]
		public static extern void Download(Texture* texture, c_uchar* data, c_ulong stride);
		[LinkName("gdk_texture_get_format")]
		public static extern MemoryFormat GetFormat(Texture* self);
		[LinkName("gdk_texture_get_height")]
		public static extern c_int GetHeight(Texture* texture);
		[LinkName("gdk_texture_get_width")]
		public static extern c_int GetWidth(Texture* texture);
		[LinkName("gdk_texture_save_to_png")]
		public static extern c_int SaveToPng(Texture* texture, char8* filename);
		[LinkName("gdk_texture_save_to_png_bytes")]
		public static extern GLib.Bytes* SaveToPngBytes(Texture* texture);
		[LinkName("gdk_texture_save_to_tiff")]
		public static extern c_int SaveToTiff(Texture* texture, char8* filename);
		[LinkName("gdk_texture_save_to_tiff_bytes")]
		public static extern GLib.Bytes* SaveToTiffBytes(Texture* texture);
	}
	[CRepr]
	public struct TouchEvent : Event
	{
		[LinkName("gdk_touch_event_get_emulating_pointer")]
		public static extern c_int GetEmulatingPointer(TouchEvent* event);
	}
	[CRepr]
	public struct TouchpadEvent : Event
	{
		[LinkName("gdk_touchpad_event_get_deltas")]
		public static extern void GetDeltas(TouchpadEvent* event, double* dx, double* dy);
		[LinkName("gdk_touchpad_event_get_gesture_phase")]
		public static extern TouchpadGesturePhase GetGesturePhase(TouchpadEvent* event);
		[LinkName("gdk_touchpad_event_get_n_fingers")]
		public static extern c_uint GetNFingers(TouchpadEvent* event);
		[LinkName("gdk_touchpad_event_get_pinch_angle_delta")]
		public static extern double GetPinchAngleDelta(TouchpadEvent* event);
		[LinkName("gdk_touchpad_event_get_pinch_scale")]
		public static extern double GetPinchScale(TouchpadEvent* event);
	}
	[CRepr]
	public struct VulkanContext : DrawContext
	{
		public function void ImagesUpdatedFunc(VulkanContext* self, void* user_data);
	}
		[LinkName("gdk_cairo_draw_from_gl")]
		public static extern void CairoDrawFromGl(cairo.Context* cr, Surface* surface, c_int source, c_int source_type, c_int buffer_scale, c_int x, c_int y, c_int width, c_int height);
		[LinkName("gdk_cairo_rectangle")]
		public static extern void CairoRectangle(cairo.Context* cr, Rectangle* rectangle);
		[LinkName("gdk_cairo_region")]
		public static extern void CairoRegion(cairo.Context* cr, cairo.Region* region);
		[LinkName("gdk_cairo_region_create_from_surface")]
		public static extern cairo.Region* CairoRegionCreateFromSurface(cairo.Surface* surface);
		[LinkName("gdk_cairo_set_source_pixbuf")]
		public static extern void CairoSetSourcePixbuf(cairo.Context* cr, GdkPixbuf.Pixbuf* pixbuf, double pixbuf_x, double pixbuf_y);
		[LinkName("gdk_cairo_set_source_rgba")]
		public static extern void CairoSetSourceRgba(cairo.Context* cr, RGBA* rgba);
		[LinkName("gdk_content_deserialize_async")]
		public static extern void ContentDeserializeAsync(Gio.InputStream* stream, char8* mime_type, GLib.Type type, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_content_deserialize_finish")]
		public static extern c_int ContentDeserializeFinish(Gio.AsyncResult* result, GObject.Value* value);
		[LinkName("gdk_content_formats_parse")]
		public static extern ContentFormats* ContentFormatsParse(char8* string);
		[LinkName("gdk_content_register_deserializer")]
		public static extern void ContentRegisterDeserializer(char8* mime_type, GLib.Type type, ContentDeserializeFunc deserialize, void* data, GLib.DestroyNotify notify);
		[LinkName("gdk_content_register_serializer")]
		public static extern void ContentRegisterSerializer(GLib.Type type, char8* mime_type, ContentSerializeFunc serialize, void* data, GLib.DestroyNotify notify);
		[LinkName("gdk_content_serialize_async")]
		public static extern void ContentSerializeAsync(Gio.OutputStream* stream, char8* mime_type, GObject.Value* value, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data);
		[LinkName("gdk_content_serialize_finish")]
		public static extern c_int ContentSerializeFinish(Gio.AsyncResult* result);
		[LinkName("gdk_drag_action_is_unique")]
		public static extern c_int DragActionIsUnique(DragAction action);
		[LinkName("gdk_drag_surface_size_get_type")]
		public static extern GLib.Type DragSurfaceSizeGetType();
		[LinkName("gdk_events_get_angle")]
		public static extern c_int EventsGetAngle(Event* event1, Event* event2, double* angle);
		[LinkName("gdk_events_get_center")]
		public static extern c_int EventsGetCenter(Event* event1, Event* event2, double* x, double* y);
		[LinkName("gdk_events_get_distance")]
		public static extern c_int EventsGetDistance(Event* event1, Event* event2, double* distance);
		[LinkName("gdk_gl_error_quark")]
		public static extern GLib.Quark GlErrorQuark();
		[LinkName("gdk_intern_mime_type")]
		public static extern char8* InternMimeType(char8* string);
		[LinkName("gdk_keyval_convert_case")]
		public static extern void KeyvalConvertCase(c_uint symbol, c_uint* lower, c_uint* upper);
		[LinkName("gdk_keyval_from_name")]
		public static extern c_uint KeyvalFromName(char8* keyval_name);
		[LinkName("gdk_keyval_is_lower")]
		public static extern c_int KeyvalIsLower(c_uint keyval);
		[LinkName("gdk_keyval_is_upper")]
		public static extern c_int KeyvalIsUpper(c_uint keyval);
		[LinkName("gdk_keyval_name")]
		public static extern char8* KeyvalName(c_uint keyval);
		[LinkName("gdk_keyval_to_lower")]
		public static extern c_uint KeyvalToLower(c_uint keyval);
		[LinkName("gdk_keyval_to_unicode")]
		public static extern c_uint KeyvalToUnicode(c_uint keyval);
		[LinkName("gdk_keyval_to_upper")]
		public static extern c_uint KeyvalToUpper(c_uint keyval);
		[LinkName("gdk_paintable_new_empty")]
		public static extern Paintable* PaintableNewEmpty(c_int intrinsic_width, c_int intrinsic_height);
		[LinkName("gdk_pixbuf_get_from_surface")]
		public static extern GdkPixbuf.Pixbuf* PixbufGetFromSurface(cairo.Surface* surface, c_int src_x, c_int src_y, c_int width, c_int height);
		[LinkName("gdk_pixbuf_get_from_texture")]
		public static extern GdkPixbuf.Pixbuf* PixbufGetFromTexture(Texture* texture);
		[LinkName("gdk_set_allowed_backends")]
		public static extern void SetAllowedBackends(char8* backends);
		[LinkName("gdk_texture_error_quark")]
		public static extern GLib.Quark TextureErrorQuark();
		[LinkName("gdk_toplevel_size_get_type")]
		public static extern GLib.Type ToplevelSizeGetType();
		[LinkName("gdk_unicode_to_keyval")]
		public static extern c_uint UnicodeToKeyval(c_uint wc);
		[LinkName("gdk_vulkan_error_quark")]
		public static extern GLib.Quark VulkanErrorQuark();
	[CRepr]
	public struct ContentFormats
	{
		[LinkName("gdk_content_formats_new")]
		public static extern ContentFormats* New(char8** mime_types, c_uint n_mime_types);
		[LinkName("gdk_content_formats_new_for_gtype")]
		public static extern ContentFormats* NewForGtype(GLib.Type type);
		[LinkName("gdk_content_formats_contain_gtype")]
		public static extern c_int ContainGtype(ContentFormats* formats, GLib.Type type);
		[LinkName("gdk_content_formats_contain_mime_type")]
		public static extern c_int ContainMimeType(ContentFormats* formats, char8* mime_type);
		[LinkName("gdk_content_formats_get_gtypes")]
		public static extern GLib.Type* GetGtypes(ContentFormats* formats, c_ulong* n_gtypes);
		[LinkName("gdk_content_formats_get_mime_types")]
		public static extern char8* GetMimeTypes(ContentFormats* formats, c_ulong* n_mime_types);
		[LinkName("gdk_content_formats_match")]
		public static extern c_int Match(ContentFormats* first, ContentFormats* second);
		[LinkName("gdk_content_formats_match_gtype")]
		public static extern GLib.Type MatchGtype(ContentFormats* first, ContentFormats* second);
		[LinkName("gdk_content_formats_match_mime_type")]
		public static extern char8* MatchMimeType(ContentFormats* first, ContentFormats* second);
		[LinkName("gdk_content_formats_print")]
		public static extern void Print(ContentFormats* formats, GLib.String* string);
		[LinkName("gdk_content_formats_ref")]
		public static extern ContentFormats* Ref(ContentFormats* formats);
		[LinkName("gdk_content_formats_to_string")]
		public static extern char8* ToString(ContentFormats* formats);
		[LinkName("gdk_content_formats_union")]
		public static extern ContentFormats* Union(ContentFormats* first, ContentFormats* second);
		[LinkName("gdk_content_formats_union_deserialize_gtypes")]
		public static extern ContentFormats* UnionDeserializeGtypes(ContentFormats* formats);
		[LinkName("gdk_content_formats_union_deserialize_mime_types")]
		public static extern ContentFormats* UnionDeserializeMimeTypes(ContentFormats* formats);
		[LinkName("gdk_content_formats_union_serialize_gtypes")]
		public static extern ContentFormats* UnionSerializeGtypes(ContentFormats* formats);
		[LinkName("gdk_content_formats_union_serialize_mime_types")]
		public static extern ContentFormats* UnionSerializeMimeTypes(ContentFormats* formats);
		[LinkName("gdk_content_formats_unref")]
		public static extern void Unref(ContentFormats* formats);
	}
	[CRepr]
	public struct ContentFormatsBuilder
	{
		[LinkName("gdk_content_formats_builder_new")]
		public static extern ContentFormatsBuilder* New();
		[LinkName("gdk_content_formats_builder_add_formats")]
		public static extern void AddFormats(ContentFormatsBuilder* builder, ContentFormats* formats);
		[LinkName("gdk_content_formats_builder_add_gtype")]
		public static extern void AddGtype(ContentFormatsBuilder* builder, GLib.Type type);
		[LinkName("gdk_content_formats_builder_add_mime_type")]
		public static extern void AddMimeType(ContentFormatsBuilder* builder, char8* mime_type);
		[LinkName("gdk_content_formats_builder_ref")]
		public static extern ContentFormatsBuilder* Ref(ContentFormatsBuilder* builder);
		[LinkName("gdk_content_formats_builder_to_formats")]
		public static extern ContentFormats* ToFormats(ContentFormatsBuilder* builder);
		[LinkName("gdk_content_formats_builder_unref")]
		public static extern void Unref(ContentFormatsBuilder* builder);
	}
	[CRepr]
	public struct ContentProviderClass
	{
		public GObject.ObjectClass parent_class;
		public function void(ContentProvider* provider) content_changed;
		public function void(ContentProvider* provider, Clipboard* clipboard) attach_clipboard;
		public function void(ContentProvider* provider, Clipboard* clipboard) detach_clipboard;
		public function ContentFormats*(ContentProvider* provider) ref_formats;
		public function ContentFormats*(ContentProvider* provider) ref_storable_formats;
		public function void(ContentProvider* provider, char8* mime_type, Gio.OutputStream* stream, c_int io_priority, Gio.Cancellable* cancellable, Gio.AsyncReadyCallback callback, void* user_data) write_mime_type_async;
		public function c_int(ContentProvider* provider, Gio.AsyncResult* result) write_mime_type_finish;
		public function c_int(ContentProvider* provider, GObject.Value* value) get_value;
		public void* padding;
	}
	[CRepr]
	public struct DevicePadInterface : int
	{
	}
	[CRepr]
	public struct DragSurfaceInterface : int
	{
	}
	[CRepr]
	public struct DragSurfaceSize : int
	{
		[LinkName("gdk_drag_surface_size_set_size")]
		public static extern void SetSize(DragSurfaceSize* size, c_int width, c_int height);
	}
	[CRepr]
	public struct EventSequence
	{
	}
	[CRepr]
	public struct FileList
	{
		[LinkName("gdk_file_list_new_from_array")]
		public static extern FileList* NewFromArray(Gio.File** files, c_ulong n_files);
		[LinkName("gdk_file_list_new_from_list")]
		public static extern FileList* NewFromList(GLib.SList* files);
		[LinkName("gdk_file_list_get_files")]
		public static extern GLib.SList* GetFiles(FileList* file_list);
	}
	[CRepr]
	public struct FrameClockClass : int
	{
	}
	[CRepr]
	public struct FrameClockPrivate : int
	{
	}
	[CRepr]
	public struct FrameTimings
	{
		[LinkName("gdk_frame_timings_get_complete")]
		public static extern c_int GetComplete(FrameTimings* timings);
		[LinkName("gdk_frame_timings_get_frame_counter")]
		public static extern c_longlong GetFrameCounter(FrameTimings* timings);
		[LinkName("gdk_frame_timings_get_frame_time")]
		public static extern c_longlong GetFrameTime(FrameTimings* timings);
		[LinkName("gdk_frame_timings_get_predicted_presentation_time")]
		public static extern c_longlong GetPredictedPresentationTime(FrameTimings* timings);
		[LinkName("gdk_frame_timings_get_presentation_time")]
		public static extern c_longlong GetPresentationTime(FrameTimings* timings);
		[LinkName("gdk_frame_timings_get_refresh_interval")]
		public static extern c_longlong GetRefreshInterval(FrameTimings* timings);
		[LinkName("gdk_frame_timings_ref")]
		public static extern FrameTimings* Ref(FrameTimings* timings);
		[LinkName("gdk_frame_timings_unref")]
		public static extern void Unref(FrameTimings* timings);
	}
	[CRepr]
	public struct GLTextureBuilderClass : int
	{
	}
	[CRepr]
	public struct GLTextureClass : int
	{
	}
	[CRepr]
	public struct KeymapKey
	{
		public c_uint keycode;
		public c_int group;
		public c_int level;
	}
	[CRepr]
	public struct MemoryTextureClass : int
	{
	}
	[CRepr]
	public struct MonitorClass : int
	{
	}
	[CRepr]
	public struct PaintableInterface
	{
		public GObject.TypeInterface g_iface;
		public function void(Paintable* paintable, Snapshot* snapshot, double width, double height) snapshot;
		public function Paintable*(Paintable* paintable) get_current_image;
		public function PaintableFlags(Paintable* paintable) get_flags;
		public function c_int(Paintable* paintable) get_intrinsic_width;
		public function c_int(Paintable* paintable) get_intrinsic_height;
		public function double(Paintable* paintable) get_intrinsic_aspect_ratio;
	}
	[CRepr]
	public struct PopupInterface : int
	{
	}
	[CRepr]
	public struct PopupLayout
	{
		[LinkName("gdk_popup_layout_new")]
		public static extern PopupLayout* New(Rectangle* anchor_rect, Gravity rect_anchor, Gravity surface_anchor);
		[LinkName("gdk_popup_layout_copy")]
		public static extern PopupLayout* Copy(PopupLayout* layout);
		[LinkName("gdk_popup_layout_equal")]
		public static extern c_int Equal(PopupLayout* layout, PopupLayout* other);
		[LinkName("gdk_popup_layout_get_anchor_hints")]
		public static extern AnchorHints GetAnchorHints(PopupLayout* layout);
		[LinkName("gdk_popup_layout_get_anchor_rect")]
		public static extern Rectangle* GetAnchorRect(PopupLayout* layout);
		[LinkName("gdk_popup_layout_get_offset")]
		public static extern void GetOffset(PopupLayout* layout, c_int* dx, c_int* dy);
		[LinkName("gdk_popup_layout_get_rect_anchor")]
		public static extern Gravity GetRectAnchor(PopupLayout* layout);
		[LinkName("gdk_popup_layout_get_shadow_width")]
		public static extern void GetShadowWidth(PopupLayout* layout, c_int* left, c_int* right, c_int* top, c_int* bottom);
		[LinkName("gdk_popup_layout_get_surface_anchor")]
		public static extern Gravity GetSurfaceAnchor(PopupLayout* layout);
		[LinkName("gdk_popup_layout_ref")]
		public static extern PopupLayout* Ref(PopupLayout* layout);
		[LinkName("gdk_popup_layout_set_anchor_hints")]
		public static extern void SetAnchorHints(PopupLayout* layout, AnchorHints anchor_hints);
		[LinkName("gdk_popup_layout_set_anchor_rect")]
		public static extern void SetAnchorRect(PopupLayout* layout, Rectangle* anchor_rect);
		[LinkName("gdk_popup_layout_set_offset")]
		public static extern void SetOffset(PopupLayout* layout, c_int dx, c_int dy);
		[LinkName("gdk_popup_layout_set_rect_anchor")]
		public static extern void SetRectAnchor(PopupLayout* layout, Gravity anchor);
		[LinkName("gdk_popup_layout_set_shadow_width")]
		public static extern void SetShadowWidth(PopupLayout* layout, c_int left, c_int right, c_int top, c_int bottom);
		[LinkName("gdk_popup_layout_set_surface_anchor")]
		public static extern void SetSurfaceAnchor(PopupLayout* layout, Gravity anchor);
		[LinkName("gdk_popup_layout_unref")]
		public static extern void Unref(PopupLayout* layout);
	}
	[CRepr]
	public struct RGBA
	{
		public float red;
		public float green;
		public float blue;
		public float alpha;
		[LinkName("gdk_rgba_copy")]
		public static extern RGBA* Copy(RGBA* rgba);
		[LinkName("gdk_rgba_equal")]
		public static extern c_int Equal(RGBA p1, RGBA p2);
		[LinkName("gdk_rgba_free")]
		public static extern void Free(RGBA* rgba);
		[LinkName("gdk_rgba_hash")]
		public static extern c_uint Hash(RGBA p);
		[LinkName("gdk_rgba_is_clear")]
		public static extern c_int IsClear(RGBA* rgba);
		[LinkName("gdk_rgba_is_opaque")]
		public static extern c_int IsOpaque(RGBA* rgba);
		[LinkName("gdk_rgba_parse")]
		public static extern c_int Parse(RGBA* rgba, char8* spec);
		[LinkName("gdk_rgba_to_string")]
		public static extern char8* ToString(RGBA* rgba);
	}
	[CRepr]
	public struct Rectangle
	{
		public c_int x;
		public c_int y;
		public c_int width;
		public c_int height;
		[LinkName("gdk_rectangle_contains_point")]
		public static extern c_int ContainsPoint(Rectangle* rect, c_int x, c_int y);
		[LinkName("gdk_rectangle_equal")]
		public static extern c_int Equal(Rectangle* rect1, Rectangle* rect2);
		[LinkName("gdk_rectangle_intersect")]
		public static extern c_int Intersect(Rectangle* src1, Rectangle* src2, Rectangle* dest);
		[LinkName("gdk_rectangle_union")]
		public static extern void Union(Rectangle* src1, Rectangle* src2, Rectangle* dest);
	}
	[CRepr]
	public struct SnapshotClass : int
	{
	}
	[CRepr]
	public struct SurfaceClass : int
	{
	}
	[CRepr]
	public struct TextureClass : int
	{
	}
	[CRepr]
	public struct TextureDownloader
	{
		[LinkName("gdk_texture_downloader_new")]
		public static extern TextureDownloader* New(Texture* texture);
		[LinkName("gdk_texture_downloader_copy")]
		public static extern TextureDownloader* Copy(TextureDownloader* self);
		[LinkName("gdk_texture_downloader_download_bytes")]
		public static extern GLib.Bytes* DownloadBytes(TextureDownloader* self, c_ulong* out_stride);
		[LinkName("gdk_texture_downloader_download_into")]
		public static extern void DownloadInto(TextureDownloader* self, c_uchar* data, c_ulong stride);
		[LinkName("gdk_texture_downloader_free")]
		public static extern void Free(TextureDownloader* self);
		[LinkName("gdk_texture_downloader_get_format")]
		public static extern MemoryFormat GetFormat(TextureDownloader* self);
		[LinkName("gdk_texture_downloader_get_texture")]
		public static extern Texture* GetTexture(TextureDownloader* self);
		[LinkName("gdk_texture_downloader_set_format")]
		public static extern void SetFormat(TextureDownloader* self, MemoryFormat format);
		[LinkName("gdk_texture_downloader_set_texture")]
		public static extern void SetTexture(TextureDownloader* self, Texture* texture);
	}
	[CRepr]
	public struct TimeCoord
	{
		public c_uint time;
		public AxisFlags flags;
		public double axes;
	}
	[CRepr]
	public struct ToplevelInterface : int
	{
	}
	[CRepr]
	public struct ToplevelLayout
	{
		[LinkName("gdk_toplevel_layout_new")]
		public static extern ToplevelLayout* New();
		[LinkName("gdk_toplevel_layout_copy")]
		public static extern ToplevelLayout* Copy(ToplevelLayout* layout);
		[LinkName("gdk_toplevel_layout_equal")]
		public static extern c_int Equal(ToplevelLayout* layout, ToplevelLayout* other);
		[LinkName("gdk_toplevel_layout_get_fullscreen")]
		public static extern c_int GetFullscreen(ToplevelLayout* layout, c_int* fullscreen);
		[LinkName("gdk_toplevel_layout_get_fullscreen_monitor")]
		public static extern Monitor* GetFullscreenMonitor(ToplevelLayout* layout);
		[LinkName("gdk_toplevel_layout_get_maximized")]
		public static extern c_int GetMaximized(ToplevelLayout* layout, c_int* maximized);
		[LinkName("gdk_toplevel_layout_get_resizable")]
		public static extern c_int GetResizable(ToplevelLayout* layout);
		[LinkName("gdk_toplevel_layout_ref")]
		public static extern ToplevelLayout* Ref(ToplevelLayout* layout);
		[LinkName("gdk_toplevel_layout_set_fullscreen")]
		public static extern void SetFullscreen(ToplevelLayout* layout, c_int fullscreen, Monitor* monitor);
		[LinkName("gdk_toplevel_layout_set_maximized")]
		public static extern void SetMaximized(ToplevelLayout* layout, c_int maximized);
		[LinkName("gdk_toplevel_layout_set_resizable")]
		public static extern void SetResizable(ToplevelLayout* layout, c_int resizable);
		[LinkName("gdk_toplevel_layout_unref")]
		public static extern void Unref(ToplevelLayout* layout);
	}
	[CRepr]
	public struct ToplevelSize : int
	{
		[LinkName("gdk_toplevel_size_get_bounds")]
		public static extern void GetBounds(ToplevelSize* size, c_int* bounds_width, c_int* bounds_height);
		[LinkName("gdk_toplevel_size_set_min_size")]
		public static extern void SetMinSize(ToplevelSize* size, c_int min_width, c_int min_height);
		[LinkName("gdk_toplevel_size_set_shadow_width")]
		public static extern void SetShadowWidth(ToplevelSize* size, c_int left, c_int right, c_int top, c_int bottom);
		[LinkName("gdk_toplevel_size_set_size")]
		public static extern void SetSize(ToplevelSize* size, c_int width, c_int height);
	}
	[CRepr, AllowDuplicates]
	public enum AnchorHints
	{
		FlipX = 1,
		FlipY = 2,
		SlideX = 4,
		SlideY = 8,
		ResizeX = 16,
		ResizeY = 32,
		Flip = 3,
		Slide = 12,
		Resize = 48
	}
	[CRepr, AllowDuplicates]
	public enum AxisFlags
	{
		X = 2,
		Y = 4,
		DeltaX = 8,
		DeltaY = 16,
		Pressure = 32,
		Xtilt = 64,
		Ytilt = 128,
		Wheel = 256,
		Distance = 512,
		Rotation = 1024,
		Slider = 2048
	}
	[CRepr, AllowDuplicates]
	public enum AxisUse
	{
		Ignore = 0,
		X = 1,
		Y = 2,
		DeltaX = 3,
		DeltaY = 4,
		Pressure = 5,
		Xtilt = 6,
		Ytilt = 7,
		Wheel = 8,
		Distance = 9,
		Rotation = 10,
		Slider = 11,
		Last = 12
	}
	[CRepr, AllowDuplicates]
	public enum CrossingMode
	{
		Normal = 0,
		Grab = 1,
		Ungrab = 2,
		GtkGrab = 3,
		GtkUngrab = 4,
		StateChanged = 5,
		TouchBegin = 6,
		TouchEnd = 7,
		DeviceSwitch = 8
	}
	[CRepr, AllowDuplicates]
	public enum DevicePadFeature
	{
		Button = 0,
		Ring = 1,
		Strip = 2
	}
	[CRepr, AllowDuplicates]
	public enum DeviceToolType
	{
		Unknown = 0,
		Pen = 1,
		Eraser = 2,
		Brush = 3,
		Pencil = 4,
		Airbrush = 5,
		Mouse = 6,
		Lens = 7
	}
	[CRepr, AllowDuplicates]
	public enum DragAction
	{
		Copy = 1,
		Move = 2,
		Link = 4,
		Ask = 8
	}
	[CRepr, AllowDuplicates]
	public enum DragCancelReason
	{
		NoTarget = 0,
		UserCancelled = 1,
		Error = 2
	}
	[CRepr, AllowDuplicates]
	public enum EventType
	{
		Delete = 0,
		MotionNotify = 1,
		ButtonPress = 2,
		ButtonRelease = 3,
		KeyPress = 4,
		KeyRelease = 5,
		EnterNotify = 6,
		LeaveNotify = 7,
		FocusChange = 8,
		ProximityIn = 9,
		ProximityOut = 10,
		DragEnter = 11,
		DragLeave = 12,
		DragMotion = 13,
		DropStart = 14,
		Scroll = 15,
		GrabBroken = 16,
		TouchBegin = 17,
		TouchUpdate = 18,
		TouchEnd = 19,
		TouchCancel = 20,
		TouchpadSwipe = 21,
		TouchpadPinch = 22,
		PadButtonPress = 23,
		PadButtonRelease = 24,
		PadRing = 25,
		PadStrip = 26,
		PadGroupMode = 27,
		TouchpadHold = 28,
		EventLast = 29
	}
	[CRepr, AllowDuplicates]
	public enum FrameClockPhase
	{
		None = 0,
		FlushEvents = 1,
		BeforePaint = 2,
		Update = 4,
		Layout = 8,
		Paint = 16,
		ResumeEvents = 32,
		AfterPaint = 64
	}
	[CRepr, AllowDuplicates]
	public enum FullscreenMode
	{
		CurrentMonitor = 0,
		AllMonitors = 1
	}
	[CRepr, AllowDuplicates]
	public enum GLAPI
	{
		Gl = 1,
		Gles = 2
	}
	[CRepr, AllowDuplicates]
	public enum GLError
	{
		NotAvailable = 0,
		UnsupportedFormat = 1,
		UnsupportedProfile = 2,
		CompilationFailed = 3,
		LinkFailed = 4
	}
	[CRepr, AllowDuplicates]
	public enum Gravity
	{
		NorthWest = 1,
		North = 2,
		NorthEast = 3,
		West = 4,
		Center = 5,
		East = 6,
		SouthWest = 7,
		South = 8,
		SouthEast = 9,
		Static = 10
	}
	[CRepr, AllowDuplicates]
	public enum InputSource
	{
		Mouse = 0,
		Pen = 1,
		Keyboard = 2,
		Touchscreen = 3,
		Touchpad = 4,
		Trackpoint = 5,
		TabletPad = 6
	}
	[CRepr, AllowDuplicates]
	public enum KeyMatch
	{
		None = 0,
		Partial = 1,
		Exact = 2
	}
	[CRepr, AllowDuplicates]
	public enum MemoryFormat
	{
		B8g8r8a8Premultiplied = 0,
		A8r8g8b8Premultiplied = 1,
		R8g8b8a8Premultiplied = 2,
		B8g8r8a8 = 3,
		A8r8g8b8 = 4,
		R8g8b8a8 = 5,
		A8b8g8r8 = 6,
		R8g8b8 = 7,
		B8g8r8 = 8,
		R16g16b16 = 9,
		R16g16b16a16Premultiplied = 10,
		R16g16b16a16 = 11,
		R16g16b16Float = 12,
		R16g16b16a16FloatPremultiplied = 13,
		R16g16b16a16Float = 14,
		R32g32b32Float = 15,
		R32g32b32a32FloatPremultiplied = 16,
		R32g32b32a32Float = 17,
		G8a8Premultiplied = 18,
		G8a8 = 19,
		G8 = 20,
		G16a16Premultiplied = 21,
		G16a16 = 22,
		G16 = 23,
		A8 = 24,
		A16 = 25,
		NFormats = 26
	}
	[CRepr, AllowDuplicates]
	public enum ModifierType
	{
		ShiftMask = 1,
		LockMask = 2,
		ControlMask = 4,
		AltMask = 8,
		Button1Mask = 256,
		Button2Mask = 512,
		Button3Mask = 1024,
		Button4Mask = 2048,
		Button5Mask = 4096,
		SuperMask = 67108864,
		HyperMask = 134217728,
		MetaMask = 268435456
	}
	[CRepr, AllowDuplicates]
	public enum NotifyType
	{
		Ancestor = 0,
		Virtual = 1,
		Inferior = 2,
		Nonlinear = 3,
		NonlinearVirtual = 4,
		Unknown = 5
	}
	[CRepr, AllowDuplicates]
	public enum PaintableFlags
	{
		Size = 1,
		Contents = 2
	}
	[CRepr, AllowDuplicates]
	public enum ScrollDirection
	{
		Up = 0,
		Down = 1,
		Left = 2,
		Right = 3,
		Smooth = 4
	}
	[CRepr, AllowDuplicates]
	public enum ScrollUnit
	{
		Wheel = 0,
		Surface = 1
	}
	[CRepr, AllowDuplicates]
	public enum SeatCapabilities
	{
		None = 0,
		Pointer = 1,
		Touch = 2,
		TabletStylus = 4,
		Keyboard = 8,
		TabletPad = 16,
		AllPointing = 7,
		All = 15
	}
	[CRepr, AllowDuplicates]
	public enum SubpixelLayout
	{
		Unknown = 0,
		None = 1,
		HorizontalRgb = 2,
		HorizontalBgr = 3,
		VerticalRgb = 4,
		VerticalBgr = 5
	}
	[CRepr, AllowDuplicates]
	public enum SurfaceEdge
	{
		NorthWest = 0,
		North = 1,
		NorthEast = 2,
		West = 3,
		East = 4,
		SouthWest = 5,
		South = 6,
		SouthEast = 7
	}
	[CRepr, AllowDuplicates]
	public enum TextureError
	{
		TooLarge = 0,
		CorruptImage = 1,
		UnsupportedContent = 2,
		UnsupportedFormat = 3
	}
	[CRepr, AllowDuplicates]
	public enum TitlebarGesture
	{
		DoubleClick = 1,
		RightClick = 2,
		MiddleClick = 3
	}
	[CRepr, AllowDuplicates]
	public enum ToplevelState
	{
		Minimized = 1,
		Maximized = 2,
		Sticky = 4,
		Fullscreen = 8,
		Above = 16,
		Below = 32,
		Focused = 64,
		Tiled = 128,
		TopTiled = 256,
		TopResizable = 512,
		RightTiled = 1024,
		RightResizable = 2048,
		BottomTiled = 4096,
		BottomResizable = 8192,
		LeftTiled = 16384,
		LeftResizable = 32768
	}
	[CRepr, AllowDuplicates]
	public enum TouchpadGesturePhase
	{
		Begin = 0,
		Update = 1,
		End = 2,
		Cancel = 3
	}
	[CRepr, AllowDuplicates]
	public enum VulkanError
	{
		Unsupported = 0,
		NotAvailable = 1
	}
	public struct DevicePad;
	public struct DragSurface;
	public struct Paintable;
	public struct Popup;
	public struct Toplevel;
	public function void ContentDeserializeFunc(ContentDeserializer* deserializer);
	public function void ContentSerializeFunc(ContentSerializer* serializer);
}
