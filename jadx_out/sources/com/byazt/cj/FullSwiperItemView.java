package com.byazt.cj;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jy.FullRewardExpressView;
import com.byazt.lf.k;
import com.byazt.nk.TTProgressBar;
import com.byazt.pg.r;
import com.byazt.qk.gu;
import com.byazt.tm.hp;
import com.byazt.vi.a;
import com.byazt.xci.mp;
import com.byazt.xci.zx;
import com.byazt.ymw.ud;
import com.byazt.zn.ky;
import com.byazt.zn.wv;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 407, 2208})
/* loaded from: classes2.dex */
public class FullSwiperItemView extends FrameLayout implements r.hp, gu {

    /* renamed from: a, reason: collision with root package name */
    public FrameLayout f18863a;

    /* renamed from: e, reason: collision with root package name */
    public com.byazt.cj.hp f18864e;
    public TTProgressBar eb;
    public boolean ec;
    public FullRewardExpressView gu;
    public ViewGroup hp;

    /* renamed from: j, reason: collision with root package name */
    public FrameLayout f18865j;
    public Context jl;
    public FrameLayout jx;

    /* renamed from: k, reason: collision with root package name */
    public int f18866k;

    /* renamed from: l, reason: collision with root package name */
    public FrameLayout f18867l;

    /* renamed from: n, reason: collision with root package name */
    public l f18868n;

    /* renamed from: q, reason: collision with root package name */
    public float f18869q;

    /* renamed from: s, reason: collision with root package name */
    public float f18870s;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public boolean f18871u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f18872v;
    public hp vv;

    /* renamed from: w, reason: collision with root package name */
    public FrameLayout f18873w;
    public final ud xs;
    public com.byazt.xu.hp zy;

    public interface hp {
        void hp();
    }

    public interface l {
        void hp(View view, float f2, float f3);
    }

    public FullSwiperItemView(Context context, com.byazt.cj.hp hpVar, float f2, float f3) {
        super(context);
        this.xs = new ud(Looper.getMainLooper(), this);
        this.f18864e = hpVar;
        this.f18870s = f2;
        this.f18869q = f3;
        this.jl = context;
        setBackgroundColor(0);
        gu();
        this.sz = ky.zy(hpVar.hp());
        this.ec = hpVar.hp().dh() == 1;
        jl();
        FullRewardExpressView fullRewardExpressView = new FullRewardExpressView(this.hp.getContext(), this.f18864e.hp(), wv.hp(8, String.valueOf(this.sz), this.f18870s, this.f18869q, this.f18864e.hp()), this.f18864e.l(), this.ec, null);
        this.gu = fullRewardExpressView;
        fullRewardExpressView.getAdShowTime().hp(true);
    }

    @Override // com.byazt.qk.gu
    public void a() throws JSONException {
        k.hp().j(this.f18864e.hp(), "stats_reward_full_click_express_close");
        Context context = this.jl;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).y().hp().hp();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            mp mpVarHp = this.f18864e.hp();
            if (mpVarHp != null && mpVarHp.wg() != null) {
                jSONObject.put("refresh_num", this.f18864e.hp().wg().jx());
            }
        } catch (JSONException unused) {
        }
        k.hp().hp(this.f18864e.hp(), "stats_reward_full_click_native_close", jSONObject);
        hp hpVar = this.vv;
        if (hpVar != null) {
            hpVar.hp();
        }
    }

    @Override // com.byazt.qk.gu
    public void e() {
    }

    @Override // com.byazt.qk.gu
    public void eb() throws JSONException {
        hp hpVar = this.vv;
        if (hpVar != null) {
            hpVar.hp();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            mp mpVarHp = this.f18864e.hp();
            if (mpVarHp != null && mpVarHp.wg() != null) {
                jSONObject.put("refresh_num", this.f18864e.hp().wg().jx());
            }
        } catch (JSONException unused) {
        }
        k.hp().hp(this.f18864e.hp(), "stats_reward_full_click_express_close", jSONObject);
        Context context = this.jl;
        if (context instanceof Activity) {
            ((Activity) context).finish();
        }
    }

    public void gu() {
        View viewJl = a.jl(this.jl);
        addView(viewJl);
        this.hp = (ViewGroup) viewJl.findViewById(2114387892);
        this.f18867l = (FrameLayout) viewJl.findViewById(2114387778);
        this.jx = (FrameLayout) viewJl.findViewById(2114387812);
        this.f18865j = (FrameLayout) viewJl.findViewById(2114387670);
        this.f18873w = (FrameLayout) viewJl.findViewById(2114387821);
        this.f18863a = (FrameLayout) viewJl.findViewById(2114387679);
        this.eb = (TTProgressBar) viewJl.findViewById(2114387767);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        if (message.what != 102) {
            return;
        }
        com.byazt.cj.hp hpVar = this.f18864e;
        if (hpVar != null) {
            hpVar.eb();
        }
        Context context = this.jl;
        if (context instanceof TTBaseVideoActivity) {
            ((TTBaseVideoActivity) context).gu();
        }
        hp hpVar2 = this.vv;
        if (hpVar2 != null) {
            hpVar2.hp();
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2) {
    }

    @Override // com.byazt.qk.gu
    public void j() {
    }

    public void jl() {
        mp mpVarHp = this.f18864e.hp();
        if (mpVarHp == null) {
            return;
        }
        float fQo = mpVarHp.qo();
        int iWf = mpVarHp.wf();
        float fVd = mpVarHp.vd();
        float[] fArrHp = com.byazt.jki.l.hp(this.jl.getApplicationContext(), mpVarHp.qo(), mpVarHp.wf());
        float f2 = fArrHp[0];
        float f3 = fArrHp[1];
        if (fQo == 100.0f) {
            this.f18870s = f2;
            this.f18869q = f3;
            return;
        }
        int[] iArrHp = com.byazt.jki.l.hp(this.jl.getApplicationContext(), fQo, fVd, iWf);
        int i2 = iArrHp[0];
        int i3 = iArrHp[1];
        int i4 = iArrHp[2];
        int i5 = iArrHp[3];
        this.f18870s = (int) ((f2 - i2) - i4);
        this.f18869q = (int) ((f3 - i3) - i5);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        setLayoutParams(layoutParams);
    }

    @Override // com.byazt.qk.gu
    public void jx(int i2) {
    }

    public void k() throws JSONException {
        if (this.zy != null && this.f18872v) {
            this.f18864e.q();
            this.gu.v();
            this.f18871u = true;
            if (mp.jx(this.f18864e.hp())) {
                this.xs.sendEmptyMessageDelayed(102, 5000L);
            }
            this.f18864e.hp(this.gu);
            if (this.gu.n()) {
                return;
            }
            this.zy.hp(this.f18864e.e());
        }
    }

    @Override // com.byazt.qk.gu
    public void l(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void q() {
        com.byazt.vsq.hp hpVarY;
        hp hpVar = this.vv;
        if (hpVar != null) {
            hpVar.hp();
        }
        Context context = this.jl;
        if (!(context instanceof TTBaseVideoActivity) || (hpVarY = ((TTBaseVideoActivity) context).y()) == null || hpVarY.hp() == null) {
            return;
        }
        hpVarY.hp().jx();
    }

    @Override // com.byazt.qk.gu
    public void s() {
    }

    public void setOnSwiperItemInteractListener(hp hpVar) {
        this.vv = hpVar;
    }

    public void setOnSwiperItemRenderResultListener(l lVar) {
        this.f18868n = lVar;
    }

    @Override // com.byazt.qk.gu
    public void setPauseFromExpressView(boolean z2) {
    }

    public void u() {
        com.byazt.xu.hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.s();
        }
    }

    public void v() {
        com.byazt.xu.hp hpVar = this.zy;
        if (hpVar == null) {
            return;
        }
        hpVar.a();
    }

    public void vv() {
        FullRewardExpressView fullRewardExpressView = this.gu;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.jl();
        }
        com.byazt.xu.hp hpVar = this.zy;
        if (hpVar != null) {
            hpVar.q();
        }
    }

    @Override // com.byazt.qk.gu
    public void w() {
    }

    public void xs() {
        ud udVar = this.xs;
        if (udVar != null) {
            udVar.removeMessages(102);
        }
    }

    public void zy() {
        if (this.f18864e == null) {
            return;
        }
        this.eb.setVisibility(0);
        this.gu.setExpressInteractionListener(new com.byazt.qk.hp() { // from class: com.byazt.cj.FullSwiperItemView.1
            @Override // com.byazt.qk.hp
            public void hp(View view, float f2, float f3) {
                if (FullSwiperItemView.this.f18868n != null) {
                    FullSwiperItemView.this.f18868n.hp(view, f2, f3);
                }
            }

            @Override // com.byazt.qk.hp
            public void hp(View view, int i2) {
                super.hp(view, i2);
            }
        });
        this.gu.setExpressVideoListenerProxy(this);
        this.gu.setInteractListener(this.vv);
        this.gu.setOnVideoSizeChangeListener(new FullRewardExpressView.hp() { // from class: com.byazt.cj.FullSwiperItemView.2
            @Override // com.byazt.jy.FullRewardExpressView.hp
            public void hp(int i2) {
                FullSwiperItemView.this.f18866k = i2;
            }
        });
        if (this.gu.getParent() != null) {
            ((ViewGroup) this.gu.getParent()).removeView(this.gu);
        }
        this.f18873w.addView(this.gu);
        this.zy = new com.byazt.xu.hp(this.hp.getContext(), this.jx, this.f18864e.hp(), null);
        this.zy.hp(new jx(this.f18864e.w(), zx.jx(this.f18864e.hp()), new jx.hp() { // from class: com.byazt.cj.FullSwiperItemView.3
            @Override // com.byazt.cj.FullSwiperItemView.jx.hp
            public void hp() throws JSONException {
                if (FullSwiperItemView.this.jl instanceof TTBaseVideoActivity) {
                    ((TTBaseVideoActivity) FullSwiperItemView.this.jl).qu();
                }
            }

            @Override // com.byazt.cj.FullSwiperItemView.jx.hp
            public void hp(long j2, long j3) {
                com.byazt.td.a aVarHd;
                if (FullSwiperItemView.this.gu == null || !(FullSwiperItemView.this.jl instanceof TTBaseVideoActivity) || (aVarHd = ((TTBaseVideoActivity) FullSwiperItemView.this.jl).hd()) == null) {
                    return;
                }
                aVarHd.l(j2);
                FullSwiperItemView.this.gu.hp(String.valueOf(aVarHd.wv()), (int) (aVarHd.hq() / 1000), 0, j2 == j3 || aVarHd.nu());
            }
        }, this.xs));
        this.zy.l(this.ec);
        this.gu.setVideoController(this.zy);
        this.f18864e.hp(this.jx, this.f18865j, this.gu);
        this.gu.u();
        this.gu.xs();
    }

    @Override // com.byazt.qk.gu
    public void hp(float f2, float f3, float f4, float f5, int i2) {
    }

    @Override // com.byazt.qk.gu
    public void j(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void w(int i2) {
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2) {
    }

    @Override // com.byazt.qk.gu
    public int jx() {
        com.byazt.xu.hp hpVar = this.zy;
        if (hpVar == null) {
            return 0;
        }
        return (int) (hpVar.gu() / 1000);
    }

    public void l(boolean z2) throws JSONException {
        FullRewardExpressView fullRewardExpressView = this.gu;
        if (fullRewardExpressView == null) {
            return;
        }
        if (fullRewardExpressView.n()) {
            Context context = this.jl;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).vv();
            }
        } else {
            this.gu.hp((ViewGroup) this.f18867l, false);
        }
        this.f18872v = true;
        this.f18864e.jx(z2);
        k();
        this.eb.setVisibility(8);
    }

    @Override // com.byazt.qk.gu
    public void hp(int i2, String str) {
    }

    @com.byazt.kj.hp(hp = {0, 1, 407, 1159})
    public static class jx implements hp.InterfaceC0374hp {
        public final hp.InterfaceC0374hp hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f18874j;
        public boolean jx = false;

        /* renamed from: l, reason: collision with root package name */
        public final hp f18875l;

        /* renamed from: w, reason: collision with root package name */
        public final ud f18876w;

        public interface hp {
            void hp();

            void hp(long j2, long j3);
        }

        public jx(hp.InterfaceC0374hp interfaceC0374hp, int i2, hp hpVar, ud udVar) {
            this.hp = interfaceC0374hp;
            this.f18875l = hpVar;
            this.f18874j = i2;
            this.f18876w = udVar;
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp() {
            this.jx = false;
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp();
            }
            hp hpVar = this.f18875l;
            if (hpVar != null) {
                hpVar.hp();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void jx() {
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.jx();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void l() {
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.l();
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp(int i2, String str) {
            this.jx = false;
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp(i2, str);
            }
        }

        @Override // com.byazt.tm.hp.InterfaceC0374hp
        public void hp(long j2, long j3) {
            this.f18876w.removeMessages(102);
            hp.InterfaceC0374hp interfaceC0374hp = this.hp;
            if (interfaceC0374hp != null) {
                interfaceC0374hp.hp(j2, j3);
            }
            hp hpVar = this.f18875l;
            if (hpVar != null) {
                hpVar.hp(j2, j3);
            }
        }
    }

    @Override // com.byazt.qk.gu
    public void hp(mp mpVar) {
    }

    @Override // com.byazt.qk.gu
    public void hp(boolean z2) {
        if (this.ec != z2) {
            this.ec = z2;
            com.byazt.xu.hp hpVar = this.zy;
            if (hpVar != null) {
                hpVar.l(z2);
            }
            Context context = this.jl;
            if (context instanceof TTBaseVideoActivity) {
                ((TTBaseVideoActivity) context).y().hp().l();
            }
            hp hpVar2 = this.vv;
            if (hpVar2 != null) {
                hpVar2.hp();
            }
        }
    }

    @Override // com.byazt.qk.gu
    public int l() {
        com.byazt.xu.hp hpVar = this.zy;
        if (hpVar == null || !this.f18871u) {
            return 2;
        }
        if (hpVar.f()) {
            return 5;
        }
        if (this.zy.ns()) {
            return 1;
        }
        if (this.zy.yr()) {
            return 2;
        }
        this.zy.b();
        return 3;
    }

    @Override // com.byazt.qk.gu
    public long hp() {
        return this.zy.gu();
    }
}
