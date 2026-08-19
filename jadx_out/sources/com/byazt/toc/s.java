package com.byazt.toc;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import com.byazt.toc.e;
import com.byazt.zg.k;
import com.byazt.zg.xs;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 225, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes3.dex */
public class s extends j implements com.byazt.sdu.l {
    public boolean ec;
    public com.byazt.sws.l hp;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.sws.hp f25960l;

    public s(Context context) {
        super(context);
        this.ec = false;
    }

    @Override // com.byazt.sws.hp
    public void a() {
        if (!k.hp()) {
            o();
            com.byazt.sws.hp hpVar = this.f25960l;
            if (hpVar != null) {
                hpVar.a();
                return;
            }
            return;
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            if (!k.jx()) {
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 3, 1, n() ? 1 : 0, xs.hp());
                return;
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 3, 0, n() ? 1 : 0, (String) null);
        }
        if (di()) {
            return;
        }
        o();
        com.byazt.sws.hp hpVar2 = this.f25960l;
        if (hpVar2 != null) {
            hpVar2.a();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void eb() {
        com.byazt.sws.l lVar = this.hp;
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    @Override // com.byazt.sws.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void g_() {
        /*
            r10 = this;
            r10.b()
            boolean r0 = com.byazt.zg.k.hp()
            r1 = 0
            if (r0 == 0) goto L4d
            com.byazt.rt.jx r0 = r10.f25950j
            if (r0 == 0) goto L3d
            java.lang.String r2 = "pangle"
            java.lang.String r0 = r0.getAdNetWorkName()
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L3d
            boolean r0 = com.byazt.zg.k.jx()
            if (r0 != 0) goto L32
            java.lang.String r7 = com.byazt.zg.xs.hp()
            com.byazt.rt.jx r2 = r10.f25950j
            com.byazt.iqm.l r3 = r10.f25948a
            r5 = 1
            boolean r6 = r10.n()
            r4 = 5
            com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r7)
            return
        L32:
            boolean r0 = com.byazt.zg.k.s()
            if (r0 == 0) goto L3d
            java.lang.String r0 = com.byazt.zg.xs.hp()
            goto L3e
        L3d:
            r0 = r1
        L3e:
            boolean r2 = r10.di()
            if (r2 != 0) goto L4b
            com.byazt.sws.hp r2 = r10.f25960l
            if (r2 == 0) goto L4b
            r2.g_()
        L4b:
            r8 = r0
            goto L55
        L4d:
            com.byazt.sws.hp r0 = r10.f25960l
            if (r0 == 0) goto L54
            r0.g_()
        L54:
            r8 = r1
        L55:
            long r2 = java.lang.System.currentTimeMillis()
            com.byazt.rt.jx r0 = r10.f25950j
            boolean r0 = com.byazt.zg.xs.hp(r0)
            if (r0 == 0) goto L6d
            java.lang.String r1 = com.byazt.zg.xs.l()
            long r4 = java.lang.System.currentTimeMillis()
            long r4 = r4 - r2
        L6a:
            r6 = r4
            r5 = r1
            goto L70
        L6d:
            r4 = -1
            goto L6a
        L70:
            com.byazt.iqm.l r0 = r10.f25948a
            java.lang.String r0 = r0.sz()
            com.byazt.xoi.hp.w(r0)
            com.byazt.rt.jx r2 = r10.f25950j
            com.byazt.iqm.l r3 = r10.f25948a
            boolean r4 = r10.n()
            com.byazt.rt.jx r0 = r10.f25950j
            boolean r9 = r0.isClickListenRepeatOnce()
            com.byazt.lsx.a.hp(r2, r3, r4, r5, r6, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.s.g_():void");
    }

    @Override // com.byazt.sws.hp
    public void h_() {
        cx();
        if (this.f25932u) {
            if (!k.hp()) {
                o();
                com.byazt.sws.hp hpVar = this.f25960l;
                if (hpVar != null) {
                    hpVar.h_();
                    return;
                }
                return;
            }
            com.byazt.rt.jx jxVar = this.f25950j;
            if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
                if (!k.jx()) {
                    com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 2, 1, n() ? 1 : 0, xs.hp());
                    return;
                }
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 2, 0, n() ? 1 : 0, (String) null);
            }
            if (di()) {
                return;
            }
            o();
            com.byazt.sws.hp hpVar2 = this.f25960l;
            if (hpVar2 != null) {
                hpVar2.h_();
            }
        }
    }

    @Override // com.byazt.sws.hp
    public void j() {
        if (!k.hp()) {
            o();
            com.byazt.sws.hp hpVar = this.f25960l;
            if (hpVar != null) {
                hpVar.j();
                return;
            }
            return;
        }
        com.byazt.rt.jx jxVar = this.f25950j;
        if (jxVar != null && MediationConstant.ADN_PANGLE.equals(jxVar.getAdNetWorkName())) {
            if (!k.jx()) {
                com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 1, 1, n() ? 1 : 0, xs.hp());
                return;
            }
            com.byazt.lsx.a.hp(this.f25950j, this.f25948a, 1, 0, n() ? 1 : 0, (String) null);
        }
        if (di()) {
            return;
        }
        o();
        com.byazt.sws.hp hpVar2 = this.f25960l;
        if (hpVar2 != null) {
            hpVar2.j();
        }
    }

    @Override // com.byazt.toc.e, com.byazt.toc.l
    public void jx() {
        if (this.f25950j == null) {
            com.byazt.xob.hp.hp().hp(this.jx.hp(false), this.f25956w, this.f25948a, vv(), this.f25950j);
        }
        super.jx();
        this.f25960l = null;
        this.hp = null;
    }

    public void l(Activity activity, Object obj, String str) {
        hp(activity, obj, str);
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void s() {
        com.byazt.sws.l lVar = this.hp;
        if (lVar != null) {
            lVar.l();
        }
    }

    @Override // com.byazt.sws.hp
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
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, (com.byazt.dq.hp) null, 2, n() ? 1 : 0, strL, jCurrentTimeMillis);
        com.byazt.sws.hp hpVar = this.f25960l;
        if (hpVar != null) {
            hpVar.w();
        }
    }

    @Override // com.byazt.toc.l, com.byazt.wij.hp
    public void l(com.byazt.dq.hp hpVar) {
        com.byazt.sws.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(hpVar);
        }
    }

    public void hp(com.byazt.iqm.l lVar, @NonNull com.byazt.sws.l lVar2) {
        super.l(lVar);
        this.hp = lVar2;
        this.f25948a = lVar;
        this.f25953q = this;
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void jx(final com.byazt.dq.hp hpVar) {
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.s.2
            @Override // java.lang.Runnable
            public void run() {
                if (s.this.f25960l != null) {
                    s.this.f25960l.hp(hpVar);
                }
            }
        });
    }

    public void hp(Activity activity) {
        l(activity, null, null);
    }

    @Override // com.byazt.toc.j
    @MainThread
    public void hp(Activity activity, Object obj, String str) {
        super.hp(activity, obj, str, new e.hp() { // from class: com.byazt.toc.s.1
            @Override // com.byazt.toc.e.hp
            public void hp() {
                s.this.jx(new com.byazt.dq.hp(40052, com.byazt.dq.hp.hp(40052)));
            }
        });
        if (this.f25960l == null) {
            com.byazt.aw.l.hp(MediationConstant.TAG, "注意：未设置GMFullVideoAdListener，将收不到广告播放/点击/关闭等回调信息");
        }
        hp(this.f25950j);
    }

    public void hp(com.byazt.sws.hp hpVar) {
        this.f25960l = hpVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0055  */
    @Override // com.byazt.sws.hp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.s.hp():void");
    }

    @Override // com.byazt.sws.hp
    public void hp(com.byazt.dq.hp hpVar) {
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
        com.byazt.lsx.a.hp(this.f25950j, this.f25948a, hpVar, 1, n() ? 1 : 0, strL, jCurrentTimeMillis);
        jx(hpVar);
    }

    @Override // com.byazt.sws.hp
    public void hp(@NonNull com.byazt.ti.hp hpVar) {
        com.byazt.sws.hp hpVar2 = this.f25960l;
        if (hpVar2 != null) {
            hpVar2.hp(jl.hp(this.f25948a, hpVar, this.f25950j, (Map<String, Object>) null));
        }
    }
}
