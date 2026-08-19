package com.byazt.toc;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.toc.e;
import com.byazt.zg.k;
import com.byazt.zg.xs;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, 19})
/* loaded from: classes3.dex */
public class jl extends e implements com.byazt.sdu.j {
    public boolean ec;
    public com.byazt.jd.l hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.jd.hp f25937l;

    /* renamed from: n, reason: collision with root package name */
    public final com.byazt.sdu.l f25938n;
    public final com.byazt.sdu.jx sz;

    /* renamed from: u, reason: collision with root package name */
    public com.byazt.udb.hp f25939u;

    @com.byazt.kj.hp(hp = {0, 1, 225, 757})
    public class hp implements com.byazt.sdu.l {

        /* renamed from: j, reason: collision with root package name */
        public final Handler f25945j;
        public volatile boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public volatile boolean f25946l;

        private hp() {
            this.f25946l = false;
            this.jx = false;
            this.f25945j = new Handler(Looper.getMainLooper());
        }

        private void s() {
            this.f25945j.postDelayed(new Runnable() { // from class: com.byazt.toc.jl.hp.2
                @Override // java.lang.Runnable
                public void run() {
                    if (hp.this.jx || hp.this.f25946l) {
                        hp.this.eb();
                        return;
                    }
                    jl.this.hp(new com.byazt.ti.hp() { // from class: com.byazt.toc.jl.hp.2.1
                        @Override // com.byazt.ti.hp
                        public boolean hp() {
                            return true;
                        }

                        @Override // com.byazt.ti.hp
                        @Nullable
                        public Map<String, Object> j() {
                            return new HashMap();
                        }

                        @Override // com.byazt.ti.hp
                        @Nullable
                        public String jx() {
                            com.byazt.iqm.l lVar = jl.this.f25948a;
                            return lVar != null ? lVar.o() : "";
                        }

                        @Override // com.byazt.ti.hp
                        public float l() {
                            if (jl.this.f25948a != null) {
                                return r0.d();
                            }
                            return 0.0f;
                        }
                    });
                    hp.this.eb();
                }
            }, com.byazt.dl.l.hp().a());
        }

        @Override // com.byazt.sws.hp
        public void a() {
            eb();
            this.f25946l = true;
            if (!k.hp()) {
                jl.this.o();
                if (jl.this.f25939u.hp()) {
                    jl.this.f25939u.l();
                }
                if (jl.this.f25937l != null) {
                    jl.this.f25937l.a();
                    return;
                }
                return;
            }
            com.byazt.rt.jx jxVar = jl.this.f25950j;
            if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                if (!k.jx()) {
                    String strHp = xs.hp();
                    jl jlVar = jl.this;
                    com.byazt.lsx.a.hp(jlVar.f25950j, jlVar.f25948a, 3, 1, 0, strHp);
                    return;
                }
                jl jlVar2 = jl.this;
                com.byazt.lsx.a.hp(jlVar2.f25950j, jlVar2.f25948a, 3, 0, 0, (String) null);
            }
            if (jl.this.di()) {
                return;
            }
            jl.this.o();
            if (jl.this.f25939u.hp()) {
                jl.this.f25939u.l();
            }
            if (jl.this.f25937l != null) {
                jl.this.f25937l.a();
            }
        }

        public void eb() {
            this.f25945j.removeCallbacksAndMessages(null);
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
        @Override // com.byazt.sws.hp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void g_() {
            /*
                r10 = this;
                boolean r0 = com.byazt.zg.k.hp()
                r1 = 0
                if (r0 == 0) goto L57
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.rt.jx r0 = r0.f25950j
                if (r0 == 0) goto L3b
                java.lang.String r2 = "pangle"
                java.lang.String r0 = r0.getAdNetWorkName()
                boolean r0 = r2.equals(r0)
                if (r0 == 0) goto L3b
                boolean r0 = com.byazt.zg.k.jx()
                if (r0 != 0) goto L30
                java.lang.String r7 = com.byazt.zg.xs.hp()
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.rt.jx r2 = r0.f25950j
                com.byazt.iqm.l r3 = r0.f25948a
                r5 = 1
                r6 = 0
                r4 = 5
                com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r7)
                return
            L30:
                boolean r0 = com.byazt.zg.k.s()
                if (r0 == 0) goto L3b
                java.lang.String r0 = com.byazt.zg.xs.hp()
                goto L3c
            L3b:
                r0 = r1
            L3c:
                com.byazt.toc.jl r2 = com.byazt.toc.jl.this
                boolean r2 = r2.di()
                if (r2 != 0) goto L55
                com.byazt.toc.jl r2 = com.byazt.toc.jl.this
                com.byazt.jd.hp r2 = com.byazt.toc.jl.hp(r2)
                if (r2 == 0) goto L55
                com.byazt.toc.jl r2 = com.byazt.toc.jl.this
                com.byazt.jd.hp r2 = com.byazt.toc.jl.hp(r2)
                r2.i_()
            L55:
                r8 = r0
                goto L69
            L57:
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.jd.hp r0 = com.byazt.toc.jl.hp(r0)
                if (r0 == 0) goto L68
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.jd.hp r0 = com.byazt.toc.jl.hp(r0)
                r0.i_()
            L68:
                r8 = r1
            L69:
                long r2 = java.lang.System.currentTimeMillis()
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.rt.jx r0 = r0.f25950j
                boolean r0 = com.byazt.zg.xs.hp(r0)
                if (r0 == 0) goto L83
                java.lang.String r1 = com.byazt.zg.xs.l()
                long r4 = java.lang.System.currentTimeMillis()
                long r4 = r4 - r2
            L80:
                r6 = r4
                r5 = r1
                goto L86
            L83:
                r4 = -1
                goto L80
            L86:
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                java.lang.String r0 = r0.f25956w
                com.byazt.xoi.hp.w(r0)
                com.byazt.toc.jl r0 = com.byazt.toc.jl.this
                com.byazt.rt.jx r2 = r0.f25950j
                com.byazt.iqm.l r3 = r0.f25948a
                r4 = 0
                boolean r9 = r2.isClickListenRepeatOnce()
                com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r8, r9)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.jl.hp.g_():void");
        }

        @Override // com.byazt.sws.hp
        public void h_() {
            eb();
            this.jx = true;
            if (!k.hp()) {
                jl.this.o();
                if (jl.this.f25937l != null) {
                    jl.this.f25937l.j_();
                    return;
                }
                return;
            }
            com.byazt.rt.jx jxVar = jl.this.f25950j;
            if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                if (!k.jx()) {
                    String strHp = xs.hp();
                    jl jlVar = jl.this;
                    com.byazt.lsx.a.hp(jlVar.f25950j, jlVar.f25948a, 2, 1, 0, strHp);
                    return;
                }
                jl jlVar2 = jl.this;
                com.byazt.lsx.a.hp(jlVar2.f25950j, jlVar2.f25948a, 2, 0, 0, (String) null);
            }
            if (jl.this.di()) {
                return;
            }
            jl.this.o();
            if (jl.this.f25937l != null) {
                jl.this.f25937l.j_();
            }
        }

        @Override // com.byazt.sws.hp
        public void hp(@NonNull com.byazt.ti.hp hpVar) {
        }

        @Override // com.byazt.sws.hp
        public void j() {
            if (!k.hp()) {
                jl.this.o();
                if (jl.this.f25939u.hp()) {
                    jl.this.f25939u.w();
                }
                if (jl.this.f25937l != null) {
                    jl.this.f25937l.j();
                    return;
                }
                return;
            }
            com.byazt.rt.jx jxVar = jl.this.f25950j;
            if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                if (!k.jx()) {
                    String strHp = xs.hp();
                    jl jlVar = jl.this;
                    com.byazt.lsx.a.hp(jlVar.f25950j, jlVar.f25948a, 1, 1, 0, strHp);
                    return;
                }
                jl jlVar2 = jl.this;
                com.byazt.lsx.a.hp(jlVar2.f25950j, jlVar2.f25948a, 1, 0, 0, (String) null);
            }
            if (jl.this.di()) {
                return;
            }
            jl.this.o();
            if (jl.this.f25939u.hp()) {
                jl.this.f25939u.w();
            }
            if (jl.this.f25937l != null) {
                jl.this.f25937l.j();
            }
        }

        @Override // com.byazt.sws.hp
        public void w() {
            jl.this.w();
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
        @Override // com.byazt.sws.hp
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void hp() {
            /*
                Method dump skipped, instructions count: 393
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.jl.hp.hp():void");
        }

        @Override // com.byazt.sws.hp
        public void hp(@NonNull com.byazt.dq.hp hpVar) {
            String strL;
            long jCurrentTimeMillis;
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (xs.hp(jl.this.f25950j)) {
                strL = xs.l();
                jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
            } else {
                strL = null;
                jCurrentTimeMillis = -1;
            }
            String str = strL;
            long j2 = jCurrentTimeMillis;
            jl jlVar = jl.this;
            com.byazt.lsx.a.hp(jlVar.f25950j, jlVar.f25948a, hpVar, 1, 0, str, j2);
            jl.this.jx(hpVar);
        }
    }

    public jl(Context context) {
        super(context);
        this.ec = false;
        this.sz = new com.byazt.sdu.jx() { // from class: com.byazt.toc.jl.4

            /* renamed from: l, reason: collision with root package name */
            public final hp f25943l;

            {
                this.f25943l = new hp();
            }

            @Override // com.byazt.kuv.hp
            public void hp() {
                jl.this.ec = true;
                this.f25943l.hp();
            }

            @Override // com.byazt.kuv.hp
            public void j() {
            }

            @Override // com.byazt.kuv.hp
            public void jx() {
                this.f25943l.h_();
            }

            @Override // com.byazt.kuv.hp
            public void l() {
                this.f25943l.g_();
            }

            @Override // com.byazt.kuv.hp
            public void w() {
            }

            @Override // com.byazt.kuv.hp
            public void hp(@NonNull com.byazt.dq.hp hpVar) {
                this.f25943l.hp(hpVar);
            }
        };
        this.f25938n = new hp();
    }

    @Override // com.byazt.jd.hp
    public void a() {
        if (!k.hp()) {
            o();
            if (this.f25939u.hp()) {
                this.f25939u.l();
            }
            com.byazt.jd.hp hpVar = this.f25937l;
            if (hpVar != null) {
                hpVar.a();
                return;
            }
            return;
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            if (!k.l()) {
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 3, 1, 0, xs.hp());
                return;
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 3, 0, 0, (String) null);
        }
        if (di()) {
            return;
        }
        o();
        if (this.f25939u.hp()) {
            this.f25939u.l();
        }
        com.byazt.jd.hp hpVar2 = this.f25937l;
        if (hpVar2 != null) {
            hpVar2.a();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        com.byazt.jd.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp();
        }
    }

    @Override // com.byazt.toc.l
    public com.byazt.dq.jx f_() {
        if (this.ec) {
            return super.f_();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
    @Override // com.byazt.jd.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i_() {
        /*
            r10 = this;
            com.byazt.iqm.l r0 = r10.f25948a
            java.lang.String r0 = r0.sz()
            com.byazt.xoi.hp.w(r0)
            boolean r0 = com.byazt.zg.k.hp()
            r1 = 0
            if (r0 == 0) goto L50
            com.byazt.rt.jx r0 = r10.f25950j
            if (r0 == 0) goto L40
            java.lang.String r2 = "pangle"
            java.lang.String r0 = r0.getAdNetWorkName()
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L40
            boolean r0 = com.byazt.zg.k.l()
            if (r0 != 0) goto L35
            java.lang.String r7 = com.byazt.zg.xs.hp()
            com.byazt.rt.jx r2 = r10.f25950j
            com.byazt.iqm.l r3 = r10.f25948a
            r5 = 1
            r6 = 0
            r4 = 5
            com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r7)
            return
        L35:
            boolean r0 = com.byazt.zg.k.w()
            if (r0 == 0) goto L40
            java.lang.String r0 = com.byazt.zg.xs.hp()
            goto L41
        L40:
            r0 = r1
        L41:
            boolean r2 = r10.di()
            if (r2 != 0) goto L4e
            com.byazt.jd.hp r2 = r10.f25937l
            if (r2 == 0) goto L4e
            r2.i_()
        L4e:
            r8 = r0
            goto L58
        L50:
            com.byazt.jd.hp r0 = r10.f25937l
            if (r0 == 0) goto L57
            r0.i_()
        L57:
            r8 = r1
        L58:
            long r2 = java.lang.System.currentTimeMillis()
            com.byazt.rt.jx r0 = r10.f25950j
            boolean r0 = com.byazt.zg.xs.hp(r0)
            if (r0 == 0) goto L70
            java.lang.String r1 = com.byazt.zg.xs.l()
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r2
        L6d:
            r6 = r4
            r5 = r1
            goto L73
        L70:
            r4 = -1
            goto L6d
        L73:
            com.byazt.rt.jx r2 = r10.f25950j
            com.byazt.iqm.l r3 = r10.f25948a
            r4 = 0
            boolean r9 = r2.isClickListenRepeatOnce()
            com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.jl.i_():void");
    }

    @Override // com.byazt.jd.hp
    public void j() {
        if (!k.hp()) {
            o();
            if (this.f25939u.hp()) {
                com.byazt.aw.l.l("GROMORE_SS_REWARD_VERIFY", "onVideoComplete回调，M客户端调用M服务端激励回调.....");
                this.f25939u.w();
            }
            com.byazt.jd.hp hpVar = this.f25937l;
            if (hpVar != null) {
                hpVar.j();
                return;
            }
            return;
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            if (!k.l()) {
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 1, 1, 0, xs.hp());
                return;
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 1, 0, 0, (String) null);
        }
        if (di()) {
            return;
        }
        o();
        if (this.f25939u.hp()) {
            this.f25939u.w();
        }
        com.byazt.jd.hp hpVar2 = this.f25937l;
        if (hpVar2 != null) {
            hpVar2.j();
        }
    }

    @Override // com.byazt.jd.hp
    public void j_() {
        if (!k.hp()) {
            o();
            com.byazt.jd.hp hpVar = this.f25937l;
            if (hpVar != null) {
                hpVar.j_();
                return;
            }
            return;
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            if (!k.l()) {
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 2, 1, 0, xs.hp());
                return;
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 2, 0, 0, (String) null);
        }
        if (di()) {
            return;
        }
        o();
        com.byazt.jd.hp hpVar2 = this.f25937l;
        if (hpVar2 != null) {
            hpVar2.j_();
        }
    }

    @Override // com.byazt.toc.e, com.byazt.toc.l
    public void jx() throws NumberFormatException {
        if (this.f25950j == null) {
            com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
            List<com.byazt.rt.jx> listHp = this.jx.hp(false);
            String str = this.f25956w;
            com.byazt.iqm.l lVar = this.f25948a;
            hpVarHp.hp(listHp, str, lVar, lVar.w(), this.f25950j);
        }
        super.jx();
        this.f25939u.jx();
        this.hp = null;
        this.f25937l = null;
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void s() {
        com.byazt.jd.l lVar = this.hp;
        if (lVar != null) {
            lVar.l();
        }
    }

    @Override // com.byazt.jd.hp
    public void w() {
        String strL;
        long jCurrentTimeMillis;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, (com.byazt.dq.hp) null, 2, 0, strL, jCurrentTimeMillis);
        com.byazt.jd.hp hpVar = this.f25937l;
        if (hpVar != null) {
            hpVar.w();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(@NonNull com.byazt.dq.hp hpVar) {
        com.byazt.jd.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(hpVar);
        }
    }

    private void l(com.byazt.ti.hp hpVar) {
        if (this.f25939u.hp()) {
            this.f25939u.hp(hpVar, this.f25950j);
            return;
        }
        com.byazt.jd.hp hpVar2 = this.f25937l;
        if (hpVar2 != null) {
            hpVar2.hp(hp(this.f25948a, hpVar, this.f25950j, (Map<String, Object>) null));
            hp((com.byazt.ti.hp) null, 0);
        }
    }

    public void hp(com.byazt.iqm.l lVar, @NonNull com.byazt.jd.l lVar2) {
        hp(lVar);
        this.f25939u = new com.byazt.udb.hp(this.f25956w);
        this.hp = lVar2;
        this.f25953q = this;
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.jl.3
            @Override // java.lang.Runnable
            public void run() {
                if (jl.this.f25937l != null) {
                    jl.this.f25937l.hp(hpVar);
                }
            }
        });
    }

    @MainThread
    public void hp(Activity activity, Object obj, String str) {
        hp(activity, obj, str, new e.hp() { // from class: com.byazt.toc.jl.1
            @Override // com.byazt.toc.e.hp
            public void hp() {
                jl.this.jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            }
        });
        if (this.f25937l == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "注意：未设置GMRewardedAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        hp(this.f25950j);
    }

    @MainThread
    public void hp(Activity activity) {
        hp(activity, (Object) null, (String) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0022  */
    @Override // com.byazt.toc.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.rt.jx r3, android.app.Activity r4, java.lang.Object r5, java.lang.String r6) {
        /*
            r2 = this;
            if (r3 == 0) goto L24
            int r0 = r3.getSubAdType()
            r1 = 6
            if (r0 == r1) goto L22
            int r0 = r3.getSubAdType()
            r1 = 7
            if (r0 != r1) goto L15
            com.byazt.sdu.l r0 = r2.f25938n
            r2.f25953q = r0
            goto L24
        L15:
            int r0 = r3.getSubAdType()
            r1 = 8
            if (r0 != r1) goto L22
            com.byazt.sdu.jx r0 = r2.sz
            r2.f25953q = r0
            goto L24
        L22:
            r2.f25953q = r2
        L24:
            super.hp(r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.jl.hp(com.byazt.rt.jx, android.app.Activity, java.lang.Object, java.lang.String):void");
    }

    public void hp(com.byazt.jd.hp hpVar) {
        this.f25937l = hpVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(com.byazt.ti.hp hpVar, int i2) {
        String strL;
        long jCurrentTimeMillis;
        String str;
        int i3;
        int i4;
        Map<String, Object> mapJ;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        String str2 = strL;
        long j2 = jCurrentTimeMillis;
        if (hpVar != null && (mapJ = hpVar.j()) != null) {
            Integer num = (Integer) mapJ.get(MediationConstant.KEY_REASON);
            int iIntValue = num != null ? num.intValue() : 0;
            Integer num2 = (Integer) mapJ.get(MediationConstant.KEY_ERROR_CODE);
            int iIntValue2 = num2 != null ? num2.intValue() : 0;
            str = (String) mapJ.get(MediationConstant.KEY_ERROR_MSG);
            i4 = iIntValue2;
            i3 = iIntValue;
        } else {
            str = "";
            i3 = 0;
            i4 = 0;
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, i2, str2, j2, i3, i4, str);
    }

    public static com.byazt.ti.hp hp(final com.byazt.iqm.l lVar, final com.byazt.ti.hp hpVar, final com.byazt.rt.jx jxVar, final Map<String, Object> map) {
        if (hpVar == null) {
            return null;
        }
        return new com.byazt.ti.hp() { // from class: com.byazt.toc.jl.2
            @Override // com.byazt.ti.hp
            public boolean hp() {
                return hpVar.hp();
            }

            @Override // com.byazt.ti.hp
            public Map<String, Object> j() {
                Map<String, Object> mapJ = hpVar.j();
                HashMap map2 = (mapJ == null || mapJ.size() <= 0) ? new HashMap() : new HashMap(mapJ);
                Map map3 = map;
                if (map3 != null && !map3.isEmpty()) {
                    map2.putAll(map);
                }
                com.byazt.dq.jx jxVarHp = com.byazt.zg.jl.hp(lVar, jxVar, true);
                map2.put(MediationConstant.KEY_ADN_NAME, jxVarHp != null ? jxVarHp.jl() : "");
                map2.put("ecpm", jxVarHp != null ? jxVarHp.zy() : "");
                return map2;
            }

            @Override // com.byazt.ti.hp
            public String jx() {
                return hpVar.jx();
            }

            @Override // com.byazt.ti.hp
            public float l() {
                return hpVar.l();
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    @Override // com.byazt.jd.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.jl.hp():void");
    }

    @Override // com.byazt.jd.hp
    public void hp(@NonNull com.byazt.dq.hp hpVar) {
        String strL;
        long jCurrentTimeMillis;
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (xs.hp(this.f25950j)) {
            strL = xs.l();
            jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        } else {
            strL = null;
            jCurrentTimeMillis = -1;
        }
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, hpVar, 1, 0, strL, jCurrentTimeMillis);
        jx(hpVar);
    }

    @Override // com.byazt.jd.hp
    public void hp(@NonNull com.byazt.ti.hp hpVar) {
        if (k.hp()) {
            com.byazt.rt.jx jxVar = this.f25950j;
            if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                if (!k.l()) {
                    com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 4, 1, 0, xs.hp());
                    return;
                }
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 4, 0, 0, k.a() ? xs.hp() : null);
            }
            if (di()) {
                return;
            }
            l(hpVar);
            return;
        }
        l(hpVar);
    }
}
