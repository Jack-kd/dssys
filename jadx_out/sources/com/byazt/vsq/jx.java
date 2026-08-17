package com.byazt.vsq;

import android.text.TextUtils;
import android.view.View;
import com.byazt.fub.k;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.ig.jx;
import com.byazt.jwq.l;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.ymw.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.fourthline.cling.model.ServiceReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR, 30})
/* loaded from: classes3.dex */
public class jx extends com.byazt.vsq.hp {
    public final AtomicBoolean as;
    public int dy;

    /* renamed from: f, reason: collision with root package name */
    public com.byazt.ono.hp f26643f;
    public final AtomicBoolean kg;
    public int ky;
    public int lv;

    /* renamed from: m, reason: collision with root package name */
    public com.byazt.ig.w f26644m;
    public final AtomicBoolean mp;

    /* renamed from: ms, reason: collision with root package name */
    public final AtomicBoolean f26645ms;
    public int nu;
    public int pu;

    /* renamed from: r, reason: collision with root package name */
    public int f26646r;
    public final List<com.byazt.ig.l> ud;
    public final AtomicBoolean xh;
    public com.byazt.xn.hp yr;

    public interface hp {
        void hp();

        void hp(int i2);

        void hp(long j2, long j3);

        void j();

        Map<String, Object> jx();

        void l();
    }

    public jx(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar) {
        super(tTBaseVideoActivity, mpVar);
        this.ud = new ArrayList();
        this.nu = 0;
        this.dy = 0;
        this.lv = 0;
        this.f26646r = 0;
        this.pu = 0;
        this.ky = 0;
        this.xh = new AtomicBoolean(false);
        this.f26645ms = new AtomicBoolean(false);
        this.as = new AtomicBoolean(true);
        this.kg = new AtomicBoolean(false);
        this.mp = new AtomicBoolean(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bu() {
        com.byazt.tw.a aVarE;
        com.byazt.ig.w wVar = this.f26644m;
        mp mpVarHp = null;
        com.byazt.su.jx jxVarPu = wVar != null ? wVar.pu() : null;
        com.byazt.ig.l lVar = this.ud.get(this.f26646r);
        if (lVar != null) {
            mpVarHp = lVar.hp();
            aVarE = lVar.e();
        } else {
            aVarE = null;
        }
        this.ec.hp(mpVarHp, jxVarPu, aVarE);
        this.ec.l(this.hp.s());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.yni.j jd() {
        com.byazt.yni.l lVar = this.f26634q;
        if (lVar instanceof com.byazt.yni.j) {
            return (com.byazt.yni.j) lVar;
        }
        return null;
    }

    public static int l(mp mpVar) {
        return 8;
    }

    private void qh() {
        com.byazt.ig.w wVar = this.f26644m;
        if (wVar == null || !wVar.ky()) {
            int iJ = this.ud.get(this.f26646r).j();
            if (iJ > 0) {
                this.nu += iJ;
            }
            if (zx.jx(this.f26631l) <= this.dy && !this.xh.get()) {
                this.hp.j(0);
                this.hp.jl();
                this.xh.set(true);
            }
            int i2 = this.dy;
            if (i2 < this.nu) {
                this.dy = i2 + 1;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void t() {
        /*
            r9 = this;
            int r0 = r9.o()
            com.byazt.jki.jx r1 = r9.hq
            int r1 = r1.jx()
            int r1 = r1 - r0
            r0 = 0
            int r1 = java.lang.Math.max(r0, r1)
            r2 = 1
            if (r1 != 0) goto L15
            r8 = r2
            goto L16
        L15:
            r8 = r0
        L16:
            com.byazt.xci.mp r1 = r9.f26631l
            int r1 = com.byazt.xci.zx.j(r1)
            com.byazt.xci.mp r3 = r9.f26631l
            int r3 = com.byazt.xci.zx.w(r3)
            int r4 = r9.a(r0)
            com.byazt.xci.mp r5 = r9.f26631l
            boolean r5 = com.byazt.xci.zx.s(r5)
            java.lang.String r6 = "s"
            if (r5 == 0) goto L47
            if (r4 <= 0) goto L42
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            goto L44
        L42:
            java.lang.String r1 = "奖励已领取"
        L44:
            r4 = r0
            r5 = r1
            goto L77
        L47:
            java.lang.String r5 = "领取成功"
            if (r1 != 0) goto L63
            if (r4 <= 0) goto L5f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            java.lang.String r4 = "s后可领取奖励"
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            goto L60
        L5f:
            r1 = r5
        L60:
            r5 = r1
            r4 = r2
            goto L77
        L63:
            if (r4 <= 0) goto L75
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r4)
            r1.append(r6)
            java.lang.String r1 = r1.toString()
            goto L44
        L75:
            r1 = r5
            goto L44
        L77:
            int r1 = r9.a(r2)
            r9.l(r1)
            if (r8 == 0) goto L84
            if (r3 != 0) goto L84
            r7 = r2
            goto L85
        L84:
            r7 = r0
        L85:
            if (r8 == 0) goto L8d
            if (r3 != r2) goto L8d
            java.lang.String r1 = "跳过"
        L8b:
            r6 = r1
            goto L8f
        L8d:
            r1 = 0
            goto L8b
        L8f:
            com.byazt.td.w r3 = r9.vv
            r3.hp(r4, r5, r6, r7, r8)
            com.byazt.xn.hp r1 = r9.yr
            if (r1 == 0) goto Lb5
            com.byazt.jki.jx r2 = r9.hq
            long r2 = r2.hp()
            r4 = 1000(0x3e8, double:4.94E-321)
            long r2 = r2 / r4
            int r2 = (int) r2
            com.byazt.jki.jx r3 = r9.hq
            int r3 = r3.w()
            com.byazt.jki.jx r4 = r9.hq
            int r4 = r4.l()
            int r0 = r9.a(r0)
            r1.hp(r2, r3, r4, r0)
        Lb5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.vsq.jx.t():void");
    }

    private void x() {
        String str;
        String string;
        String str2;
        if (zx.s(this.f26631l)) {
            int i2 = this.f26646r;
            int iMin = i2 + 1;
            int size = this.ud.size();
            boolean z2 = this.f26646r + 1 >= this.ud.size();
            boolean z3 = this.f26646r == 0;
            int iYj = yj();
            boolean z4 = this.hq.w() - this.lv < zx.v(this.f26631l);
            if (this.as.get()) {
                if (!z4) {
                    iMin = Math.min(i2 + 2, size);
                }
                int i3 = iMin;
                String str3 = i3 + ServiceReference.DELIMITER + size;
                if (z4) {
                    StringBuilder sb = new StringBuilder();
                    if (z3) {
                        str2 = "可看" + size + "个视频,当前 ";
                    } else {
                        str2 = "正在播放 ";
                    }
                    sb.append(str2);
                    sb.append(str3);
                    string = sb.toString();
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    if (z2) {
                        str = "";
                    } else {
                        str = iYj + "秒后播放 ";
                    }
                    sb2.append(str);
                    sb2.append(str3);
                    string = sb2.toString();
                }
                this.vv.hp(string, this.kg.get() ? "取消" : null, this.kg.get());
                com.byazt.xn.hp hpVar = this.yr;
                if (hpVar != null) {
                    hpVar.hp(iYj, z2, i3, size, true, z4, this.kg.get());
                }
            } else {
                this.vv.hp((String) null, (String) null, false);
                com.byazt.xn.hp hpVar2 = this.yr;
                if (hpVar2 != null) {
                    hpVar2.hp(0, z2, 0, 0, false, false, false);
                }
            }
            if (iYj == 0 && !tw()) {
                q(false);
            }
        }
        if (this.hq.w() <= zx.q(this.f26631l) || this.f26645ms.get() || jd() == null) {
            return;
        }
        jd().w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zb() {
        if (this.f26646r < this.ud.size() - 1) {
            this.ud.get(this.f26646r + 1).jl();
            this.ud.get(this.f26646r + 1).hp(this.f26638w, this.f26625a);
        }
    }

    @Override // com.byazt.vsq.hp
    public boolean a() {
        return false;
    }

    @Override // com.byazt.vsq.hp
    public void cx() {
        if (this.sz.r()) {
            return;
        }
        try {
            com.byazt.ig.w wVar = (com.byazt.ig.w) jd().l().jx(this.pu);
            if (wVar != null) {
                wVar.wv();
            }
        } catch (Exception e2) {
            u.hp("cubic  resume exception:" + e2.getMessage());
        }
    }

    @Override // com.byazt.vsq.hp
    public void di() throws JSONException {
        super.di();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visible", false);
        } catch (JSONException unused) {
        }
        this.sz.hp(jSONObject);
        if (!y()) {
            ns();
        }
        this.as.set(false);
        this.vv.hp((String) null, (String) null, false);
        com.byazt.xn.hp hpVar = this.yr;
        if (hpVar != null) {
            hpVar.hp(0, true, 0, 0, false, false, false);
            this.yr.hp((int) (this.hq.hp() / 1000), this.hq.w(), this.hq.l(), a(false));
        }
    }

    @Override // com.byazt.vsq.l
    public boolean gd() {
        if (zx.u(this.f26631l)) {
            return this.f26636u;
        }
        return false;
    }

    @Override // com.byazt.vsq.hp
    public int kg() {
        return this.dy;
    }

    @Override // com.byazt.vsq.hp
    public int ms() {
        return zx.jx(this.f26631l) - this.dy;
    }

    @Override // com.byazt.vsq.hp
    public void ns() {
        try {
            com.byazt.ig.w wVar = (com.byazt.ig.w) jd().l().jx(this.pu);
            if (wVar != null) {
                wVar.d();
            }
        } catch (Exception e2) {
            u.hp("cubic pause exception:" + e2.getMessage());
        }
    }

    @Override // com.byazt.vsq.hp
    public int nu() {
        return l(this.f26631l);
    }

    @Override // com.byazt.vsq.l
    public boolean qu() {
        return true;
    }

    @Override // com.byazt.vsq.l
    public void rk() {
        t();
        qh();
        x();
    }

    @Override // com.byazt.vsq.l
    public boolean rv() {
        return this.f26631l.yu() == 2 || this.f26631l.yu() == 3 || this.f26631l.yu() == 7;
    }

    @Override // com.byazt.vsq.l
    public boolean su() {
        return false;
    }

    public boolean tw() {
        mp mpVarHp = this.ud.get(this.f26646r).hp();
        return Math.round(df.eb(mpVarHp)) <= ((long) zx.l(mpVarHp));
    }

    @Override // com.byazt.vsq.hp
    public void u() {
        super.u();
        List<com.byazt.ig.l> list = this.ud;
        if (list != null) {
            Iterator<com.byazt.ig.l> it = list.iterator();
            while (it.hasNext()) {
                it.next().s();
            }
        }
        if (jd() != null) {
            jd().jx().j();
        }
    }

    @Override // com.byazt.vsq.l
    public void wt() {
        this.vv.hp(true);
        this.vv.l(this.f26631l.jc());
        this.vv.jx(true);
        this.vv.w(true);
        if (!TextUtils.isEmpty(zx.gu(this.f26631l))) {
            this.vv.hp(false);
            com.byazt.ono.hp hpVar = new com.byazt.ono.hp(this.f26631l);
            this.f26643f = hpVar;
            hpVar.hp(new com.byazt.fub.eb() { // from class: com.byazt.vsq.jx.1
                public boolean hp = false;

                @Override // com.byazt.fub.eb
                public void hp(final View view, final k kVar) {
                    if (this.hp) {
                        return;
                    }
                    jx.this.hp.lv().post(new Runnable() { // from class: com.byazt.vsq.jx.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            jx.this.hp.lv().getTopFrameContainer().removeAllViews();
                            jx.this.hp.lv().getTopFrameContainer().addView(view);
                            jx.this.vv.hp(true);
                            k kVar2 = kVar;
                            if (kVar2 instanceof com.byazt.fb.jx) {
                                jx.this.yr = ((com.byazt.fb.jx) kVar2).vv();
                                jx.this.yr.hp((int) (jx.this.hq.hp() / 1000), jx.this.hq.w(), jx.this.hq.l(), jx.this.a(false));
                                jx.this.rk();
                            }
                        }
                    });
                }

                @Override // com.byazt.fub.eb
                public void hp(int i2, String str) {
                    this.hp = true;
                    jx.this.vv.hp(true);
                }
            });
            this.f26643f.hp(new com.byazt.fub.s() { // from class: com.byazt.vsq.jx.2
                @Override // com.byazt.fub.s
                public void hp(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                    if (i2 == 3) {
                        jx.this.yr().q();
                    } else if (i2 == 5) {
                        jx.this.yr().hp(!jx.this.zy);
                    } else {
                        if (i2 != 6) {
                            return;
                        }
                        jx.this.yr().a();
                    }
                }

                @Override // com.byazt.fub.s
                public void l(View view, int i2, com.byazt.wkx.jx jxVar, int i3) {
                }
            });
            this.f26643f.hp(new com.byazt.lv.l() { // from class: com.byazt.vsq.jx.3
                @Override // com.byazt.lv.l
                public void hp() {
                    jx.this.zx();
                }
            });
            this.f26643f.hp(zx.gu(this.f26631l), zx.jl(this.f26631l), this.f26638w, 0, zx.zy(this.f26631l));
        }
        rk();
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public boolean y() {
        return zx.s(this.f26631l);
    }

    public int yj() {
        return Math.max(0, ((((int) Math.min(Math.round(df.eb(this.ud.get(this.f26646r).hp())), zx.l(r0))) + (tw() ? 1 : 0)) + this.lv) - this.hq.w());
    }

    @Override // com.byazt.vsq.hp
    public void zx() {
        this.as.set(false);
        this.mp.set(false);
        rk();
    }

    @Override // com.byazt.vsq.hp
    public int eb(boolean z2) {
        return z2 ? ms() : zx.eb(this.f26631l) - this.dy;
    }

    @Override // com.byazt.vsq.hp
    public View q() {
        return com.byazt.vi.a.e(this.hp);
    }

    @Override // com.byazt.vsq.hp
    public void s() {
        super.s();
        this.ud.add(new com.byazt.ig.l(this.hp, this.f26631l, this.jl, rv(), true));
        try {
            JSONArray jSONArray = new JSONArray(this.f26631l.wi());
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                this.ud.add(new com.byazt.ig.l(this.hp, com.byazt.jz.hp.hp(jSONArray.getJSONObject(i2)), this.jl, rv(), false));
            }
        } catch (JSONException unused) {
        }
        Iterator<com.byazt.ig.l> it = this.ud.iterator();
        while (it.hasNext()) {
            it.next().hp(this.zy);
        }
        this.kg.set(zx.k(this.f26631l));
    }

    @Override // com.byazt.vsq.hp, com.byazt.vsq.l
    public void jx() {
        this.f26634q.jx(true);
        if (jd() != null) {
            jd().jx().hp(this.ud);
            jd().j().hp(new jx.hp() { // from class: com.byazt.vsq.jx.4
                @Override // com.byazt.ig.jx.hp
                public void hp() {
                    jx jxVar = jx.this;
                    jxVar.f26636u = true;
                    jxVar.f26646r = 0;
                    hp((com.byazt.ig.w) jx.this.jd().l().jx(0));
                    jx.this.bu();
                    jx.this.zb();
                    jx.this.hp.l(false, true);
                }

                @Override // com.byazt.ig.jx.hp
                public void hp(boolean z2, int i2, boolean z3) {
                    int i3 = jx.this.pu;
                    if (jx.this.f26644m != null) {
                        jx.this.hp.zx().hp(z2, i3 + 1, jx.this.f26644m.nu());
                    }
                    jx.this.pu = i2;
                    jx jxVar = jx.this;
                    jxVar.ky = Math.max(jxVar.ky, i2 + 1);
                    jx jxVar2 = jx.this;
                    jxVar2.f26646r = i2 % jxVar2.ud.size();
                    hp((com.byazt.ig.w) jx.this.jd().l().jx(i2));
                    jx.this.jd().a();
                    jx.this.f26645ms.set(true);
                    jx.this.kg.set(zx.k(jx.this.f26631l) && jx.this.f26646r + 1 < jx.this.ud.size());
                    jx.this.rk();
                    jx.this.zb();
                    jx jxVar3 = jx.this;
                    jxVar3.vv.hp(((com.byazt.ig.l) jxVar3.ud.get(jx.this.f26646r)).hp());
                }

                @Override // com.byazt.ig.jx.hp
                public void hp(boolean z2, int i2) {
                    com.byazt.ig.w wVar = (com.byazt.ig.w) jx.this.jd().l().jx(i2);
                    if (wVar != null) {
                        wVar.l(false);
                    }
                }

                private void hp(com.byazt.ig.w wVar) {
                    if (wVar != null) {
                        jx.this.f26644m = wVar;
                        jx.this.f26644m.l(true);
                        jx.this.f26644m.hp(new hp() { // from class: com.byazt.vsq.jx.4.1
                            @Override // com.byazt.vsq.jx.hp
                            public void hp() {
                                jx jxVar = jx.this;
                                jxVar.f26636u = true;
                                jxVar.jd().hp(false);
                            }

                            @Override // com.byazt.vsq.jx.hp
                            public void j() throws JSONException {
                                if (jx.this.f26646r + 1 >= jx.this.ud.size() || !jx.this.as.get()) {
                                    jx.this.hp.a(1);
                                } else if (jx.this.tw()) {
                                    jx.this.q(false);
                                }
                            }

                            @Override // com.byazt.vsq.jx.hp
                            public Map<String, Object> jx() {
                                return jx.this.hp.s();
                            }

                            @Override // com.byazt.vsq.jx.hp
                            public void l() {
                                jx jxVar = jx.this;
                                jxVar.f26636u = false;
                                jxVar.jd().hp(true);
                            }

                            @Override // com.byazt.vsq.jx.hp
                            public void hp(int i2) {
                                jx.this.nu += i2;
                                jx.this.dy += i2;
                                jx.this.hp.jl(i2);
                            }

                            @Override // com.byazt.vsq.jx.hp
                            public void hp(long j2, long j3) {
                                jx.this.f26636u = false;
                            }
                        });
                        jx.this.f26636u = wVar.ky();
                        jx.this.jd().hp(!wVar.xh());
                    } else {
                        jx.this.f26636u = false;
                    }
                    jx.this.bu();
                }
            });
        }
    }

    public void q(boolean z2) {
        if (!this.sz.r() && this.f26646r + 1 < this.ud.size()) {
            this.lv = this.hq.w();
            if ((z2 || this.mp.get() || zx.a(this.f26631l)) && jd() != null) {
                jd().l().l(this.pu + 1);
            }
        }
    }

    @Override // com.byazt.vsq.hp
    public void w(boolean z2) {
        super.w(z2);
        com.byazt.ig.w wVar = this.f26644m;
        if (wVar != null) {
            wVar.jx(z2);
        }
        Iterator<com.byazt.ig.l> it = this.ud.iterator();
        while (it.hasNext()) {
            it.next().hp(z2);
        }
    }

    public static boolean hp(mp mpVar) {
        return (mpVar == null || !zx.hp(mpVar) || TextUtils.isEmpty(mpVar.wi())) ? false : true;
    }

    @Override // com.byazt.vsq.hp
    public com.byazt.yni.l hp(boolean z2) {
        com.byazt.yni.j jVar = new com.byazt.yni.j(this.hp, this.f26631l, z2);
        float f2 = this.f26638w;
        float f3 = this.f26625a;
        float[] fArrSz = {f2, f3};
        if (f2 < 10.0f || f3 < 10.0f) {
            fArrSz = sz();
        }
        jVar.hp(fArrSz);
        this.f26634q = jVar;
        return jVar;
    }

    @Override // com.byazt.vsq.hp
    public l.hp hp(mp mpVar, final com.byazt.jwq.e eVar) {
        this.hp.as();
        com.byazt.jwq.hp jxVar = zx.s(mpVar) ? new com.byazt.jwq.jx(this.hp, mpVar) : new com.byazt.jwq.w(this.hp, mpVar);
        jxVar.hp(as());
        return jxVar.l(new com.byazt.jwq.e() { // from class: com.byazt.vsq.jx.5
            @Override // com.byazt.jwq.e
            public void hp() {
                super.hp();
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.hp();
                }
                jx.this.hp.kg();
            }

            @Override // com.byazt.jwq.e
            public void jx() {
                super.jx();
                jx.this.hp.kg();
                jx.this.q(true);
                jx.this.hp.zx().hp("reward_retain_dialog_next", 0, "");
            }

            @Override // com.byazt.jwq.e
            public void l() {
                com.byazt.jwq.e eVar2 = eVar;
                if (eVar2 != null) {
                    eVar2.l();
                }
            }
        });
    }

    @Override // com.byazt.vsq.hp
    public void hp(Map<String, Object> map) {
        super.hp(map);
        map.put("group_pos", Integer.valueOf(this.pu + 1));
        com.byazt.ig.w wVar = this.f26644m;
        if (wVar != null) {
            map.put("duration", Long.valueOf(wVar.nu()));
        }
    }

    @Override // com.byazt.vsq.hp
    public void hp(JSONObject jSONObject) throws JSONException {
        super.hp(jSONObject);
        try {
            jSONObject.put("group_pos", this.f26646r + 1);
            jSONObject.put("duration", this.f26644m.nu());
        } catch (JSONException unused) {
        }
    }

    @Override // com.byazt.vsq.hp
    public void hp(View view) {
        super.hp(view);
        this.f26644m.hp(view);
    }
}
