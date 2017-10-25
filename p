{if;==;{get;_nPancakesMonster};;{set;_nPancakesMonster;0}}

{if;==;{get;_wheatcount};;{set;_wheatcount;0}}
{if;==;{get;_milkcount};;{set;_milkcount;0}}
{if;==;{get;_eggcount};;{set;_eggcount;0}}
{if;==;{get;_pancakecount};;{set;_pancakecount;0}}
{if;==;{get;_spancakecount};;{set;_spancakecount;0}}
{if;==;{get;_chocolatecount};;{set;_chocolatecount;0}}
{if;<;{get;_chocolatecount};0;{set;_chocolatecount;0}}
{if;==;{get;_cookiecount};;{set;_cookiecount;0}}
{if;==;{get;_scookiecount};;{set;_scookiecount;0}}
{if;==;{get;_f$};;{set;_f$;0}}
{if;==;{get;_f$incr};{get;_f$incr};{set;_f$incr;0}}
{if;==;{get;_milkincr};{get;_milkincr};{set;_milkincr;1}}
{if;==;{get;_wheatincr};{get;_wheatincr};{set;_wheatincr;1}}
{if;==;{get;_eggincr};{get;_eggincr};{set;_eggincr;1}}
{if;==;{get;_chocincr};{get;_chocincr};{set;_chocincr;1}}
{if;==;{get;_{userid}_harvestcount};;{set;_{userid}_harvestcount;0}}
{if;==;{get;_{userid}_hgharvestcount};;{set;_{userid}_hgharvestcount;0}}
{if;==;{get;_wheatharvest};;{set;_wheatharvest;3}}
{if;==;{get;_eggharvest};;{set;_eggharvest;2}}
{if;==;{get;_milkharvest};;{set;_milkharvest;1}}
{if;==;{get;_chocoharvest};;{set;_chocoharvest;0}}

{if;==;{get;_employees};;{set;_employees;[]}}
{if;==;{get;_{userid}_regemployee};;{set;_{userid}_regemployee;x**{get;_{userid}_harvestcount}** harvests. | **[{username}]**}}

{if;>=;{get;_{userid}_harvestcount};10;
{if;==;-1;{indexof;{get;_{userid}_regemployee};{get;_{userid}_harvestcount}};
{if;>=;{indexof;{get;_employees};{get;_{userid}_regemployee}};0;
{void;{splice;{get;_employees};{indexof;{get;_employees};{get;_{userid}_regemployee}};1}}}
{if;>;{get;_{userid}_harvestcount};99;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};1}}
{if;>;{get;_{userid}_harvestcount};199;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};2}}}
{if;>;{get;_{userid}_harvestcount};299;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};3}}}
{if;>;{get;_{userid}_harvestcount};399;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};4}}}
{if;>;{get;_{userid}_harvestcount};499;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};5}}}
{if;>;{get;_{userid}_harvestcount};599;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};6}}}
{if;>;{get;_{userid}_harvestcount};699;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};7}}}
{if;>;{get;_{userid}_harvestcount};799;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};8}}}
{if;>;{get;_{userid}_harvestcount};899;
{set;_{userid}_regemployee;{pad;right;{get;_{userid}_harvestcount} Harvests, {username};9}}}
{if;>;{get;_{userid}_harvestcount};999;
{set;_{userid}_regemployee;00{pad;right;{get;_{userid}_harvestcount} Harvests, {username};10}}}
;
{set;_{userid}_regemployee;{pad;right;0{get;_{userid}_harvestcount} Harvests, {username};0}}
}
{void;{push;{get;_employees};{get;_{userid}_regemployee}}}
}}

{if;==;{get;_{userid}_weektimer};;{set;_{userid}_weektimer;0}}
{if;==;{get;_{userid}_weektimer};0;
{set;_{userid}_weektimer;1}
{timer;
{if;>;{get;_{userid}_harvestcount};{get;_{userid}_hgharvestcount};{set;_{userid}_hgharvestcount;{get;_{userid}_harvestcount}}}
{set;_{userid}_harvestcount;0}
{set;_employees;[]}
{set;_{userid}_weektimer;0};7d}
;}


{if;==;{get;_nPancakesMonster};0;
{if;>=;{get;_spancakecount};10000;

{set;_nPancakesMonster;1}
{set;_iPancakesMonster;{randchoose;**:pancakes:Snoozer the Beloved**:pancakes:{newline} https://i.imgur.com/AxICNI8.png;**:pancakes:Palacka the Bloodthirsty**:pancakes:{newline} https://i.imgur.com/IZb5hPc.png;**:pancakes:Snort the Cold**:pancakes:{newline} https://i.imgur.com/YBWu28h.png;**:pancakes:Bargwala, Fury of Brawlhalla**:pancakes:{newline} https://i.imgur.com/LajaF6h.png;**:pancakes:Zozor the Haxxor**:pancakes:{newline} https://i.imgur.com/6gFmMwg.png;**:pancakes:Snippy the Bad Dog**:pancakes:{newline} https://i.imgur.com/XHDxAE5.png;**:pancakes:Linus the Unamused**:pancakes:{newline}
 https://i.imgur.com/7Ho8axJ.png;**:pancakes:Glurgh the Stubborn**:pancakes:{newline} https://i.imgur.com/gaS0qBk.png}}
{set;_PancakesMonsterMaxHp;{get;_spancakecount}}
{set;_PancakesMonsterHp;{get;_spancakecount}}
{set;_spancakecount;0}
{trim;
<@&367637854068670465>,

Too many :pancakes: Pancakes where left over and they merged together !
A Pancakes Monster appeared in the Wild !!

{get;_iPancakesMonster}
{get;_PancakesMonsterHp} / {get;_PancakesMonsterHp} :hearts: HP.
}}}


{if;==;{args;0};factory;
__**🏭| Welcome to the Pancakes Factory!**__

The Factory has collected :
  
  **{get;_wheatcount}** 🌾 Wheats,
  **{get;_milkcount}**🥛 Milks,
  **{get;_eggcount}**🥚 Eggs,
  **+ {get;_chocolatecount}** 🍫 Chocolate!
  
& produced **{lower;{get;_cookiecount}}** :cookie: Cookies, **{lower;{get;_pancakecount}}** :pancakes: Pancakes !

__Capital :__ **{round;{get;_f$}}$** Dollars :dollar: !
> Next upgrade will cost :dollar: {get;_costupg} $ !
🍫 Chocolate Upgrade - 250,000 $ (Limited Event!) :new:
    > Type `!p buy chocolate upgrade`
{sort;{get;_employees};descending}
*- Employee of the Week : x**{get;_employees;0}** 🥇
> You have harvested **{get;_{userid}_harvestcount}** Times !*  ( Max: {get;_{userid}_hgharvestcount} )
}

{//;Wheat.}
{if;==;{args;0};harvest;
{set;cooldown;{exec;cooldown;300 wheat}}{if;==;{get;cooldown};true;
{set;_{userid}_harvestcount;{math;+;{get;_{userid}_harvestcount};1}}
{username} just collected **{get;_wheatharvest}** Wheat! 🌾, **{get;_eggharvest}** Egg 🥚, **{get;_milkharvest}** Milk 🥛 {if;>=;{get;_chocoharvest};1;& **{get;_chocoharvest}** Chocolate 🍫 !
{set;_chocolatecount;{math;+;{get;_chocolatecount};{get;_chocoharvest}}}
}
{set;_wheatcount;{math;+;{get;_wheatcount};{get;_wheatharvest}}}
{set;_eggcount;{math;+;{get;_eggcount};{get;_eggharvest}}}
{set;_milkcount;{math;+;{get;_milkcount};{get;_milkharvest}}}
;Please wait {execcc;tspan;{get;cooldown}} more seconds before the next use.}}

{if;==;{args;0};explore;
  You can't Explore the :factory: Factory, {username}!}

{//;Craft.}
{if;==;{args;0};craft;

{if;==;{args;1};pancakes;
{if;>;{args;2};0;
{if;>=;{get;_milkcount};{args;2};
{if;>=;{get;_eggcount};{math;*;2;{args;2}};
{if;>=;{get;_wheatcount};{math;*;3;{args;2}};
The Factory crafted {math;*;4;{args;2}} 🥞 Pancakes! 
{set;_pancakeincr;{math;*;4;{args;2}}}
{set;_pancakecount;{math;+;{get;_pancakeincr};{get;_pancakecount}}}
{set;_milkcount;{math;-;{get;_milkcount};{args;2}}}
{set;_eggincr;{math;*;2;{args;2}}}
{set;_eggcount;{math;-;{get;_eggcount};{get;_eggincr}}}
{set;_wheatincr;{math;*;3;{args;2}}}
{set;_wheatcount;{math;-;{get;_wheatcount};{get;_wheatincr}}}

;The Factory does not have enough Wheat!};The Factory does not have enough Eggs!};The Factory doesn't have enough Milk!};Please, enter a valid number!}
;
{if;==;{args;1};pancakes_all;

{if;>;{get;_milkcount};0;
{if;>=;{get;_wheatcount};{math;*;3;{get;_milkcount}};
{if;>=;{get;_eggcount};{math;*;2;{get;_milkcount}};
{set;_pancakeincr;{math;*;4;{get;_milkcount}}}
{set;_pancakecount;{math;+;{get;_pancakeincr};{get;_pancakecount}}}
{set;_wheatincr;{math;*;3;{get;_milkcount}}}
{set;_wheatcount;{math;-;{get;_wheatcount};{get;_wheatincr}}}
{set;_eggincr;{math;*;2;{get;_milkcount}}}
{set;_eggcount;{math;-;{get;_eggcount};{get;_eggincr}}}
{set;_milkcount;0}
The Factory crafted {get;_pancakeincr} 🥞 Pancakes! 
;The Factory needs {abs;{math;-;{math;*;2;{get;_milkcount}};{get;_eggcount}}} more Egg!};The Factory needs {abs;{math;-;{math;*;{get;_milkcount};3};{get;_wheatcount}}} more Wheat!};The Factory needs {ceil;{abs;{math;-;{math;/;{get;_wheatcount};3};{get;_milkcount}}}} more Milk!}

;

{if;==;{args;1};cookies_all;
{if;==;{get;_{userid}_cookierecipe};;{set;_{userid}_cookierecipe;0}}
{if;==;{get;_{userid}_cookierecipe};0;
You don't know the Recipe yet!;

{if;>=;{get;_chocolatecount};0;
{if;>=;{get;_chocolatecount};{math;/;6;{get;_wheatcount}};
{if;>=;{get;_milkcount};{math;*;2;{get;_chocolatecount}};
{if;>=;{get;_wheatcount};{math;*;6;{get;_chocolatecount}};
{if;>=;{get;_eggcount};{math;*;4;{get;_chocolatecount}};
{set;_cookieincr;{math;*;2;{get;_chocolatecount}}}

The Factory crafted {get;_cookieincr} :cookie: Cookies!

{set;_cookiecount;{math;+;{get;_cookieincr};{get;_cookiecount}}}
{set;_wheatincr;{math;*;6;{get;_chocolatecount}}}
{set;_wheatcount;{math;-;{get;_wheatcount};{get;_wheatincr}}}
{set;_eggincr;{math;*;4;{get;_chocolatecount}}}
{set;_eggcount;{math;-;{get;_eggcount};{get;_eggincr}}}
{set;_milkincr;{math;*;2;{get;_chocolatecount}}}
{set;_milkcount;{math;-;{get;_milkcount};{get;_milkincr}}}
{set;_chocolatecount;0}

;The Factory needs {abs;{math;-;{math;*;4;{get;_chocolatecount}};{get;_eggcount}}} more Eggs!};The Factory needs {abs;{math;-;{math;*;{get;_chocolatecount};6};{get;_wheatcount}}} more Wheat!};The Factory needs {abs;{math;-;{math;*;{get;_chocolatecount};2};{get;_milkcount}}} more Milk!}
;The Factory needs {ceil;{abs;{math;-;{math;/;{get;_wheatcount};6};{get;_chocolatecount}}}} more Chocolate!}
;The Factory have 0 Chocolate!}};

{if;==;{args;1};cookies;
{if;==;{get;_{userid}_cookierecipe};0;
You don't know the Recipe yet!;

{if;>;{args;2};0;
{if;>=;{get;_milkcount};{math;*;2;{args;2}};
{if;>=;{get;_eggcount};{math;*;4;{args;2}};
{if;>=;{get;_wheatcount};{math;*;6;{args;2}};
{if;>;{get;_chocolatecount};{args;2};

{set;_cookieincr;{math;*;2;{args;2}}}
{set;_cookiecount;{math;+;{get;_cookieincr};{get;_cookiecount}}}
{set;_wheatincr;{math;*;6;{args;2}}}
{set;_wheatcount;{math;-;{get;_wheatcount};{get;_wheatincr}}}
{set;_eggincr;{math;*;4;{args;2}}}
{set;_eggcount;{math;-;{get;_eggcount};{get;_eggincr}}}
{set;_milkincr;{math;*;2;{args;2}}}
{set;_milkcount;{math;-;{get;_milkcount};{get;_milkincr}}}
{set;_chocolatecount;{math;-;{get;_chocolatecount};{args;2}}}

The Factory crafted {get;_cookieincr} :cookie: Cookies!
 
;The Factory does not have enough Chocolate!};The Factory does not have enough Wheat!};The Factory does not have enough Eggs!};The Factory doesn't have enough Milk!};Please, enter a valid number!}}
}
}
}
}
}
{//;sell.}
{if;==;{args;0};sell;

{if;==;{args;1};milk;
{if;>;{args;2};0;
{if;>=;{get;_milkcount};{args;2};
You have sold {args;2} 🥛 milk for :dollar: {math;*;3;{args;2}}$
{set;_milkcount;{math;-;{get;_milkcount};{args;2}}}
{set;_f$milk;{math;*;{args;2};3}}
{set;_f$;{math;+;{get;_f$};{get;_f$milk}}}
;You don't have enough Milk!}
;Please, specify the amount !}}

{if;==;{args;1};wheat;
{if;>;{args;2};0;
{if;>=;{get;_wheatcount};{args;2};
You have sold {args;2} 🌾 Wheat for :dollar: {math;*;{args;2};1}$
{set;_wheatcount;{math;-;{get;_wheatcount};{args;2}}}
{set;_f$wheat;{math;*;1;{args;2}}}
{set;_f$;{math;+;{get;_f$};{get;_f$wheat}}}
;You don't have enough Weat!}
;Please, specify the amount !}}

{if;==;{args;1};egg;
{if;>;{args;2};0;
{if;>=;{get;_eggcount};{args;2};
You have sold {args;2} 🥚 Egg for :dollar: {math;*;2;{args;2}}$
{set;_eggcount;{math;-;{get;_eggcount};{args;2}}}
{set;_f$egg;{math;*;2;{args;2}}}
{set;_f$;{math;+;{get;_f$};{get;_f$egg}}}
;You don't have enough Egg!}
;Please, specify the amount !}}

{if;==;{args;1};pancakes;
{if;>;{args;2};0;
{if;>=;{get;_pancakecount};{args;2};
You have sold {args;2} 🥞 Pancakes for :dollar: {math;*;4;{args;2}}$
{set;_pancakecount;{math;-;{get;_pancakecount};{args;2}}}
{set;_f$incr;{math;*;4;{args;2}}}
{set;_f$;{math;+;{get;_f$};{get;_f$incr}}}
{set;_spancakecount;{math;+;{get;_spancakecount};{args;2}}}
;You don't have enough Pancakes!};Please, specify the amount !}}

{if;==;{args;1};pancakes_all;
{if;>;{get;_pancakecount};0;
You have sold {get;_pancakecount} :pancakes: Pancakes for :dollar: {math;*;4;{get;_pancakecount}}$
{set;_f$incr;{math;*;4;{get;_pancakecount}}}
{set;_f$;{math;+;{get;_f$};{get;_f$incr}}}
{set;_spancakecount;{math;+;{get;_spancakecount};{get;_pancakecount}}}
{set;_pancakecount;0}
;You don't have enough Pancakes!}}

{if;==;{args;1};cookies;
{if;>;{args;2};0;
{if;>=;{get;_cookiecount};{args;2};
You have sold {args;2} :cookie: Cookies for :dollar: {math;*;8;{args;2}}$
{set;_cookiecount;{math;-;{get;_cookiecount};{args;2}}}
{set;_f$incr;{math;*;8;{args;2}}}
{set;_f$;{math;+;{get;_f$};{get;_f$incr}}}
{set;_scookiecount;{math;+;{get;_scookiecount};{args;2}}}
;You don't have enough Cookies!};Please, specify the amount you want to sell !}}

{if;==;{args;1};cookies_all;
{if;>;{get;_cookiecount};0;
You have sold {get;_cookiecount} :cookie: Cookies for :dollar: {math;*;8;{get;_cookiecount}}$
{set;_f$incr;{math;*;8;{get;_cookiecount}}}
{set;_f$;{math;+;{get;_f$};{get;_f$incr}}}
{set;_scookiecount;{math;+;{get;_scookiecount};{get;_cookiecount}}}
{set;_cookiecount;0}
;You don't have enough Cookies!}}

{if;==;{args;1};chocolate;
{if;>;{args;2};0;
{if;>=;{get;_chocolatecount};{args;2};
You have sold {args;2} 🍫 chocolate for :dollar: {math;*;4;{args;2}}$
{set;_chocolatecount;{math;-;{get;_chocolatecount};{args;2}}}
{set;_f$milk;{math;*;{args;2};4}}
{set;_f$;{math;+;{get;_f$};{get;_f$milk}}}
;You don't have enough 🍫 Chocolate!}
;Please, specify the amount !}}
}

{//;Buy.}
{switch;{args;0};buy;

{if;==;{args;1};upgrade;
{if;==;{get;_costupg};;{set;_costupg;2500}}
{if;>=;{get;_f$};{get;_costupg};
{username} bought a {randchoose;{set;_milkharvest;{math;+;{get;_milkharvest};1}}🥛 Milk upgrade;{set;_eggharvest;{math;+;{get;_eggharvest};1}}🥚 Egg upgrade;{set;_wheatharvest;{math;+;{get;_wheatharvest};1}}🌾 Wheat upgrade;{set;_chocoharvest;{math;+;{get;_chocoharvest};1}}🍫 Chocolate upgrade} for :dollar: **{get;_costupg}$** !
{set;_f$;{math;-;{get;_f$};{get;_costupg}}}
{set;_costupg;{math;*;{get;_costupg};2}}

Next upgrade will cost :dollar: {get;_costupg} $ !
;The Factory don't have enough :dollar: money !}}

{if;==;{args;1};milk;
{if;>;{get;_f$};5;
{if;>;{args;2};0;
{set;_f$milk;{math;*;5;{args;2}}}
{if;<;{get;_f$milk};{get;_f$};
You have bought {args;2} 🥛 milk for :dollar: {math;*;5;{args;2}}$
{set;_milkcount;{math;+;{get;_milkcount};{args;2}}}
{set;_f$incr;{math;*;5;{args;2}}}
{set;_f$;{math;-;{get;_f$};{get;_f$incr}}}
;You don't have enough Money!}
;say what};You don't have enough Money!}}

{if;==;{args;1};wheat;
{if;>;{get;_f$};3;
{if;>;{args;2};0;
{set;_f$wheat;{math;*;3;{args;2}}}
{if;<;{get;_f$wheat};{get;_f$};
You have bought {args;2} 🌾 Wheat for :dollar: {math;*;3;{args;2}}$
{set;_wheatcount;{math;+;{get;_wheatcount};{args;2}}}
{set;_f$incr;{math;*;3;{args;2}}}
{set;_f$;{math;-;{get;_f$};{get;_f$incr}}}
;You don't have enough Money!}
;say what};You don't have enough Money!}}

{if;==;{args;1};egg;
{if;>;{get;_f$};4;
{if;>;{args;2};0;
{set;_f$egg;{math;*;4;{args;2}}}
{if;<;{get;_f$egg};{get;_f$};
You have bought {args;2} 🥚 Egg for :dollar: {math;*;4;{args;2}}$
{set;_eggcount;{math;+;{get;_eggcount};{args;2}}}
{set;_f$incr;{math;*;4;{args;2}}}
{set;_f$;{math;-;{get;_f$};{get;_f$incr}}}
;You don't have enough Money!}
;say what};You don't have enough Money!}}

{if;==;{args;1};chocolate;
{if;>;{get;_f$};8;
{if;>;{args;2};0;
{set;_f$choco;{math;*;8;{args;2}}}
{if;<;{get;_f$choco};{get;_f$};
You have bought {args;2} 🍫 Chocolate(s) for :dollar: {get;_f$choco}$
{set;_chocolatecount;{math;+;{get;_chocolatecount};{args;2}}}
{set;_f$;{math;-;{get;_f$};{get;_f$choco}}}
;You don't have enough Money!}
;
{if;==;{args;2};upgrade;
{if;<;{get;_f$};250000;
The Factory doesn't have enough money for this upgrade !;

The Factory bought a 🍫 Chocolate upgrade for :dollar: **250,000$** !
{set;_chocoharvest;1}
{set;_f$;{math;-;{get;_f$};250000}}
};say what}
};You don't have enough Money!}

}

}
