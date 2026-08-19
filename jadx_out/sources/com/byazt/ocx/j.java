package com.byazt.ocx;

import android.text.TextUtils;
import com.byazt.jz.b;
import com.byazt.jz.sz;
import com.byazt.lf.k;
import com.byazt.qfg.s;
import com.byazt.uid.eb;
import com.byazt.vu.q;
import com.byazt.xci.fi;
import com.byazt.xci.mp;
import com.byazt.xci.s;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.base.n;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 81, 38})
/* loaded from: classes3.dex */
public class j extends com.byazt.ocx.hp {
    public l eb;

    /* renamed from: s, reason: collision with root package name */
    public volatile com.byazt.ow.w f23948s = null;

    @com.byazt.kj.hp(hp = {0, 1, 81, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp {
        public boolean hp = true;

        /* renamed from: l, reason: collision with root package name */
        public long f23951l = 0;
        public long jx = 0;

        /* renamed from: j, reason: collision with root package name */
        public long f23950j = 0;
    }

    @com.byazt.kj.hp(hp = {0, 1, 81, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public class l extends eb {

        /* renamed from: l, reason: collision with root package name */
        public fi f23952l;

        public l(fi fiVar) {
            super("WriteCacheTask");
            this.f23952l = fiVar;
        }

        private void l() {
            try {
                int iHp = s.hp(this.f23952l);
                if (iHp <= 0) {
                    return;
                }
                com.byazt.ctq.jx jxVarA = j.this.a();
                String str = jxVarA.get("net_ad_already_shown", "");
                if (!TextUtils.isEmpty(str) && str.equals(this.f23952l.hp().ns())) {
                    com.byazt.kl.hp.hp("lqmt", "该缓存已show-则不再save： rit: " + iHp + "   reqId: " + this.f23952l.hp().ns());
                    return;
                }
                JSONObject jSONObjectJx = this.f23952l.l().jx();
                if (jSONObjectJx != null) {
                    jxVarA.put("materialMeta".concat(String.valueOf(iHp)), jSONObjectJx.toString());
                }
                jxVarA.put("net_ad_save_success".concat(String.valueOf(iHp)), this.f23952l.hp().ns());
                com.byazt.kl.hp.hp("lqmt", "缓存成功： rit: " + iHp + "   reqId: " + this.f23952l.hp().ns());
            } catch (Throwable unused) {
            }
        }

        public void hp(fi fiVar) {
            this.f23952l = fiVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ctq.jx a() {
        return com.byazt.ry.j.hp(com.byazt.el.hp.j(), jx("tt_materialMeta"));
    }

    private com.byazt.xci.hp eb(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = a().get("materialMeta" + str, (String) null);
        if (!TextUtils.isEmpty(str2)) {
            try {
                b.hp hpVarHp = b.hp.hp(new JSONObject(str2));
                if (hpVarHp != null) {
                    com.byazt.xci.hp hpVar = hpVarHp.f21849s;
                    if (hpVar != null) {
                        return hpVar;
                    }
                }
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    private hp j(String str) {
        hp hpVar = new hp();
        if (TextUtils.isEmpty(str)) {
            return hpVar;
        }
        com.byazt.ctq.jx jxVarW = w();
        long j2 = jxVarW.get("expiration" + str, 0L);
        long j3 = jxVarW.get(n.f36454q + str, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        hpVar.hp = jCurrentTimeMillis < j3 || jCurrentTimeMillis >= j2;
        hpVar.f23951l = j3;
        hpVar.jx = j2;
        hpVar.f23950j = jCurrentTimeMillis;
        return hpVar;
    }

    private String jx(String str) {
        s.jx jxVarHp = com.byazt.xci.s.hp(3);
        return (jxVarHp == null || jxVarHp.s()) ? str + "_7643" : str;
    }

    private com.byazt.ctq.jx w() {
        return com.byazt.ry.j.hp(com.byazt.el.hp.j(), jx("tt_splash"));
    }

    @Override // com.byazt.ocx.hp
    public void hp(String str, String str2, boolean z2, boolean z3, Object obj) {
    }

    @Override // com.byazt.ocx.hp
    public void l() {
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.ctq.jx jxVarW = w();
        a().remove("materialMeta" + str);
        if (jxVarW != null) {
            jxVarW.remove("has_ad_cache" + str);
            jxVarW.remove("expiration" + str);
        }
        com.byazt.kl.hp.hp("lqmt", "清除成功： rit: " + str);
    }

    private boolean w(final String str) {
        final hp hpVarJ = j(str);
        if (hpVarJ.hp) {
            k.hp().eb(new com.byazt.fq.hp() { // from class: com.byazt.ocx.j.1
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    hp hpVar = hpVarJ;
                    long j2 = hpVar.f23950j - hpVar.f23951l;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("available_type", 0);
                    jSONObject.putOpt("creative_timeout_duration", Long.valueOf(j2 / 3600));
                    return com.byazt.jlb.l.l().hp(4).jx(str).l(jSONObject.toString());
                }
            });
        }
        w wVar = this.f23941a;
        long j2 = wVar == null ? 0L : wVar.hp;
        if (j2 <= 0 || hpVarJ.f23951l * 1000 >= j2) {
            return hpVarJ.hp;
        }
        return true;
    }

    public long l(String str) {
        hp hpVarJ = j(str);
        if (hpVarJ == null || hpVarJ.hp) {
            return 0L;
        }
        return Math.max(0L, hpVarJ.jx - hpVarJ.f23950j);
    }

    @Override // com.byazt.ocx.hp
    public void hp(fi fiVar, com.byazt.jt.l lVar, boolean z2) {
        int iHp;
        if (fiVar != null && (iHp = com.byazt.qfg.s.hp(fiVar)) > 0) {
            hp(iHp, fiVar.hp().xe());
            hp(fiVar);
        }
    }

    @Override // com.byazt.ocx.hp
    public void jx() {
        try {
            a().clear();
            w().clear();
        } catch (Throwable unused) {
        }
    }

    private void hp(fi fiVar) {
        l lVar = this.eb;
        if (lVar == null) {
            this.eb = new l(fiVar);
        } else {
            lVar.hp(fiVar);
        }
        com.byazt.uid.w.hp(this.eb, 10);
    }

    private void hp(int i2, long j2) {
        com.byazt.ctq.jx jxVarW = w();
        jxVarW.put("expiration" + i2, j2);
        jxVarW.put(n.f36454q + i2, System.currentTimeMillis() / 1000);
        jxVarW.put("has_ad_cache" + i2, true);
    }

    public static void j() {
        sz.l().hc();
    }

    private boolean hp(com.byazt.vu.eb ebVar, String str) {
        if (hp(str)) {
            return true;
        }
        if (ebVar != null) {
            ebVar.j(0);
            ebVar.l(1);
            ebVar.hp("no cache");
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
    @Override // com.byazt.ocx.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.vu.eb r3, java.lang.String r4, com.byazt.ocx.hp.InterfaceC0326hp r5, com.byazt.ocx.w r6) {
        /*
            r2 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r4)
            if (r0 != 0) goto L64
            if (r5 != 0) goto L9
            goto L64
        L9:
            r2.f23941a = r6
            boolean r3 = r2.hp(r3, r4)
            if (r3 != 0) goto L15
            r5.hp()
            return
        L15:
            r3 = 0
            com.byazt.xci.hp r6 = r2.eb(r4)     // Catch: java.lang.Throwable -> L54
            com.byazt.vu.a r0 = new com.byazt.vu.a     // Catch: java.lang.Throwable -> L54
            r1 = 1
            r0.<init>(r6, r1)     // Catch: java.lang.Throwable -> L54
            if (r6 == 0) goto L3e
            java.util.List r1 = r6.l()     // Catch: java.lang.Throwable -> L4f
            if (r1 == 0) goto L3e
            java.util.List r1 = r6.l()     // Catch: java.lang.Throwable -> L4f
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L4f
            if (r1 != 0) goto L3e
            java.util.List r6 = r6.l()     // Catch: java.lang.Throwable -> L4f
            r1 = 0
            java.lang.Object r6 = r6.get(r1)     // Catch: java.lang.Throwable -> L4f
            com.byazt.xci.mp r6 = (com.byazt.xci.mp) r6     // Catch: java.lang.Throwable -> L4f
            goto L3f
        L3e:
            r6 = r3
        L3f:
            if (r6 == 0) goto L44
            r0.hp(r6)     // Catch: java.lang.Throwable -> L4f
        L44:
            com.byazt.yx.l r1 = com.byazt.yx.l.hp()     // Catch: java.lang.Throwable -> L4f
            int r6 = r1.jx(r6)     // Catch: java.lang.Throwable -> L4f
            r1 = 3
            if (r6 == r1) goto L51
        L4f:
            r3 = r0
            goto L54
        L51:
            r0.hp(r3)     // Catch: java.lang.Throwable -> L4f
        L54:
            r5.hp(r3)
            com.byazt.lca.w r3 = com.byazt.lca.w.hp()
            boolean r3 = r3.e()
            if (r3 != 0) goto L64
            r2.a(r4)
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ocx.j.hp(com.byazt.vu.eb, java.lang.String, com.byazt.ocx.hp$hp, com.byazt.ocx.w):void");
    }

    public boolean hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        com.byazt.ctq.jx jxVarW = w();
        StringBuilder sb = new StringBuilder("has_ad_cache");
        sb.append(str);
        return jxVarW.get(sb.toString(), false) && !w(str);
    }

    @Override // com.byazt.ocx.hp
    public void hp(com.byazt.cx.j<q, com.byazt.vu.eb> jVar, mp mpVar, com.byazt.jt.l lVar, boolean z2) {
        if (mpVar == null) {
            return;
        }
        com.byazt.ctq.jx jxVarA = a();
        if (z2) {
            jxVarA.put("net_ad_already_shown", mpVar.ns());
        }
        if (this.f23944w.get()) {
            return;
        }
        String str = jxVarA.get("net_ad_save_success" + ky.zy(mpVar), "");
        if (TextUtils.isEmpty(str) || !str.equals(mpVar.ns())) {
            return;
        }
        this.f23944w.set(true);
        com.byazt.kl.hp.hp("lqmt", "计划清除缓存 reqId:  " + str);
        a(lVar != null ? lVar.j() : null);
        if (jVar != null) {
            jVar.hp();
        }
    }

    @Override // com.byazt.ocx.hp
    public void hp(String str, mp mpVar) {
        a(str);
    }
}
