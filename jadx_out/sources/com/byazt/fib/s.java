package com.byazt.fib;

import android.content.Context;
import com.byazt.kfd.w;
import com.byazt.yrp.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s implements com.byazt.qu.hp {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.rsz.hp f19782a;
    public int eb;
    public com.byazt.qu.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public String f19783j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f19784l;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f19785q;

    /* renamed from: s, reason: collision with root package name */
    public final e f19786s;

    /* renamed from: w, reason: collision with root package name */
    public Map<String, Object> f19787w;

    public s(e eVar, Context context, boolean z2, String str, Map<String, Object> map, com.byazt.rsz.hp hpVar, int i2, boolean z3) {
        this.f19786s = eVar;
        this.f19784l = context;
        this.jx = z2;
        this.f19783j = str;
        this.f19787w = map;
        this.f19782a = hpVar;
        this.eb = i2;
        this.f19785q = z3;
    }

    @Override // com.byazt.qu.hp
    public boolean hp(final Map<String, Object> map) {
        boolean zHp = !com.byazt.kfd.w.hp() ? new com.byazt.kfd.w(this.f19786s, this.f19784l, this.f19785q).hp(this.f19783j).hp(this.eb).l(this.jx).hp(this.f19787w).hp(new w.hp() { // from class: com.byazt.fib.s.1
            @Override // com.byazt.kfd.w.hp
            public void hp() {
            }

            @Override // com.byazt.kfd.w.hp
            public void hp(com.byazt.ex.hp hpVar) {
                if (s.this.hp != null ? s.this.hp.hp(map) : false) {
                    return;
                }
                com.byazt.rj.jx.hp((Map<String, Object>) s.this.f19787w, hpVar);
                if (s.this.f19785q) {
                    s.this.f19782a.l(s.this.f19787w, null);
                } else {
                    s.this.f19782a.hp(s.this.f19787w, (com.byazt.ppg.hp) null);
                }
            }
        }) : false;
        com.byazt.kfd.w.hp(false);
        if (zHp) {
            return true;
        }
        com.byazt.qu.hp hpVar = this.hp;
        return hpVar != null && hpVar.hp(map);
    }
}
