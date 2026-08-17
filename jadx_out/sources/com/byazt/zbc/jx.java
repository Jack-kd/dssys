package com.byazt.zbc;

import android.content.Context;
import android.view.View;
import com.anythink.core.common.f.g;
import com.byazt.dy.eb;
import com.byazt.la.e;
import com.byazt.xci.mp;
import com.byazt.xci.sz;
import com.byazt.zn.w;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 448, 30})
/* loaded from: classes3.dex */
public class jx {
    public mp hp;
    public hp jx;

    /* renamed from: l, reason: collision with root package name */
    public Context f28354l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.cb.hp f28357w;

    /* renamed from: j, reason: collision with root package name */
    public boolean f28353j = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f28352a = false;
    public int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f28356s = false;

    /* renamed from: q, reason: collision with root package name */
    public int f28355q = -1;

    public jx(Context context, mp mpVar) {
        this.f28354l = context;
        this.hp = mpVar;
    }

    public boolean j(boolean z2) {
        hp hpVar = this.jx;
        if (hpVar == null) {
            return true;
        }
        hpVar.l(z2 || this.f28356s);
        hp hpVar2 = this.jx;
        if (hpVar2 instanceof l) {
            l lVar = (l) hpVar2;
            lVar.jx(this.f28352a);
            lVar.hp(this.eb);
        }
        int i2 = this.f28355q;
        if (i2 == 1) {
            this.jx.f28349j = 4;
            return true;
        }
        if (i2 == 0) {
            return false;
        }
        return this.jx.hp();
    }

    public void jx(boolean z2) {
        this.f28356s = z2;
    }

    public void l(boolean z2) {
        this.f28352a = z2;
    }

    public String jx(long j2) {
        if (j2 <= 0) {
            return "-";
        }
        return String.format("%.1fMB", Double.valueOf((j2 / 1024.0d) / 1024.0d));
    }

    public void l(int i2) {
        this.f28355q = i2;
    }

    private void l(final String str) {
        if (sz.v(this.hp) != 4) {
            return;
        }
        TTDelegateActivity.hp(new eb() { // from class: com.byazt.zbc.jx.2
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str2) throws JSONException {
                jx.this.hp(str, 1, str2);
                TTDelegateActivity.hp((eb) null);
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) throws JSONException {
                jx.this.hp(str, 0, "");
                TTDelegateActivity.hp((eb) null);
            }
        });
    }

    private eb jx(final String str) {
        return new eb() { // from class: com.byazt.zbc.jx.3
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str2) throws JSONException {
                jx jxVar = jx.this;
                jxVar.hp(jxVar.hp, str, 6, i2, str2);
                TTDelegateActivity.hp((eb) null);
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) throws JSONException {
                jx jxVar2 = jx.this;
                jxVar2.hp(jxVar2.hp, str, 5, 0, "");
                TTDelegateActivity.hp((eb) null);
            }
        };
    }

    public void hp(hp hpVar) {
        hp(hpVar, this.hp);
    }

    public void hp(hp hpVar, com.byazt.yrp.eb ebVar) {
        this.jx = hpVar;
        if (hpVar == null) {
            return;
        }
        hpVar.hp(this.f28354l);
        hpVar.hp(ebVar);
        hpVar.hp(this.f28353j);
    }

    public String l(long j2) {
        if (j2 >= 100000000) {
            return String.format("%d亿+", Long.valueOf(Math.round(j2 / 1.0E8d)));
        }
        if (j2 >= 10000) {
            return String.format("%d万+", Long.valueOf(Math.round(j2 / 10000.0d)));
        }
        if (j2 > 0) {
            return String.valueOf(j2);
        }
        return "-";
    }

    private String j(String str) {
        com.byazt.ctq.jx jxVarHp = com.byazt.jz.l.hp();
        if (jxVarHp == null) {
            return null;
        }
        return jxVarHp.get(str, "");
    }

    public void hp(boolean z2) {
        this.f28353j = z2;
    }

    public void hp(com.byazt.cb.hp hpVar) {
        this.f28357w = hpVar;
    }

    private w.hp l(final String str, final com.byazt.cb.l lVar) {
        return new w.hp() { // from class: com.byazt.zbc.jx.4
            @Override // com.byazt.zn.w.hp
            public void hp() {
                com.byazt.cb.l lVar2 = lVar;
                if (lVar2 != null) {
                    lVar2.hp();
                }
                if (jx.this.f28357w != null) {
                    jx.this.f28357w.jx();
                    jx.this.f28357w.l();
                }
                a.f28348l = true;
                com.byazt.jdb.j.l(jx.this.hp, str, "pop_up_download", jx.this.hp());
            }

            @Override // com.byazt.zn.w.hp
            public void jx() {
                com.byazt.jdb.j.l(jx.this.hp, str, "pop_up_cancel", jx.this.hp());
                if (jx.this.f28357w != null) {
                    jx.this.f28357w.l();
                }
            }

            @Override // com.byazt.zn.w.hp
            public void l() {
            }
        };
    }

    public void hp(int i2) {
        this.eb = i2;
    }

    public void hp(String str, com.byazt.cb.l lVar) throws JSONException {
        if (this.hp == null) {
            return;
        }
        hp((com.byazt.xci.j) null, str, lVar);
    }

    public void hp(com.byazt.xci.j jVar, final String str, final String str2, final com.byazt.cb.l lVar) {
        mp mpVar = this.hp;
        if (mpVar == null) {
            return;
        }
        if (jVar == null && mpVar.cd() == 2 && !(this.jx instanceof w)) {
            com.byazt.uid.w.l(new com.byazt.uid.eb("tt_download_check") { // from class: com.byazt.zbc.jx.1
                @Override // java.lang.Runnable
                public void run() throws JSONException {
                    jx.this.hp(com.byazt.jz.sz.hp().hp(jx.this.hp, str2), str, lVar);
                }
            });
        } else {
            hp(jVar, str, lVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa A[Catch: JSONException -> 0x00ae, TryCatch #2 {JSONException -> 0x00ae, blocks: (B:27:0x0085, B:29:0x00aa, B:31:0x00b0, B:33:0x00ba), top: B:44:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ba A[Catch: JSONException -> 0x00ae, TRY_LEAVE, TryCatch #2 {JSONException -> 0x00ae, blocks: (B:27:0x0085, B:29:0x00aa, B:31:0x00b0, B:33:0x00ba), top: B:44:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.xci.j r12, java.lang.String r13, com.byazt.cb.l r14) throws org.json.JSONException {
        /*
            r11 = this;
            com.byazt.zn.w$hp r2 = r11.l(r13, r14)
            if (r12 == 0) goto L2e
            com.byazt.xci.mp r14 = r11.hp     // Catch: org.json.JSONException -> L1d
            com.byazt.xci.a r14 = r14.vv()     // Catch: org.json.JSONException -> L1d
            if (r14 == 0) goto L20
            org.json.JSONArray r0 = r14.j()     // Catch: org.json.JSONException -> L1d
            r12.hp(r0)     // Catch: org.json.JSONException -> L1d
            float r14 = r14.jx()     // Catch: org.json.JSONException -> L1d
            r12.hp(r14)     // Catch: org.json.JSONException -> L1d
            goto L20
        L1d:
            r12 = r11
            goto Ld4
        L20:
            java.lang.String r14 = r12.s()     // Catch: org.json.JSONException -> L1d
            java.lang.String r0 = r12.hp()     // Catch: org.json.JSONException -> L1d
            java.lang.String r12 = r12.j()     // Catch: org.json.JSONException -> L1d
        L2c:
            r4 = r12
            goto L4a
        L2e:
            com.byazt.xci.mp r12 = r11.hp     // Catch: org.json.JSONException -> L1d
            java.lang.String r14 = r12.mt()     // Catch: org.json.JSONException -> L1d
            com.byazt.xci.mp r12 = r11.hp     // Catch: org.json.JSONException -> L1d
            java.lang.String r0 = com.byazt.fy.s.jx(r12)     // Catch: org.json.JSONException -> L1d
            com.byazt.xci.mp r12 = r11.hp     // Catch: org.json.JSONException -> L1d
            com.byazt.xci.dy r12 = r12.nq()     // Catch: org.json.JSONException -> L1d
            if (r12 == 0) goto L47
            java.lang.String r12 = r12.hp()     // Catch: org.json.JSONException -> L1d
            goto L2c
        L47:
            java.lang.String r12 = ""
            goto L2c
        L4a:
            com.byazt.xci.mp r12 = r11.hp     // Catch: org.json.JSONException -> L1d
            boolean r12 = com.byazt.la.e.q(r12)     // Catch: org.json.JSONException -> L1d
            if (r12 == 0) goto L77
            android.content.Context r12 = r11.f28354l     // Catch: org.json.JSONException -> L1d
            com.byazt.xci.mp r1 = r11.hp     // Catch: org.json.JSONException -> L1d
            boolean r12 = com.byazt.la.e.hp(r12, r1, r0)     // Catch: org.json.JSONException -> L1d
            if (r12 != 0) goto L73
            com.byazt.xci.mp r6 = r11.hp     // Catch: org.json.JSONException -> L1d
            android.content.Context r12 = r11.f28354l     // Catch: org.json.JSONException -> L1d
            int r8 = com.byazt.la.e.l(r12, r6, r0)     // Catch: org.json.JSONException -> L1d
            java.lang.String r10 = ""
            r9 = 0
            r5 = r11
            r7 = r13
            r5.hp(r6, r7, r8, r9, r10)     // Catch: org.json.JSONException -> L70
            r1 = r7
        L6d:
            r12 = r0
            r0 = r5
            goto L85
        L70:
            r12 = r5
            goto Ld4
        L73:
            r1 = r13
            r12 = r0
            r0 = r11
            goto L85
        L77:
            r5 = r11
            r1 = r13
            com.byazt.xci.mp r12 = r5.hp     // Catch: org.json.JSONException -> L70
            java.lang.String r13 = "pop_up"
            org.json.JSONObject r3 = r11.hp()     // Catch: org.json.JSONException -> L70
            com.byazt.jdb.j.l(r12, r1, r13, r3)     // Catch: org.json.JSONException -> L70
            goto L6d
        L85:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: org.json.JSONException -> Lae
            r5.<init>()     // Catch: org.json.JSONException -> Lae
            java.lang.String r13 = "dialog_title"
            r5.put(r13, r12)     // Catch: org.json.JSONException -> Lae
            java.lang.String r13 = "dialog_icon_url"
            r5.put(r13, r4)     // Catch: org.json.JSONException -> Lae
            java.lang.String r13 = "dialog_app_description"
            com.byazt.xci.mp r3 = r0.hp     // Catch: org.json.JSONException -> Lae
            java.lang.String r3 = r3.cu()     // Catch: org.json.JSONException -> Lae
            r5.put(r13, r3)     // Catch: org.json.JSONException -> Lae
            java.lang.String r3 = r11.hp(r14)     // Catch: org.json.JSONException -> Lae
            r11.l(r1)     // Catch: org.json.JSONException -> Lae
            com.byazt.cb.hp r13 = r0.f28357w     // Catch: org.json.JSONException -> Lae
            if (r13 == 0) goto Lb0
            r13.hp()     // Catch: org.json.JSONException -> Lae
            goto Lb0
        Lae:
            r12 = r0
            goto Ld4
        Lb0:
            android.content.Context r13 = r0.f28354l     // Catch: org.json.JSONException -> Lae
            com.byazt.xci.mp r14 = r0.hp     // Catch: org.json.JSONException -> Lae
            boolean r12 = com.byazt.la.e.hp(r13, r14, r12)     // Catch: org.json.JSONException -> Lae
            if (r12 == 0) goto Lbf
            r0.hp(r1, r2, r3, r4, r5)     // Catch: org.json.JSONException -> Lae
            r12 = r0
            return
        Lbf:
            r12 = r0
            android.content.Context r0 = r12.f28354l     // Catch: org.json.JSONException -> Ld4
            com.byazt.xci.mp r13 = r12.hp     // Catch: org.json.JSONException -> Ld4
            java.lang.String r1 = r13.j()     // Catch: org.json.JSONException -> Ld4
            java.lang.String r13 = r5.toString()     // Catch: org.json.JSONException -> Ld4
            com.byazt.xci.mp r5 = r12.hp     // Catch: org.json.JSONException -> Ld4
            r4 = r2
            r2 = r3
            r3 = r13
            com.byazt.zn.w.hp(r0, r1, r2, r3, r4, r5)     // Catch: org.json.JSONException -> Ld4
        Ld4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zbc.jx.hp(com.byazt.xci.j, java.lang.String, com.byazt.cb.l):void");
    }

    private String hp(String str) throws JSONException {
        int iV = sz.v(this.hp);
        try {
            if (iV != 4) {
                if (iV != 3) {
                    return str;
                }
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.put("hand_icon_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/ugeno-source/download_hand_tap.json");
                return jSONObject.toString();
            }
            JSONObject jSONObject2 = new JSONObject(str);
            jSONObject2.put("ugen_url", sz.xs(this.hp));
            jSONObject2.put("ugen_md5", sz.vv(this.hp));
            jSONObject2.put("download_num", l(this.hp.id()));
            if (this.hp.v() == null) {
                return jSONObject2.toString();
            }
            jSONObject2.put("app_size", jx(r1.eb()));
            jSONObject2.put("comment_num", hp(r1.a()));
            return jSONObject2.toString();
        } catch (JSONException unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, int i2, String str2) throws JSONException {
        JSONObject jSONObjectHp = hp();
        try {
            jSONObjectHp.put("ugen_dl_render_fail_msg", str2);
            jSONObjectHp.put("ugen_dl_render_fail", i2);
        } catch (Exception unused) {
        }
        com.byazt.jdb.j.l(this.hp, str, "pop_up", jSONObjectHp);
    }

    public String hp(long j2) {
        if (j2 >= 100000000) {
            return String.format("%d亿+", Long.valueOf(j2 / 100000000));
        }
        if (j2 >= 10000) {
            return String.format("%d万+", Long.valueOf(j2 / 10000));
        }
        if (j2 > 0) {
            return String.valueOf(j2);
        }
        return "-";
    }

    private void hp(String str, w.hp hpVar, String str2, String str3, JSONObject jSONObject) throws JSONException {
        jSONObject.put("is_easy_dl_dialog_pop_up_style", true);
        com.byazt.zn.w.hp(this.f28354l, this.hp.j(), e.hp(this.f28354l, str2, this.hp, str3), jSONObject.toString(), hpVar, jx(str), this.hp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(mp mpVar, String str, int i2, int i3, String str2) throws JSONException {
        JSONObject jSONObjectHp = hp();
        if (6 == i2) {
            try {
                jSONObjectHp.put("easy_dl_render_fail_code", i3);
                if (mpVar != null) {
                    String strJx = mpVar.rl().jx();
                    jSONObjectHp.put("easy_dl_render_fail_msg", str2);
                    jSONObjectHp.put("easy_dl_render_fail_dsl", j(strJx));
                }
            } catch (Exception unused) {
            }
        }
        jSONObjectHp.put("show_easy_dl_dialog_code", i2);
        com.byazt.jdb.j.l(this.hp, str, "pop_up", jSONObjectHp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject hp() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            hp hpVar = this.jx;
            jSONObject.put(g.a.f3275l, hpVar != null ? hpVar.l() : -2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }
}
