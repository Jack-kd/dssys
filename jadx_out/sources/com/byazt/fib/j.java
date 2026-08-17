package com.byazt.fib;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.xci.mp;
import com.byazt.zn.dy;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC, 38})
/* loaded from: classes2.dex */
public class j extends hp {
    public final boolean jl;

    public j(com.byazt.yrp.eb ebVar, Context context, String str, com.byazt.zbc.jx jxVar, String str2, boolean z2, Map<String, Object> map, boolean z3) {
        this.hp = ebVar;
        this.jx = context;
        this.f19748j = str;
        this.f19754w = jxVar;
        this.f19746a = str2;
        this.gu = z2;
        this.f19750l = map;
        this.jl = z3;
    }

    @Override // com.byazt.fib.hp
    public boolean jx(int i2) {
        Function<SparseArray<Object>, Object> function = this.f19747e;
        return function != null && com.byazt.hy.jx.hp(function, i2) == 2;
    }

    @Override // com.byazt.fib.hp
    public com.byazt.ve.hp w(final Map<String, Object> map) {
        final int iJ = hp.j(map);
        String str = this.f19748j;
        com.byazt.hy.jx.hp(str, str, this.hp.q_(), iJ);
        map.put("action_type_button", 2);
        com.byazt.yrp.eb ebVar = this.hp;
        if (ebVar != null && !TextUtils.isEmpty(ebVar.j())) {
            map.put("id", Long.valueOf(Double.valueOf(this.hp.j()).longValue()));
        }
        if (!jx(iJ)) {
            jx(map);
            return null;
        }
        com.byazt.ve.hp hpVar = new com.byazt.ve.hp() { // from class: com.byazt.fib.j.1
            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z2) {
            }

            @Override // com.byazt.b.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
                if (map == null) {
                    return;
                }
                com.byazt.hy.jx.hp(0, iJ);
                j jVar = j.this;
                jVar.f19754w.hp(jVar.l(iJ));
                map.remove("downloadButtonClickListener");
                if (j.this.hp((com.byazt.xci.j) null, (com.byazt.ve.hp) null, map)) {
                    return;
                }
                j.this.jx(map);
            }
        };
        com.byazt.hy.jx.hp(map, hpVar);
        return hpVar;
    }

    @Override // com.byazt.fib.hp
    public com.byazt.ve.j hp(Map<String, Object> map, final dy<String, Object> dyVar) {
        final int iJ = hp.j(dyVar);
        return new com.byazt.ve.j() { // from class: com.byazt.fib.j.2
            @Override // com.byazt.ve.j
            public void onItemClick() {
                if (j.this.f19752s || j.this.hp.x_()) {
                    com.byazt.hy.jx.l(1, iJ);
                    dyVar.remove("itemClickListener");
                    j.this.f19747e.apply(com.byazt.wi.j.hp().hp(17).hp(Void.class).hp(0, dyVar).l());
                } else {
                    if (j.this.jl) {
                        mp mpVarL = j.this.l();
                        j jVar = j.this;
                        com.byazt.rj.jx.hp(mpVarL, jVar.jx, jVar.f19748j, (Map<String, Object>) null, (com.byazt.ot.w) null);
                        return;
                    }
                    j jVar2 = j.this;
                    com.byazt.yrp.eb ebVar = jVar2.hp;
                    if (ebVar instanceof mp) {
                        Context context = jVar2.jx;
                        String str = jVar2.f19748j;
                        new com.byazt.qn.hp((mp) ebVar, context, str, ky.j(str), new HashMap(), null, null).hp(new HashMap());
                    }
                }
            }
        };
    }
}
