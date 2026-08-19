package com.byazt.fib;

import android.content.Context;
import com.byazt.kfd.jx;
import com.byazt.la.e;
import com.byazt.xci.k;
import com.byazt.yrp.q;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.Objects;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.qu.hp {

    /* renamed from: a, reason: collision with root package name */
    public Map<String, Object> f19777a;
    public q hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.qu.hp f19778j;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f19779l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.rsz.hp f19780w;

    public l(com.byazt.qu.hp hpVar, Context context, q qVar, String str, Map<String, Object> map, com.byazt.rsz.hp hpVar2) {
        this.f19778j = hpVar;
        this.f19779l = context;
        this.hp = qVar;
        this.jx = str;
        this.f19780w = hpVar2;
        this.f19777a = map;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(final Map<String, Object> map) {
        k kVarL = this.hp.w() == 9 && Objects.equals(this.f19777a.get("saas_status_while_click"), 2) ? this.hp.D_() != null ? this.hp.D_().l() : null : this.hp.ec();
        if (!com.byazt.kfd.jx.hp(kVarL, false)) {
            com.byazt.qu.hp hpVar = this.f19778j;
            return hpVar != null && hpVar.hp(map);
        }
        if (e.w(com.byazt.rj.jx.hp(this.hp, this.f19777a))) {
            com.byazt.qu.hp hpVar2 = this.f19778j;
            return hpVar2 != null && hpVar2.hp(map);
        }
        if (e.j(com.byazt.rj.jx.hp(this.hp, this.f19777a))) {
            com.byazt.qu.hp hpVar3 = this.f19778j;
            return hpVar3 != null && hpVar3.hp(map);
        }
        new com.byazt.kfd.jx(this.hp, kVarL, this.f19779l, this.f19777a).hp(this.jx).hp(new jx.hp() { // from class: com.byazt.fib.l.1
            @Override // com.byazt.kfd.jx.hp
            public void hp() {
                if (l.this.f19778j.hp(map)) {
                    return;
                }
                l.this.f19780w.hp(l.this.f19777a, (com.byazt.ppg.hp) null);
            }
        });
        return true;
    }
}
