package com.byazt.hs;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.eb.w;
import com.byazt.p000if.eb;
import com.byazt.toc.jl;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE, 30})
/* loaded from: classes2.dex */
public class jx implements w {
    public jl hp;

    /* renamed from: j, reason: collision with root package name */
    public hp f20950j;
    public eb jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.aqw.hp f20951l;

    public jx(Context context, com.byazt.aqw.hp hpVar, eb ebVar) {
        this.f20951l = hpVar;
        if (hpVar != null) {
            this.hp = new jl(context);
            this.jx = ebVar;
        }
    }

    @Override // com.byazt.eb.w
    public void hp() {
        HashMap map = new HashMap();
        String strZy = this.f20951l.zy();
        if (!TextUtils.isEmpty(strZy)) {
            map.put(MediationConstant.ADN_GDT, strZy);
        }
        this.hp.hp(new com.byazt.iqm.l(7, this.f20951l.nu(), this.f20951l.lv()), new com.byazt.jd.l() { // from class: com.byazt.hs.jx.1
            @Override // com.byazt.jd.l
            public void hp(com.byazt.dq.hp hpVar) {
                if (hpVar == null || jx.this.jx == null) {
                    return;
                }
                jx.this.jx.hp(hpVar.hp, hpVar.f19238l);
            }

            @Override // com.byazt.jd.l
            public void l() {
                if (jx.this.jx != null) {
                    jx.this.jx.hp();
                    if (jx.this.f20950j == null) {
                        jx jxVar = jx.this;
                        jxVar.f20950j = new hp(jxVar.hp);
                    }
                    jx.this.jx.l(jx.this.f20950j);
                }
            }

            @Override // com.byazt.jd.l
            public void hp() {
                if (jx.this.jx != null) {
                    if (jx.this.f20950j == null) {
                        jx jxVar = jx.this;
                        jxVar.f20950j = new hp(jxVar.hp);
                    }
                    jx.this.jx.hp(jx.this.f20950j);
                }
            }
        });
    }
}
