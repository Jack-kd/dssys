package com.byazt.zn;

import android.content.Intent;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, 19})
/* loaded from: classes3.dex */
public class jl {
    public static volatile jl hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.ow.w f28525l;

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ow.w l() {
        if (this.f28525l == null) {
            this.f28525l = nu.hp("hide_recent_activity_recorder");
        }
        return this.f28525l;
    }

    public static jl hp() {
        if (hp == null) {
            synchronized (jl.class) {
                try {
                    if (hp == null) {
                        hp = new jl();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public void hp(Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean z2 = (intent.getFlags() & 8388608) == 8388608;
        com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.zn.jl.1
            @Override // java.lang.Runnable
            public void run() {
                int i2 = 0;
                int i3 = jl.this.l().get("all_activity_count", 0) + 1;
                if (z2) {
                    int i4 = jl.this.l().get("hide_activity_count", 0) + 1;
                    if (i4 >= 10) {
                        jl.this.hp(i3);
                        i3 = 0;
                    } else {
                        i2 = i4;
                    }
                    jl.this.l().put("hide_activity_count", i2);
                }
                jl.this.l().put("all_activity_count", i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(final int i2) {
        try {
            com.byazt.lf.k.hp().l(new com.byazt.fq.hp() { // from class: com.byazt.zn.jl.2
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ac", i2);
                    return com.byazt.jlb.l.l().hp("hide_activity_record").l(jSONObject.toString());
                }
            }, "hide_activity_record");
        } catch (Throwable unused) {
        }
    }
}
