package com.byazt.sp;

import com.byazt.ot.j;
import com.byazt.psp.jx;
import com.byazt.zp.l;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_DNS_START_TIME, 28})
/* loaded from: classes3.dex */
public class hp {

    /* renamed from: l, reason: collision with root package name */
    public static volatile hp f25502l;
    public Map<String, com.byazt.zp.hp> hp = new HashMap();

    private hp() {
    }

    public static hp hp() {
        if (f25502l != null) {
            return f25502l;
        }
        synchronized (hp.class) {
            try {
                if (f25502l != null) {
                    return f25502l;
                }
                hp hpVar = new hp();
                f25502l = hpVar;
                return hpVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void hp(String str, com.byazt.zp.hp hpVar) {
        this.hp.put(str, hpVar);
    }

    public void hp(String str, com.byazt.rsz.hp hpVar, com.byazt.ot.hp hpVar2) {
        com.byazt.zp.hp hpVar3 = this.hp.get(str);
        if (hpVar3 == null || hpVar == null) {
            return;
        }
        Map<String, Object> mapHp = hpVar.hp();
        j jVarW = hpVar.w();
        if (jVarW != null) {
            Map<String, Object> mapHp2 = com.byazt.mi.hp.hp().hp(String.valueOf(jVarW.hashCode()));
            mapHp.putAll(mapHp2);
            mapHp2.clear();
        }
        if (hpVar.s() != null && hpVar.s().j() && !jx.hp(hpVar.s().jx(), hpVar.jx(), hpVar.hp())) {
            hpVar.l(mapHp, new com.byazt.ppg.hp(7599999, "条件不满足"));
            return;
        }
        com.byazt.kxp.hp hpVarHp = com.byazt.kxp.hp.hp();
        com.byazt.zp.hp hpVarHp2 = hpVarHp.hp(hpVar3);
        HashMap map = new HashMap();
        if (hp(hpVar.l())) {
            map.putAll(hpVar.l());
        }
        if (hp(mapHp)) {
            map.putAll(mapHp);
        }
        hpVarHp.hp(hpVarHp2, map);
        if (hpVarHp2 instanceof com.byazt.zp.jx) {
            ((com.byazt.zp.jx) hpVarHp2).hp(hpVar.l(), hpVar.hp(), hpVar);
        } else if (hpVarHp2 instanceof l) {
            ((l) hpVarHp2).hp(hpVar.l(), hpVar.hp(), hpVar);
        }
    }

    private boolean hp(Map map) {
        return (map == null || map.isEmpty()) ? false : true;
    }
}
