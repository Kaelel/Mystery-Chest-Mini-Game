{if;==;{get;_mcreg};;{set;_mcreg;[]}}
{if;==;{get;_{userid}_mcreg};;{set;_{userid}_mcreg;0}}
{if;>;{get;_{userid}_diamondcount};0;{set;_{userid}_mcreg;1}
{if;==;-1;{indexof;{get;_mcreg};{userid}};
{push;{get;_mcreg};{userid}}
}}

{if;==;{get;_{userid}_mcreg};0; You need to register first, {username} !

    > Type `!mc_reg` to start!;

{//; {if;<;{get;_{userid}_diamondcount};0;{set;_{userid}_diamondcount;0}} }



{switch;{args;0};inventory;

  {username}'s Inventory : **{round;{get;_{userid}_woodencount}}** <:woodenchest:322454198279208960> Wooden Chest, **{round;{get;_{userid}_silvercount}}** <:silverchest:322454198157443089> Silver Chest, **{round;{get;_{userid}_titancount}}** <:titanchest:322454197612314626> Titan Chest.{newline} +**{round;{get;_{userid}_diamondcount}}**💎 &  **{round;{get;_{userid}_relicscount}}** <:relic:325072418701967375> Relics.
{trim;
{if;==;0;{get;_{userid}_diaavm};
{if;<=;250000;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the 💸**"The Great Gatsby I!"** Achievement!

+ 25K 💎 Diamonds !
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};25000}}
{set;_{userid}_diaavm;1}}}
{if;==;1;{get;_{userid}_diaavm};
{if;<=;500000;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the 💸**"The Great Gatsby II!"** Achievement!

+ 50K 💎 Diamonds !
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};50000}}
{set;_{userid}_diaavm;2}}}
{if;==;2;{get;_{userid}_diaavm};
{if;<=;1000000;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the 💸**"The Great Gatsby III!"** Achievement!

+ 100K 💎 Diamonds !
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};100000}}
{set;_{userid}_diaavm;3}}}

{if;==;{get;_{userid}_luckyavm};0;
{if;==;7;{get;_{userid}_woodencount};
{if;==;7;{get;_{userid}_silvercount};
{if;==;7;{get;_{userid}_titancount};
{if;==;777;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the  🍀**"Lucky Charm I"** Achievement!

+ +3 \☸ Free Spin!
{set;_{userid}_dsspin;{math;+;{get;_{userid}_dsspin};3}}
{set;_{userid}_luckyavm;1}}}}}}
{if;==;{get;_{userid}_luckyavm};1;
{if;==;77;{get;_{userid}_woodencount};
{if;==;77;{get;_{userid}_silvercount};
{if;==;77;{get;_{userid}_titancount};
{if;==;77777;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the  🍀**"Lucky Charm II"** Achievement!

+ +6 \☸ Free Spin!
{set;_{userid}_dsspin;{math;+;{get;_{userid}_dsspin};6}}
{set;_{userid}_luckyavm;2}}}}}}
{if;==;{get;_{userid}_luckyavm};2;
{if;==;777;{get;_{userid}_woodencount};
{if;==;777;{get;_{userid}_silvercount};
{if;==;777;{get;_{userid}_titancount};
{if;==;777777;{get;_{userid}_diamondcount};
{newline}{username} just unlocked the  🍀**"Lucky Charm III"** Achievement!

+ +12 \☸ Free Spin!
{set;_{userid}_dsspin;{math;+;{get;_{userid}_dsspin};12}}
{set;_{userid}_luckyavm;3}}}}}}
}
;claim;
{set;cooldown;{exec;cooldown;1200}}
{if;==;{get;cooldown};true;
{set;_{userid}_claimcavm;{math;+;{get;_{userid}_claimcavm};1}}
 {username} got a {randchoose;<:woodenchest:322454198279208960> Wooden Chest!{set;_{userid}_woodencount;{math;+;{get;_{userid}_woodencount};1}};<:silverchest:322454198157443089> Silver Chest!{set;_{userid}_silvercount;{math;+;{get;_{userid}_silvercount};1}};<:titanchest:322454197612314626> Titan Chest!{set;_{userid}_titancount;{math;+;{get;_{userid}_titancount};1}}}

{trim;
{if;==;0;{get;_{userid}_claimavm};
{if;>=;{get;_{userid}_claimcavm};375;
{username} just unlocked the <:mysterychest:325125261513195521>**"Master Claimer I!"** Achievement!

+ 25 <:titanchest:322454197612314626> Titan Chests!
{set;_{userid}_titancount;{math;+;{get;_{userid}_titancount};25}}
{set;_{userid}_claimavm;1}}}
{if;==;1;{get;_{userid}_claimavm};
{if;>=;{get;_{userid}_claimcavm};750;
{username} just unlocked the <:mysterychest:325125261513195521>**"Master Claimer II!"** Achievement!

+ 50 <:titanchest:322454197612314626> Titan Chests!
{set;_{userid}_titancount;{math;+;{get;_{userid}_titancount};50}}
{set;_{userid}_claimavm;2}}}
{if;==;2;{get;_{userid}_claimavm};
{if;>=;{get;_{userid}_claimcavm};1500;
{username} just unlocked the <:mysterychest:325125261513195521>**"Master Claimer III!"** Achievement!

+ 100 <:titanchest:322454197612314626> Titan Chests!
{set;_{userid}_titancount;{math;+;{get;_{userid}_titancount};100}}
{set;_{userid}_claimavm;3}}}
}
;Please wait {execcc;tspan;{get;cooldown}} more seconds to claim your next Mystery Chest, {username}!}


;mentions; 

{if;==;{args;1};on;
{if;==;{hasrole;367637854068670465;{userid}};false; 
{void;{addrole;367637854068670465}}
{username} just joined the Mini-Knights army!
;You already are a Mini-Knight, {username} !}}

{if;==;{args;1};off;
{if;==;{hasrole;367637854068670465;{userid}};true;
{void;{removerole;367637854068670465}}
{username} just left the Mini-Knights army! ☹
;You already left the Mini-Knight army, {username} !}}


;open;
{set;cooldown;{exec;cooldown;12 open}}
{if;==;{get;cooldown};true;

{if;==;{args;1};all;
{set;~{userid}diamondincr;{math;+;
{math;*;{get;_{userid}_woodencount};{randint;50;120}};
{math;*;{get;_{userid}_silvercount};{randint;200;320}};
{math;*;{get;_{userid}_titancount};{randint;500;680}}
}}
{set;~{userid}relicsincr;{math;+;
{math;*;{get;_{userid}_woodencount};{randint;15;40}};
{math;*;{get;_{userid}_silvercount};{randint;45;120}};
{math;*;{get;_{userid}_titancount};{randint;150;300}}
}}
{set;~{userid}relicsincr;{ceil;{math;*;{get;~{userid}relicsincr};{get;_{userid}_bosincr}}}}

{set;~{userid}openall;{if;>;{get;_{userid}_woodencount};0;**{get;_{userid}_woodencount}** <:woodenchest:322454198279208960>;}{if;>;{get;_{userid}_silvercount};0;**{get;_{userid}_silvercount}** <:silverchest:322454198157443089>;}{if;>;{get;_{userid}_titancount};0;**{get;_{userid}_titancount}** <:titanchest:322454197612314626>;}}

{username} opened : {if;==;{length;{get;~{userid}openall}};0;***Nothing*** ;{get;~{userid}openall}} for **{get;~{userid}diamondincr}** :gem: Diamonds & **{get;~{userid}relicsincr}** <:relic:325072418701967375> Relics !

{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}
{set;_{userid}_woodencount;0}{set;_{userid}_silvercount;0}{set;_{userid}_titancount;0}
}

{if;==;{args;1};wooden;
{if;>;{args;2};0;
{if;<;{get;_{userid}_woodencount};{args;2};You only have {get;_{userid}_woodencount} Wooden Chests, {username} 😩.;
{set;~{userid}diamondincr;{math;*;{randint;50;120};{round;{args;2}}}}
{set;~{userid}relicsincr;{math;*;{randint;15;40};{get;_{userid}_bosincr};{round;{args;2}}}}

{username} opened **{round;{args;2}}** <:woodenchest:322454198279208960> Wooden Chest(s) for **{get;~{userid}diamondincr} Diamonds 💎 & {ceil;{get;~{userid}relicsincr}} <:relic:325072418701967375> Relics !** 
{set;_{userid}_woodencount;{math;-;{get;_{userid}_woodencount};{round;{args;2}}}}
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}
}
; Please, specify the amount of Chests you want to open!}}

{if;==;{args;1};wooden_all;
{if;<;0;{get;_{userid}_woodencount};
{set;~{userid}diamondincr;{math;*;{get;_{userid}_woodencount};{randint;50;120}}}
{set;~{userid}relicsincr;{math;*;{randint;15;40};{get;_{userid}_bosincr};{get;_{userid}_woodencount}}}
{username} has opened **{get;_{userid}_woodencount}** <:woodenchest:322454198279208960> Wooden Chests for **{get;~{userid}diamondincr}** 💎 Diamonds and **{ceil;{get;~{userid}relicsincr}}** <:relic:325072418701967375> Relics !
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}
{set;_{userid}_woodencount;0}
;You don't have any <:woodenchest:322454198279208960> Wooden Chest to open, {username}! 😩}
}
{if;==;{args;1};wooden5;{if;<=;{get;_{userid}_woodencount};4;You only have {get;_{userid}_woodencount} Wooden Chests, {username} 😩. ;{set;~{userid}diamondincr;{randint;250;600}}{set;~{userid}relicsincr;{math;*;{randint;75;200};{get;_{userid}_bosincr}}} {username} got **{get;~{userid}diamondincr} Diamonds 💎 & {ceil;{get;~{userid}relicsincr}} <:relic:325072418701967375> Relics !** {set;_{userid}_woodencount;{math;-;{get;_{userid}_woodencount};5}}{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}}}

{if;==;{args;1};silver;
{if;>;{args;2};0;
{if;<;{get;_{userid}_silvercount};{args;2};You only have {get;_{userid}_silvercount} Silver Chests, {username} 😩. ;
{set;~{userid}diamondincr;{math;*;{randint;200;320};{round;{args;2}}}}
{set;~{userid}relicsincr;{math;*;{randint;45;120};{get;_{userid}_bosincr};{round;{args;2}}}} 
{username} opened **{round;{args;2}}** <:silverchest:322454198157443089> Silver Chest(s) for **{get;~{userid}diamondincr} Diamonds 💎 & {ceil;{get;~{userid}relicsincr}} <:relic:325072418701967375> Relics !** 
{set;_{userid}_silvercount;{math;-;{get;_{userid}_silvercount};{round;{args;2}}}}
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}
}; Please, specify the amount of Chests you want to open!}}

{if;==;{args;1};silver_all;
{if;<;0;{get;_{userid}_silvercount};
{set;~{userid}diamondincr;{math;*;{get;_{userid}_silvercount};{randint;200;320}}}
{set;~{userid}relicsincr;{math;*;{randint;45;120};{get;_{userid}_bosincr};{get;_{userid}_silvercount}}}
{username} has opened **{get;_{userid}_silvercount}** <:silverchest:322454198157443089> Silver Chests for **{get;~{userid}diamondincr}** 💎 Diamonds and **{ceil;{get;~{userid}relicsincr}}** <:relic:325072418701967375> Relics !
{set;_{userid}_diamondcount;{math;+;{get;~{userid}diamondincr};{get;_{userid}_diamondcount}}}
{set;_{userid}_relicscount;{math;+;{get;~{userid}relicsincr};{get;_{userid}_relicscount}}}
{set;_{userid}_silvercount;0}
;You don't have any <:silverchest:322454198157443089> Silver Chest to open, {username}! 😩}
}

{if;==;{args;1};titan;
{if;>;{args;2};0;
{if;<;{get;_{userid}_titancount};{args;2};You only have {get;_{userid}_titancount} Titan Chests, {username} 😩. ;
{set;~{userid}diamondincr;{math;*;{randint;500;680};{round;{args;2}}}}
{set;~{userid}relicsincr;{math;*;{randint;150;300};{get;_{userid}_bosincr};{round;{args;2}}}}
{username} has opened **{round;{args;2}}** <:titanchest:322454197612314626> Titan Chest(s) for **{get;~{userid}diamondincr} Diamonds 💎 & {ceil;{get;~{userid}relicsincr}} <:relic:325072418701967375> Relics !**  
{set;_{userid}_titancount;{math;-;{get;_{userid}_titancount};{round;{args;2}}}}
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}

}; Please, specify the amount of Chests you want to open!}}

{if;==;{args;1};titan_all;
{if;<;0;{get;_{userid}_titancount};
{set;~{userid}diamondincr;{math;*;{get;_{userid}_titancount};{randint;500;680}}}
{set;~{userid}relicsincr;{math;*;{randint;150;300};{get;_{userid}_bosincr};{get;_{userid}_titancount}}}
{username} has opened **{get;_{userid}_titancount}** <:titanchest:322454197612314626> Titan Chests for **{get;~{userid}diamondincr}** 💎 Diamonds and **{ceil;{get;~{userid}relicsincr}}** <:relic:325072418701967375> Relics !
{set;_{userid}_diamondcount;{math;+;{get;_{userid}_diamondcount};{get;~{userid}diamondincr}}}
{set;_{userid}_relicscount;{math;+;{get;_{userid}_relicscount};{get;~{userid}relicsincr}}}
{set;_{userid}_titancount;0}

;You don't have any <:titanchest:322454197612314626> Titan Chest to open, {username}! 😩}
}
;You need to wait {get;cooldown} more seconds, {username}.};Hey, {username}! You can't do that👀}

{if;==;{get;_{userid}_relicsincravm};0;
{if;==;{get;~{userid}relicsincr};666;{username} just unlocked the 👿**"Evil Within!"** Achievement!
{set;_{userid}_relicsincravm;1}}}

{void;{execcc;dldchk}}

}
