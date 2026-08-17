package com.byazt.fib;

import com.byazt.yrp.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET})
/* loaded from: classes2.dex */
public class w implements com.byazt.qu.hp {
    public com.byazt.qu.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19789j;
    public Map<String, Object> jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.rsz.hp f19790l;

    /* renamed from: w, reason: collision with root package name */
    public q f19791w;

    public w(com.byazt.qu.hp hpVar, q qVar, com.byazt.rsz.hp hpVar2, Map<String, Object> map, String str) {
        this.f19791w = qVar;
        this.hp = hpVar;
        this.f19790l = hpVar2;
        this.jx = map;
        this.f19789j = str;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(final Map<String, Object> map) {
        int iHp = com.byazt.yx.l.hp().hp(this.f19791w, new com.byazt.nra.jx() { // from class: com.byazt.fib.w.1
            @Override // com.byazt.nra.jx
            public void hp(int i2) {
                if (w.this.hp == null || !w.this.hp.hp(map)) {
                    w.this.f19790l.hp(w.this.jx, (com.byazt.ppg.hp) null);
                }
            }
        }, this.f19789j, this.jx);
        if (iHp == 1 || iHp == 2) {
            hp();
            return true;
        }
        com.byazt.qu.hp hpVar = this.hp;
        return hpVar != null && hpVar.hp(map);
    }

    private void hp() {
        Map<String, Object> map;
        Map<String, Object> map2 = this.jx;
        if (map2 != null) {
            Object obj = map2.get("click_chain");
            Object obj2 = this.jx.get("handle_chain_data");
            if (obj == null || !(obj instanceof com.byazt.pf.jx)) {
                return;
            }
            com.byazt.pf.jx jxVar = (com.byazt.pf.jx) obj;
            com.byazt.ey.hp hpVar = (com.byazt.ey.hp) jxVar.hp(com.byazt.ey.hp.class);
            if (hpVar != null) {
                if (obj2 != null && (obj2 instanceof Map)) {
                    map = (Map) obj2;
                } else {
                    map = new HashMap<>();
                }
                hpVar.hp(map, jxVar);
            }
        }
    }
}
