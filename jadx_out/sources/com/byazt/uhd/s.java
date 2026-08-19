package com.byazt.uhd;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, 935, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends com.byazt.hde.j {
    public com.byazt.bm.jx hp;

    public s(com.byazt.bm.jx jxVar) {
        this.hp = jxVar;
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        if (i2 == -99999986) {
            return (T) values().sparseArray();
        }
        return null;
    }

    public PluginValueSet values() {
        com.byazt.xi.hp hpVarHp = com.byazt.xi.hp.hp();
        com.byazt.bm.jx jxVar = this.hp;
        hpVarHp.hp(8468, jxVar != null ? jxVar.hp() : new HashMap<>());
        com.byazt.bm.jx jxVar2 = this.hp;
        hpVarHp.hp(8469, jxVar2 != null ? jxVar2.w() : 0);
        com.byazt.bm.jx jxVar3 = this.hp;
        hpVarHp.hp(8470, jxVar3 != null ? jxVar3.jx() : "");
        com.byazt.bm.jx jxVar4 = this.hp;
        hpVarHp.hp(8471, jxVar4 != null ? jxVar4.j() : "");
        com.byazt.bm.jx jxVar5 = this.hp;
        hpVarHp.hp(8472, jxVar5 != null ? jxVar5.l() : "");
        com.byazt.bm.jx jxVar6 = this.hp;
        hpVarHp.hp(8473, jxVar6 != null ? jxVar6.a() : "");
        com.byazt.bm.jx jxVar7 = this.hp;
        hpVarHp.hp(8474, jxVar7 != null ? jxVar7.eb() : "");
        return hpVarHp.l();
    }
}
