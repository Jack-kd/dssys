package com.byazt.fi;

@com.byazt.kj.hp(hp = {0, 1, 1569, 38})
/* loaded from: classes2.dex */
public class j {
    public static void hp(com.byazt.ti.hp hpVar, String str) {
        com.byazt.aw.l.l("TMe_reward", "RewardUtils  ".concat(String.valueOf(str)));
        if (hpVar == null) {
            com.byazt.aw.l.l("TMe_reward", "rewardItem is null ");
            return;
        }
        com.byazt.aw.l.l("TMe_reward", "rewardItem.getRewardName " + hpVar.jx());
        com.byazt.aw.l.l("TMe_reward", "rewardItem.getAmount " + hpVar.l());
        com.byazt.aw.l.l("TMe_reward", "rewardItem.getCustomData() " + hpVar.j());
        com.byazt.aw.l.l("TMe_reward", "rewardItem.rewardVerify() " + hpVar.hp());
    }
}
