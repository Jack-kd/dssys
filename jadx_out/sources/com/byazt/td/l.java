package com.byazt.td;

import android.graphics.Color;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jz.sz;
import com.byazt.jz.ud;
import com.byazt.lf.k;
import com.byazt.rm.AbstractEndCardFrameLayout;
import com.byazt.vsq.s;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.ec;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.n;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, 34})
/* loaded from: classes3.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public int f25742a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.go.l f25743e;
    public AbstractEndCardFrameLayout eb;
    public com.byazt.xx.l gu;
    public final TTBaseVideoActivity hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f25744j;
    public com.byazt.xx.jx jl;
    public String jx;

    /* renamed from: k, reason: collision with root package name */
    public com.byazt.xx.hp f25745k;

    /* renamed from: l, reason: collision with root package name */
    public mp f25746l;
    public boolean ns;

    /* renamed from: q, reason: collision with root package name */
    public com.byazt.td.hp f25748q;

    /* renamed from: s, reason: collision with root package name */
    public w f25749s;

    /* renamed from: v, reason: collision with root package name */
    public boolean f25751v;

    /* renamed from: w, reason: collision with root package name */
    public int f25752w;
    public final com.byazt.jy.hp zy;

    /* renamed from: u, reason: collision with root package name */
    public int f25750u = -1;
    public boolean xs = false;
    public final AtomicBoolean vv = new AtomicBoolean(false);
    public final AtomicBoolean ec = new AtomicBoolean(false);

    /* renamed from: n, reason: collision with root package name */
    public int f25747n = 0;
    public boolean sz = false;

    public interface hp {
        void hp();
    }

    /* renamed from: com.byazt.td.l$l, reason: collision with other inner class name */
    public interface InterfaceC0370l {
        void hp();

        w jx();

        void l();
    }

    public l(TTBaseVideoActivity tTBaseVideoActivity) {
        this.hp = tTBaseVideoActivity;
        this.zy = new com.byazt.jy.hp(tTBaseVideoActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kg() {
        if (this.hp.isDestroyed()) {
            return;
        }
        Toast toast = new Toast(this.hp);
        toast.setDuration(1);
        toast.setGravity(17, 0, 0);
        LinearLayout linearLayout = new LinearLayout(this.hp);
        linearLayout.setBackgroundColor(Color.parseColor("#CC161823"));
        linearLayout.setOrientation(1);
        linearLayout.setPadding(xh.jx(this.hp, 20.0f), xh.jx(this.hp, 12.0f), xh.jx(this.hp, 20.0f), xh.jx(this.hp, 12.0f));
        TextView textView = new TextView(this.hp);
        textView.setTextColor(-1);
        textView.setText("请求异常无法发放奖励，请关闭重试");
        textView.setTextSize(2, 14.0f);
        linearLayout.addView(textView);
        toast.setView(linearLayout);
        toast.show();
        this.hp.ky().postDelayed(new Runnable() { // from class: com.byazt.td.l.5
            @Override // java.lang.Runnable
            public void run() {
                l.this.kg();
            }
        }, 6000L);
    }

    private void mp() {
        try {
            if (!hq.hp(this.f25746l) || this.ns) {
                return;
            }
            float[] fArrHp = com.byazt.jki.l.hp(this.hp.getApplicationContext(), this.f25746l.qo(), this.f25746l.wf());
            float f2 = fArrHp[0];
            float f3 = fArrHp[1];
            if (this.f25746l.qo() == 100.0f) {
                this.f25752w = (int) f2;
                this.f25742a = (int) f3;
                return;
            }
            int[] iArrHp = com.byazt.jki.l.hp(this.hp.getApplicationContext(), this.f25746l.qo(), this.f25746l.vd(), this.f25746l.wf());
            int i2 = iArrHp[0];
            int i3 = iArrHp[1];
            int i4 = iArrHp[2];
            int i5 = iArrHp[3];
            float f4 = i2;
            float f5 = i4;
            this.f25752w = (int) ((f2 - f4) - f5);
            float f6 = i3;
            float f7 = i5;
            this.f25742a = (int) ((f3 - f6) - f7);
            this.hp.getWindow().getDecorView().setPadding(xh.jx(this.hp, f4), xh.jx(this.hp, f6), xh.jx(this.hp, f5), xh.jx(this.hp, f7));
        } catch (Throwable unused) {
        }
    }

    public int as() {
        return this.f25747n;
    }

    public void b() {
        if (n.jx(this.f25746l) || ms()) {
            return;
        }
        this.f25750u = Math.max(hp(this.f25746l), 0);
        hp(0L);
    }

    public void cx() {
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            lVar.q();
        }
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.q();
        }
    }

    public ud d() {
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            return jxVar.nu();
        }
        return null;
    }

    public void di() {
        jx(true);
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar == null || !jxVar.jx()) {
            w(false);
        } else {
            this.jl.hp(this.hp.y() instanceof s ? 2 : 0);
        }
        if (this.gu != null) {
            this.f25745k = this.jl;
        }
    }

    public void dy() {
        hp(1000L);
    }

    public int e() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            return hpVar.e();
        }
        return 0;
    }

    public void eb() {
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            lVar.v();
        }
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.v();
        }
    }

    public boolean ec() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            return hpVar.jx();
        }
        return false;
    }

    public String gu() {
        com.byazt.xx.hp hpVar = this.f25745k;
        return hpVar != null ? hpVar.gu() : "";
    }

    public boolean hq() {
        return this.f25745k instanceof com.byazt.xx.jx;
    }

    public void jl() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.xs();
        }
    }

    public void k() {
        if (!this.hp.y().y()) {
            b();
        }
        this.f25749s.jx(false);
        this.f25749s.a(false);
        this.f25749s.l(this.f25746l.jc());
        this.f25749s.eb(false);
        mp();
        if (this.f25745k == null && sz.l().kq() && !TextUtils.isEmpty(df.q(this.f25746l))) {
            com.byazt.xx.l lVar = new com.byazt.xx.l(this.hp, this.f25746l, this.jx, this.f25752w, this.f25742a, this.f25744j, this.eb);
            this.gu = lVar;
            lVar.hp(this.f25744j, this.hp.mp(), this.f25749s.j());
            this.gu.hp(this.f25748q.eb(), this.f25743e);
            l();
            this.f25745k = this.gu;
        }
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar == null) {
            this.f25749s.w(false);
            return;
        }
        hpVar.w();
        this.f25745k.hp(1);
        this.f25749s.w(true ^ (this.f25745k instanceof com.byazt.xx.l));
    }

    public String ky() {
        com.byazt.xx.hp hpVar = this.f25745k;
        return hpVar != null ? hpVar.b() : "endcard";
    }

    public boolean lv() {
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            return jxVar.dy();
        }
        return false;
    }

    public boolean ms() {
        return r() && this.ec.get();
    }

    public boolean n() {
        if (this.xs) {
            return true;
        }
        com.byazt.xx.hp hpVar = this.f25745k;
        return hpVar instanceof com.byazt.xx.jx ? this.jl.ud() : hpVar instanceof com.byazt.xx.l;
    }

    public void ns() {
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            this.f25745k = lVar;
        }
    }

    public boolean nu() {
        com.byazt.xx.l lVar = this.gu;
        if (lVar == null) {
            return false;
        }
        return lVar.n();
    }

    public boolean o() {
        com.byazt.xx.jx jxVar = this.jl;
        return jxVar != null && jxVar.jx();
    }

    public void pu() {
        this.zy.jx();
    }

    public void q() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.o();
        }
    }

    public boolean r() {
        return this.vv.get();
    }

    public void s() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.u();
        }
    }

    public boolean sz() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            return hpVar.j();
        }
        return false;
    }

    public void u() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.s();
        }
    }

    public boolean ud() {
        return this.f25751v;
    }

    public boolean v() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            return hpVar.eb();
        }
        return false;
    }

    public boolean vv() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            return hpVar.l();
        }
        return false;
    }

    public void wv() {
        jx(false);
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.a();
        }
        if (this.xs) {
            pu();
        }
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            this.f25745k = lVar;
        }
    }

    public void xh() {
        this.f25747n = ea.l(this.f25746l, this.hp.y().xh());
        this.ec.set(ea.n(this.f25746l));
        com.byazt.ij.a.jx = true;
    }

    public boolean xs() {
        boolean zVv = df.gu(this.f25746l) ? vv() : ec();
        if (this.f25745k == null && !TextUtils.isEmpty(df.q(this.f25746l)) && sz.l().kq()) {
            return true;
        }
        if (sz()) {
            return zVv || n.l(this.f25746l);
        }
        return false;
    }

    public void zy() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.ec();
        }
    }

    public void a() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.vv();
        }
        com.byazt.xx.hp hpVar2 = this.f25745k;
        if (hpVar2 != null) {
            hpVar2.k();
        }
    }

    public void hp(w wVar, com.byazt.td.hp hpVar, boolean z2, String str, int i2, int i3) {
        this.f25744j = z2;
        this.f25749s = wVar;
        this.f25748q = hpVar;
        this.jx = str;
        this.f25752w = i2;
        this.f25742a = i3;
    }

    public void j() {
        if (ms()) {
            return;
        }
        int i2 = this.f25750u;
        if (i2 >= 0) {
            this.hp.l(i2);
            hp(0L);
        }
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.di();
        }
    }

    public void jx() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.jl();
        }
    }

    public void l() {
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.d();
        }
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            lVar.wv();
        }
    }

    public void w() {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.zy();
        }
    }

    public void jx(boolean z2) {
        this.f25751v = z2;
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.a(z2);
        }
    }

    public void w(boolean z2) {
        if (r() || ud()) {
            this.xs = true;
            com.byazt.xx.hp hpVar = this.f25745k;
            if (hpVar != null) {
                hpVar.sz();
                this.f25745k.a();
            }
            com.byazt.xx.jx jxVar = this.jl;
            if (jxVar != null) {
                jxVar.cx();
            }
            w wVar = this.f25749s;
            if (wVar != null) {
                wVar.eb();
            }
            if (this.f25749s != null && this.f25746l.as()) {
                xh.hp(this.f25749s.j(), 0);
            }
            k.hp().a(new com.byazt.fq.hp() { // from class: com.byazt.td.l.3
                @Override // com.byazt.fq.hp
                public com.byazt.jlb.hp hp() throws Exception {
                    com.byazt.jlb.l lVarA = com.byazt.jlb.l.l().hp(l.this.f25744j ? 7 : 8).jx(String.valueOf(ky.zy(l.this.f25746l))).a(ky.xs(l.this.f25746l));
                    lVarA.l(l.this.e()).eb(l.this.gu());
                    lVarA.s(l.this.f25746l.w_()).j(l.this.f25746l.j());
                    return lVarA;
                }
            });
            this.zy.hp();
            if (ec.hp(this.f25746l)) {
                this.hp.zy(8);
            }
            this.f25749s.hp(true);
            this.f25749s.eb(false);
            this.hp.ky().postDelayed(new Runnable() { // from class: com.byazt.td.l.4
                @Override // java.lang.Runnable
                public void run() {
                    l.this.f25749s.hp(true);
                    if (l.this.f25749s.w()) {
                        return;
                    }
                    l.this.f25749s.hp(false, null, null, true, true);
                    if (l.this.lv() && l.this.f25744j) {
                        l.this.kg();
                    }
                }
            }, 500L);
            if (z2) {
                if (!ea.xs(this.f25746l)) {
                    this.f25749s.hp(false, null, null, true, true);
                }
                this.f25749s.w(false);
                this.f25749s.l(this.f25746l.jc());
            }
        }
    }

    public void a(boolean z2) {
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.w(z2);
        }
    }

    public void l(boolean z2) {
        if (this.f25750u >= 0) {
            this.hp.v();
        }
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.j(z2);
        }
    }

    public void hp(mp mpVar, com.byazt.go.l lVar, com.byazt.nc.hp hpVar, AbstractEndCardFrameLayout abstractEndCardFrameLayout) {
        if (this.sz) {
            return;
        }
        this.sz = true;
        this.f25746l = mpVar;
        this.f25743e = lVar;
        this.zy.hp(mpVar);
        this.eb = abstractEndCardFrameLayout;
        hp();
        hp(hpVar);
        this.ns = com.byazt.am.j.hp(String.valueOf(ky.zy(this.f25746l)));
    }

    public void j(boolean z2) {
        this.vv.set(z2);
    }

    public void l(int i2, int i3) {
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.l(i2, i3);
        }
    }

    public void hp() {
        if (this.f25746l.an() == 1) {
            return;
        }
        if (n.l(this.f25746l)) {
            this.jl = new com.byazt.xx.jx(this.hp, this.f25746l, this.jx, this.f25752w, this.f25742a, this.f25744j, this.eb);
        }
        if (!TextUtils.isEmpty(df.q(this.f25746l)) && !sz.l().kq()) {
            this.gu = new com.byazt.xx.l(this.hp, this.f25746l, this.jx, this.f25752w, this.f25742a, this.f25744j, this.eb);
        }
        com.byazt.xx.hp hpVar = this.jl;
        if (hpVar == null) {
            hpVar = this.gu;
        }
        this.f25745k = hpVar;
    }

    public void hp(long j2, long j3, int i2) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.hp(j2, j3, i2);
        }
    }

    public void hp(int i2, int i3) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.hp(i2, i3);
        }
    }

    public void hp(boolean z2) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.l(z2);
        }
    }

    public void hp(com.byazt.nc.hp hpVar) {
        Map<String, Object> mapMp = this.hp.mp();
        this.zy.hp(this.f25743e);
        com.byazt.xx.jx jxVar = this.jl;
        if (jxVar != null) {
            jxVar.hp(hpVar);
            this.jl.hp(this.f25744j, mapMp, this.f25749s.j());
            this.jl.hp(this.f25748q.eb(), this.f25743e);
            this.jl.hp(new hp() { // from class: com.byazt.td.l.1
                @Override // com.byazt.td.l.hp
                public void hp() {
                    l.this.w(false);
                }
            });
            this.jl.hp(new InterfaceC0370l() { // from class: com.byazt.td.l.2
                @Override // com.byazt.td.l.InterfaceC0370l
                public void hp() {
                    l.this.hp.l(true, true);
                }

                @Override // com.byazt.td.l.InterfaceC0370l
                public w jx() {
                    return l.this.f25749s;
                }

                @Override // com.byazt.td.l.InterfaceC0370l
                public void l() {
                    l.this.hp.jl();
                }
            });
        }
        com.byazt.xx.l lVar = this.gu;
        if (lVar != null) {
            lVar.hp(this.f25744j, mapMp, this.f25749s.j());
            this.gu.hp(this.f25748q.eb(), this.f25743e);
        }
    }

    public void hp(Map<String, Object> map) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.hp(map);
        }
    }

    public void hp(boolean z2, int i2, String str) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.hp(z2, i2, str);
        }
    }

    private int hp(mp mpVar) {
        return mpVar.rt();
    }

    private void hp(long j2) {
        int i2 = this.f25750u / 1000;
        if (!ea.xs(this.f25746l)) {
            if (i2 > 0) {
                this.f25749s.hp(false, i2 + "s", null, false, false);
            } else {
                this.f25749s.hp(false, null, null, true, true);
            }
        }
        if (i2 > 0) {
            this.f25750u = (int) (this.f25750u - j2);
            this.hp.hp(j2);
        }
    }

    public void hp(mp mpVar, com.byazt.go.l lVar) {
        this.f25746l = mpVar;
        this.f25743e = lVar;
        this.zy.hp(mpVar);
        this.zy.hp(this.f25743e);
        if (n.l(mpVar)) {
            if (this.jl == null) {
                this.jl = new com.byazt.xx.jx(this.hp, mpVar, this.jx, this.f25752w, this.f25742a, this.f25744j, this.eb);
            }
            com.byazt.xx.jx jxVar = this.jl;
            this.f25745k = jxVar;
            jxVar.hp(new hp() { // from class: com.byazt.td.l.6
                @Override // com.byazt.td.l.hp
                public void hp() {
                    l.this.w(false);
                }
            });
            this.jl.hp(new InterfaceC0370l() { // from class: com.byazt.td.l.7
                @Override // com.byazt.td.l.InterfaceC0370l
                public void hp() {
                    l.this.hp.l(true, true);
                }

                @Override // com.byazt.td.l.InterfaceC0370l
                public w jx() {
                    return l.this.f25749s;
                }

                @Override // com.byazt.td.l.InterfaceC0370l
                public void l() {
                    l.this.hp.jl();
                }
            });
        } else {
            this.f25745k = this.gu;
        }
        try {
            com.byazt.xx.hp hpVar = this.f25745k;
            if (hpVar != null) {
                hpVar.hp(this.f25746l);
                this.f25745k.hp(this.f25744j, this.hp.mp(), this.f25749s.j());
                this.f25745k.hp(this.f25748q.eb(), this.f25743e);
                l();
            }
        } catch (Throwable unused) {
        }
    }

    public void hp(final String str) {
        this.hp.ky().post(new Runnable() { // from class: com.byazt.td.l.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                l.this.zy.hp(str);
            }
        });
    }

    public void hp(JSONObject jSONObject) {
        com.byazt.xx.hp hpVar = this.f25745k;
        if (hpVar != null) {
            hpVar.hp(jSONObject);
        }
    }

    public void hp(com.byazt.fub.k kVar) {
        com.byazt.xx.l lVar = this.gu;
        if (lVar == null) {
            return;
        }
        lVar.hp(kVar);
    }
}
