package com.byazt.oh;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.byazt.ay.k;
import com.byazt.ay.v;
import com.byazt.cw.SSRenderTextureView;
import com.byazt.dnb.s;
import com.byazt.dth.TTViewStub;
import com.byazt.jz.ec;
import com.byazt.jz.n;
import com.byazt.jz.sz;
import com.byazt.nc.hp;
import com.byazt.nk.RoundImageView;
import com.byazt.nk.TTProgressBar;
import com.byazt.nke.b;
import com.byazt.nke.u;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.pg.r;
import com.byazt.qk.cx;
import com.byazt.qt.zy;
import com.byazt.su.l;
import com.byazt.sw.hp;
import com.byazt.tv.TTLottieVideoContainer;
import com.byazt.tv.UpieVideoView;
import com.byazt.xci.df;
import com.byazt.xci.ea;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.ms;
import com.byazt.xm.l;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 54})
/* loaded from: classes3.dex */
public class a implements com.byazt.su.l<mp>, com.byazt.cw.hp, r.hp, k.hp, v.l {

    /* renamed from: a, reason: collision with root package name */
    public ImageView f24052a;
    public eb an;
    public NativeVideoTsView.hp as;

    /* renamed from: b, reason: collision with root package name */
    public EnumSet<l.hp> f24053b;
    public int cx;

    /* renamed from: d, reason: collision with root package name */
    public v f24054d;
    public mp di;
    public com.byazt.go.hp dy;

    /* renamed from: e, reason: collision with root package name */
    public View f24055e;
    public int ea;
    public TTViewStub eb;
    public int ec;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f24056f;
    public final int fi;
    public RoundImageView gu;
    public RoundImageView hd;
    public View hp;
    public boolean hq;

    /* renamed from: j, reason: collision with root package name */
    public View f24057j;
    public TextView jl;
    public ImageView jx;

    /* renamed from: k, reason: collision with root package name */
    public TextView f24058k;
    public RelativeLayout kg;
    public View ky;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.cw.l f24059l;
    public com.byazt.go.hp lv;

    /* renamed from: m, reason: collision with root package name */
    public TextView f24060m;
    public RoundImageView mp;

    /* renamed from: ms, reason: collision with root package name */
    public TextView f24061ms;

    /* renamed from: n, reason: collision with root package name */
    public boolean f24062n;
    public RelativeLayout nd;
    public final int nr;
    public volatile boolean ns;
    public com.byazt.su.jx nu;

    /* renamed from: o, reason: collision with root package name */
    public Context f24063o;
    public final int pc;
    public boolean pu;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f24064q;
    public hp.InterfaceC0317hp qu;

    /* renamed from: r, reason: collision with root package name */
    public com.byazt.dc.hp f24065r;
    public AtomicBoolean rk;
    public com.byazt.go.hp rv;
    public View rz;

    /* renamed from: s, reason: collision with root package name */
    public View f24066s;
    public boolean su;
    public int sz;

    /* renamed from: u, reason: collision with root package name */
    public TTViewStub f24067u;
    public com.byazt.gog.jx ud;

    /* renamed from: v, reason: collision with root package name */
    public TTProgressBar f24068v;
    public String vq;
    public int vv;

    /* renamed from: w, reason: collision with root package name */
    public View f24069w;
    public l wv;
    public TextView xh;
    public int xs;

    /* renamed from: y, reason: collision with root package name */
    public TextView f24070y;
    public TTViewStub yr;
    public TextView zx;
    public TextView zy;

    public a(Context context, View view, boolean z2, EnumSet<l.hp> enumSet, mp mpVar, com.byazt.su.jx jxVar, boolean z3, com.byazt.go.hp hpVar) {
        this.f24062n = true;
        this.hq = true;
        this.pu = true;
        this.pc = 1;
        this.fi = 2;
        this.nr = 3;
        this.rk = new AtomicBoolean(false);
        if (this instanceof w) {
            return;
        }
        this.f24063o = sz.getContext().getApplicationContext();
        j(z3);
        this.hp = view;
        this.f24062n = z2;
        this.f24053b = enumSet == null ? EnumSet.noneOf(l.hp.class) : enumSet;
        this.nu = jxVar;
        this.rv = hpVar;
        this.di = mpVar;
        hq();
        j(8);
        hp(context, this.hp, mpVar);
        j();
        u();
    }

    private void dy() {
        if (this.f24063o == null || this.hp == null) {
            return;
        }
        View view = new View(this.f24063o) { // from class: com.byazt.oh.a.8

            /* renamed from: l, reason: collision with root package name */
            public final AtomicBoolean f24075l = new AtomicBoolean(true);

            private void hp() {
                if (a.this.di == null) {
                    return;
                }
                if (this.f24075l.getAndSet(false) && (com.byazt.we.hp.hp(a.this.di) || a.this.di.q() == 4)) {
                    a.this.ud();
                }
                n.l(a.this.di.jm(), a.this.an, eb.class);
            }

            private void l() {
                com.byazt.gog.jx jxVar;
                if (this.f24075l.getAndSet(true) || (jxVar = a.this.ud) == null) {
                    return;
                }
                jxVar.jx();
            }

            @Override // android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                a.this.rk.set(false);
                hp();
            }

            @Override // android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                a.this.rk.set(true);
                l();
            }

            @Override // android.view.View
            public void onFinishTemporaryDetach() {
                super.onFinishTemporaryDetach();
                hp();
            }

            @Override // android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(0, 0);
            }

            @Override // android.view.View
            public void onStartTemporaryDetach() {
                super.onStartTemporaryDetach();
                l();
            }

            @Override // android.view.View
            public void onWindowFocusChanged(boolean z2) {
                super.onWindowFocusChanged(z2);
                com.byazt.gog.jx jxVar = a.this.ud;
                if (jxVar == null || !z2) {
                    return;
                }
                jxVar.l();
            }
        };
        View view2 = this.hp;
        if (view2 instanceof ViewGroup) {
            ((ViewGroup) view2).addView(view, 0, new RelativeLayout.LayoutParams(0, 0));
        }
    }

    private void hq() {
        this.ea = 1;
        String strL = ky.l(this.di);
        String str = "embeded_ad_landingpage";
        if (strL == null) {
            strL = this.hq ? com.byazt.ih.l.AD_TAG_FEED : "embeded_ad_landingpage";
        }
        this.ea = ky.j(strL);
        if (!this.hq && strL.equals("draw_ad")) {
            str = "draw_ad_landingpage";
        } else if (this.hq || !strL.equals(com.byazt.ih.l.AD_TAG_FEED)) {
            str = strL;
        }
        this.vq = str;
    }

    private void ky() {
        if (pu()) {
            xh.hp((View) this.jx, 8);
            if (!sz.l().be()) {
                xh.hp(this.f24057j, 8);
                xh.hp(this.f24069w, 8);
                xh.hp((View) this.f24052a, 8);
                return;
            }
        }
        xh.hp(this.f24057j, 0);
        xh.hp((View) this.kg, 8);
        xh.a(this.f24057j);
        if (pu() && sz.l().be()) {
            xh.hp(this.f24069w, 8);
        } else {
            xh.a(this.f24069w);
        }
        if (this.f24052a == null || TextUtils.isEmpty(df.l(this.di))) {
            return;
        }
        xh.a(this.f24052a);
        com.byazt.ws.l.hp(df.l(this.di)).to(this.f24052a);
        hp(this.f24052a, df.l(this.di));
    }

    private boolean lv() {
        if (this.di == null) {
            return false;
        }
        if ("fullscreen_interstitial_ad".equals(this.vq) || "rewarded_video".equals(this.vq)) {
            int iWf = this.di.wf();
            float fQo = this.di.qo();
            if (iWf == 1 && fQo == 100.0f) {
                return true;
            }
        }
        return false;
    }

    private boolean ms() {
        mp mpVar;
        return this.hq && this.f24055e != null && (mpVar = this.di) != null && mpVar.x() == 1;
    }

    private boolean nu() {
        mp mpVar = this.di;
        return mpVar != null && hd.a(mpVar) == null && hd.eb(this.di) == null && this.di.xv() == 1 && mp.jx(this.di);
    }

    private boolean pu() {
        return TextUtils.equals(this.vq, "splash_ad") || TextUtils.equals(this.vq, "cache_splash_ad");
    }

    private void r() {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        mp mpVar = this.di;
        if (mpVar != null && com.byazt.we.hp.hp(mpVar)) {
            String strQ = ms.q(this.di);
            if (!TextUtils.isEmpty(strQ)) {
                com.byazt.ws.l.hp(strQ).to(this.mp);
            }
            String strJx = ms.jx(this.di);
            String strS = ms.s(this.di);
            if (!TextUtils.isEmpty(strJx)) {
                xh.hp(this.f24060m, strJx);
            }
            if (this.kg == null) {
                return;
            }
            com.byazt.ws.l.hp(strS).type(2).to(new b<Bitmap>() { // from class: com.byazt.oh.a.10
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                    a aVar = a.this;
                    com.byazt.jdb.j.hp(aVar.di, aVar.vq, i2, str);
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap bitmapHp = com.byazt.sq.l.hp(a.this.f24063o, uVar.getResult(), 25);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(a.this.kg.getResources(), bitmapHp);
                    s.hp(new Runnable() { // from class: com.byazt.oh.a.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.kg != null) {
                                a.this.kg.setBackground(bitmapDrawable);
                            }
                        }
                    });
                    a aVar = a.this;
                    com.byazt.jdb.j.j(aVar.di, aVar.vq, System.currentTimeMillis() - jCurrentTimeMillis);
                }
            }, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ud() {
        s.hp(new com.byazt.uid.eb("native_video_layout_download_listener") { // from class: com.byazt.oh.a.1
            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                if (aVar.ud == null) {
                    aVar.ud = com.byazt.ff.s.hp(aVar.f24063o, aVar.di, aVar.vq);
                }
                com.byazt.go.hp hpVar = a.this.dy;
                if (hpVar != null) {
                    ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(a.this.ud);
                }
                com.byazt.go.hp hpVar2 = a.this.lv;
                if (hpVar2 != null) {
                    ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(a.this.ud);
                }
                if (a.this.qu != null) {
                    a aVar2 = a.this;
                    aVar2.ud.hp(aVar2.qu);
                }
                com.byazt.gog.jx jxVar = a.this.ud;
                if (jxVar != null) {
                    jxVar.hp();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xh() {
        try {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            layoutParams.addRule(15);
            View view = this.f24055e;
            if (view != null) {
                view.setLayoutParams(layoutParams);
            }
            View view2 = this.hp;
            if (view2 == null) {
                return;
            }
            int measuredWidth = view2.getMeasuredWidth();
            int measuredHeight = this.hp.getMeasuredHeight();
            int iJx = xh.jx(this.f24063o, 200.0f);
            int iJx2 = xh.jx(this.f24063o, 331.0f);
            int iJx3 = xh.jx(this.f24063o, 110.0f);
            int iJx4 = xh.jx(this.f24063o, 100.0f);
            if (measuredWidth >= iJx && measuredHeight >= iJx2) {
                a(1);
                return;
            }
            if (measuredWidth > iJx3 && measuredHeight > iJx4) {
                a(3);
                return;
            }
            a(2);
        } catch (Exception unused) {
        }
    }

    public void a() {
    }

    @TargetApi(14)
    public void b() {
        xh.hp(this.hp, 0);
        com.byazt.cw.l lVar = this.f24059l;
        if (lVar != null) {
            View view = lVar.getView();
            xh.hp(view, 8);
            xh.hp(view, 0);
        }
    }

    public void cx() {
        if (com.byazt.we.hp.hp(this.di)) {
            ns();
        } else {
            xh.hp((View) this.kg, 8);
            xh.a(this.f24057j);
            xh.a(this.f24069w);
        }
        ImageView imageView = this.jx;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        xh.hp((View) this.jx, 8);
    }

    public void d() {
        if (pu()) {
            xh.hp((View) this.jx, 8);
            xh.w(this.f24057j);
            xh.w(this.f24069w);
            ImageView imageView = this.f24052a;
            if (imageView != null) {
                xh.w(imageView);
            }
        }
    }

    public void di() {
        xh.hp(this.f24066s, 8);
        xh.hp((View) this.f24064q, 8);
        xh.hp(this.f24055e, 8);
        xh.hp((View) this.gu, 8);
        xh.hp((View) this.jl, 8);
        xh.hp((View) this.zy, 8);
        xh.hp((View) this.f24058k, 8);
        xh.hp(this.rz, 8);
        xh.hp((View) this.nd, 8);
    }

    @Override // com.byazt.ay.v.l
    public boolean e() {
        return false;
    }

    public void ec() {
        if (this.wv == null || this.f24054d != null) {
            return;
        }
        System.currentTimeMillis();
        v vVar = new v();
        this.f24054d = vVar;
        vVar.hp(this.f24063o, this.hp);
        this.f24054d.hp(this.wv, this);
        System.currentTimeMillis();
    }

    public boolean gu() {
        return this.f24062n;
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) {
    }

    public void hp(long j2) {
    }

    @Override // com.byazt.ay.v.l
    public void jl() {
        hp(true, false);
    }

    public void jx(boolean z2) {
    }

    @Override // com.byazt.ay.k.hp
    public void k() {
    }

    public void l(ViewGroup viewGroup) {
    }

    public boolean n() {
        if (this.wv != null) {
            return true;
        }
        com.byazt.ymw.u.l("NewLiveViewLayout", "callback is null");
        return false;
    }

    public void ns() {
        xh.hp(this.f24057j, 8);
        xh.hp((View) this.kg, 0);
        r();
    }

    public void o() {
        mp mpVar = this.di;
        if (mpVar == null) {
            return;
        }
        if (this.di.yu() != 5 ? mpVar.yu() == 1 && ea.xs(this.di) : true) {
            hp(false, this.f24062n);
            hp(this.hp, sz.getContext());
            if (this.f24064q == null || TextUtils.isEmpty(df.l(this.di))) {
                return;
            }
            xh.hp(this.f24066s, 0);
            xh.hp((View) this.f24064q, 0);
            xh.hp(this.f24055e, 8);
            com.byazt.ws.l.hp(df.l(this.di)).to(this.f24064q);
            hp(this.f24064q, df.l(this.di));
        }
    }

    public void sz() {
        v vVar = this.f24054d;
        if (vVar != null) {
            vVar.hp(false);
        }
    }

    public void u() {
        View view;
        hq();
        if (com.byazt.we.hp.hp(this.di)) {
            com.byazt.go.hp hpVar = this.rv;
            if (hpVar != null) {
                this.dy = hpVar;
            } else {
                this.dy = new com.byazt.go.hp(this.f24063o, this.di, this.vq, this.ea);
            }
            hp.InterfaceC0368hp interfaceC0368hp = new hp.InterfaceC0368hp() { // from class: com.byazt.oh.a.5
                @Override // com.byazt.sw.hp.InterfaceC0368hp
                public void hp(View view2, int i2) {
                    if (a.this.as != null) {
                        a.this.as.hp(view2, i2);
                    }
                }
            };
            ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp);
            mp mpVar = this.di;
            if (mpVar != null) {
                n.l(mpVar.jm(), interfaceC0368hp, hp.InterfaceC0368hp.class);
            }
            if (this.rv == null && (view = this.hp) != null) {
                view.setOnClickListener(this.dy);
                this.hp.setOnTouchListener(this.dy);
            }
            if (xh.j(this.f24056f)) {
                this.f24056f.setOnClickListener(this.dy);
                this.f24056f.setOnTouchListener(this.dy);
                return;
            }
            return;
        }
        dy();
        com.byazt.go.hp hpVar2 = new com.byazt.go.hp(this.f24063o, this.di, this.vq, this.ea);
        this.dy = hpVar2;
        ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).l(true);
        hp.InterfaceC0368hp interfaceC0368hp2 = new hp.InterfaceC0368hp() { // from class: com.byazt.oh.a.6
            @Override // com.byazt.sw.hp.InterfaceC0368hp
            public void hp(View view2, int i2) {
                if (a.this.as != null) {
                    a.this.as.hp(view2, i2);
                }
            }
        };
        ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp2);
        mp mpVar2 = this.di;
        if (mpVar2 != null) {
            n.l(mpVar2.jm(), interfaceC0368hp2, hp.InterfaceC0368hp.class);
        }
        l(this.dy);
        if (this.hq) {
            ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).jx(true);
        } else {
            ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).jx(false);
            ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).hp(true);
        }
        if (nu()) {
            com.byazt.go.hp hpVar3 = new com.byazt.go.hp(this.f24063o, this.di, this.vq, this.ea);
            this.lv = hpVar3;
            l(hpVar3);
            this.an = new eb(this);
            ((com.byazt.sw.hp) this.lv.hp(com.byazt.sw.hp.class)).l(true);
            hp.InterfaceC0368hp interfaceC0368hp3 = new hp.InterfaceC0368hp() { // from class: com.byazt.oh.a.7
                @Override // com.byazt.sw.hp.InterfaceC0368hp
                public void hp(View view2, int i2) {
                    if (a.this.as != null) {
                        a.this.as.hp(view2, i2);
                    }
                }
            };
            ((com.byazt.sw.hp) this.lv.hp(com.byazt.sw.hp.class)).hp(interfaceC0368hp3);
            mp mpVar3 = this.di;
            if (mpVar3 != null) {
                n.l(mpVar3.jm(), interfaceC0368hp3, hp.InterfaceC0368hp.class);
            }
            if (this.hq) {
                ((com.byazt.sw.hp) this.lv.hp(com.byazt.sw.hp.class)).jx(true);
            } else {
                ((com.byazt.sw.hp) this.lv.hp(com.byazt.sw.hp.class)).jx(false);
            }
            hp(this.lv);
            View view2 = this.hp;
            if (view2 != null) {
                view2.setOnClickListener(this.lv);
                this.hp.setOnTouchListener(this.lv);
            }
        }
    }

    @Override // com.byazt.ay.k.hp
    public boolean v() {
        v vVar = this.f24054d;
        return vVar != null && vVar.hp();
    }

    public void vv() {
        if (this.di == null) {
            return;
        }
        if (this.su) {
            xh.hp((View) this.f24070y, 8);
        }
        if (com.byazt.we.hp.hp(this.di)) {
            String strQ = ms.q(this.di);
            String strJx = ms.jx(this.di);
            String strS = ms.s(this.di);
            xh.hp(this.rz, 0);
            xh.hp((View) this.nd, 0);
            if (!TextUtils.isEmpty(strQ)) {
                com.byazt.ws.l.hp(strQ).to(this.hd);
            }
            if (!TextUtils.isEmpty(strJx)) {
                xh.hp(this.zx, strJx);
            }
            if (this.nd == null) {
                return;
            }
            com.byazt.ws.l.hp(strS).type(2).to(new b<Bitmap>() { // from class: com.byazt.oh.a.9
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str, Throwable th) {
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    Bitmap bitmapHp = com.byazt.sq.l.hp(a.this.f24063o, uVar.getResult(), 25);
                    if (bitmapHp == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(a.this.nd.getResources(), bitmapHp);
                    s.hp(new Runnable() { // from class: com.byazt.oh.a.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (a.this.nd != null) {
                                a.this.nd.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    public void w() {
    }

    public boolean wv() {
        return !this.f24053b.contains(l.hp.alwayShowMediaView) || this.f24062n;
    }

    public com.byazt.cw.l xs() {
        return this.f24059l;
    }

    public boolean zy() {
        return this.ns;
    }

    private int eb(int i2) {
        if (this.ec <= 0 || this.sz <= 0) {
            return 0;
        }
        int iJx = xh.jx(this.f24063o, 228.0f);
        int iJx2 = xh.jx(this.f24063o, 160.0f);
        int i3 = (int) (this.sz * ((i2 * 1.0f) / this.ec));
        return i3 > iJx ? iJx : i3 < iJx2 ? iJx2 : i3;
    }

    private void s(int i2) {
        xh.hp(this.f24055e, i2);
        xh.hp(this.ky, i2);
    }

    public void hp(long j2, long j3) {
    }

    public void j() {
        this.f24059l.hp(this);
        ImageView imageView = this.jx;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.a.11
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (a.this.n()) {
                        TextView textView = a.this.f24058k;
                        if (textView == null || textView.getVisibility() != 0) {
                            a aVar = a.this;
                            aVar.wv.hp(aVar, view);
                        }
                    }
                }
            });
        }
    }

    public boolean jx(int i2) {
        return false;
    }

    public void l(boolean z2) {
    }

    public void q() {
        TTProgressBar tTProgressBar = this.f24068v;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(0);
            this.f24068v.setSecondaryProgress(0);
        }
        j(8);
        if (wv()) {
            this.f24059l.setVisibility(8);
        }
        ImageView imageView = this.f24052a;
        if (imageView != null) {
            imageView.setImageDrawable(null);
            this.f24052a.setBackground(null);
        }
        ImageView imageView2 = this.f24064q;
        if (imageView2 != null) {
            imageView2.setImageDrawable(null);
            this.f24064q.setBackground(null);
        }
        j(8);
        xh.hp(this.f24066s, 8);
        xh.hp((View) this.f24064q, 8);
        xh.hp(this.f24055e, 8);
        xh.hp((View) this.gu, 8);
        xh.hp((View) this.jl, 8);
        xh.hp((View) this.zy, 8);
        xh.hp(this.rz, 8);
        xh.hp((View) this.nd, 8);
        v vVar = this.f24054d;
        if (vVar != null) {
            vVar.hp(true);
        }
    }

    public void a(int i2) {
        mp mpVar;
        if (this.gu == null || (mpVar = this.di) == null || mpVar.nq() == null || this.di.nq().hp() == null) {
            return;
        }
        if (i2 == 1) {
            int iJx = xh.jx(this.f24063o, 71.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(iJx, iJx);
            layoutParams.addRule(14);
            this.gu.setLayoutParams(layoutParams);
            this.jl.setLayoutParams(layoutParams);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.bottomMargin = xh.jx(this.f24063o, 16.0f);
            layoutParams2.topMargin = xh.jx(this.f24063o, 8.0f);
            layoutParams2.leftMargin = xh.jx(this.f24063o, 16.0f);
            layoutParams2.rightMargin = xh.jx(this.f24063o, 16.0f);
            layoutParams2.addRule(3, this.gu.getId());
            layoutParams2.addRule(14);
            this.zy.setLayoutParams(layoutParams2);
            this.zy.setTextSize(16.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, xh.jx(this.f24063o, 32.0f));
            layoutParams3.addRule(14);
            layoutParams3.addRule(3, this.zy.getId());
            layoutParams3.leftMargin = xh.jx(this.f24063o, 20.0f);
            layoutParams3.rightMargin = xh.jx(this.f24063o, 20.0f);
            this.f24058k.setPadding(xh.jx(this.f24063o, 36.0f), xh.jx(this.f24063o, 7.0f), xh.jx(this.f24063o, 36.0f), xh.jx(this.f24063o, 8.0f));
            this.f24058k.setLayoutParams(layoutParams3);
            this.f24058k.setEllipsize(TextUtils.TruncateAt.END);
            this.f24058k.setSingleLine(true);
            this.f24058k.setTextSize(14.0f);
            return;
        }
        if (i2 == 2) {
            int iJx2 = xh.jx(this.f24063o, 40.0f);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(iJx2, iJx2);
            layoutParams4.addRule(14);
            this.gu.setLayoutParams(layoutParams4);
            this.jl.setLayoutParams(layoutParams4);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams5.bottomMargin = xh.jx(this.f24063o, 8.0f);
            layoutParams5.topMargin = xh.jx(this.f24063o, 8.0f);
            layoutParams5.addRule(3, this.gu.getId());
            layoutParams5.addRule(14);
            this.zy.setLayoutParams(layoutParams5);
            this.zy.setTextSize(10.0f);
            xh.hp((View) this.f24058k, 8);
            return;
        }
        int iJx3 = xh.jx(this.f24063o, 49.0f);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(iJx3, iJx3);
        layoutParams6.addRule(14);
        this.gu.setLayoutParams(layoutParams6);
        this.jl.setLayoutParams(layoutParams6);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.bottomMargin = xh.jx(this.f24063o, 8.0f);
        layoutParams7.topMargin = xh.jx(this.f24063o, 8.0f);
        layoutParams7.addRule(3, this.gu.getId());
        layoutParams7.addRule(14);
        this.zy.setLayoutParams(layoutParams7);
        this.zy.setTextSize(13.0f);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, xh.jx(this.f24063o, 28.0f));
        layoutParams8.addRule(13);
        layoutParams8.addRule(3, this.zy.getId());
        int iJx4 = xh.jx(this.f24063o, 20.0f);
        int iJx5 = xh.jx(this.f24063o, 25.0f);
        int iJx6 = xh.jx(this.f24063o, 6.0f);
        TextPaint paint = this.f24058k.getPaint();
        Rect rect = new Rect();
        CharSequence text = this.f24058k.getText();
        if (TextUtils.isEmpty(text)) {
            text = "";
        }
        String string = text.toString();
        paint.getTextBounds(string, 0, string.length(), rect);
        this.f24058k.setTextSize(13.0f);
        if (this.f24058k.getWidth() > (iJx5 * 2) + rect.width() && this.f24058k.getHeight() > (iJx6 * 2) + rect.height()) {
            layoutParams8.leftMargin = iJx4;
            layoutParams8.rightMargin = iJx4;
            this.f24058k.setPadding(iJx5, xh.jx(this.f24063o, 5.0f), iJx5, iJx6);
        }
        this.f24058k.setEllipsize(TextUtils.TruncateAt.END);
        this.f24058k.setSingleLine(true);
        this.f24058k.setLayoutParams(layoutParams8);
    }

    @Override // com.byazt.ay.k.hp
    public void hp(View view, boolean z2) {
    }

    public void w(int i2) {
        xh.hp(this.hp, 0);
        com.byazt.cw.l lVar = this.f24059l;
        if (lVar != null) {
            lVar.setVisibility(i2);
        }
    }

    private void l(com.byazt.go.hp hpVar) {
        mp mpVar;
        if (hpVar == null || (mpVar = this.di) == null) {
            return;
        }
        com.byazt.qt.k kVarHp = com.byazt.cwe.hp.hp(Integer.valueOf(mpVar.hashCode()));
        if (kVarHp instanceof cx) {
            ((cx) kVarHp).setAdShowCallBack((com.byazt.ey.jx) hpVar.hp(com.byazt.ey.jx.class));
        }
    }

    public void hp(ViewGroup viewGroup) {
    }

    public void jx(int i2, int i3) {
        this.ec = i2;
        this.sz = i3;
    }

    public void s() {
        if (com.byazt.we.hp.hp(this.di)) {
            xh.hp((View) this.kg, 8);
        } else {
            xh.w(this.f24057j);
        }
    }

    public void hp(String str) {
    }

    public void j(boolean z2) {
        this.hq = z2;
        if (z2) {
            com.byazt.go.hp hpVar = this.dy;
            if (hpVar != null) {
                ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).jx(true);
            }
            com.byazt.go.hp hpVar2 = this.lv;
            if (hpVar2 != null) {
                ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).jx(true);
                return;
            }
            return;
        }
        com.byazt.go.hp hpVar3 = this.dy;
        if (hpVar3 != null) {
            ((com.byazt.sw.hp) hpVar3.hp(com.byazt.sw.hp.class)).jx(true);
            ((com.byazt.sw.hp) this.dy.hp(com.byazt.sw.hp.class)).hp(true);
        }
        com.byazt.go.hp hpVar4 = this.lv;
        if (hpVar4 != null) {
            ((com.byazt.sw.hp) hpVar4.hp(com.byazt.sw.hp.class)).jx(true);
            ((com.byazt.sw.hp) this.lv.hp(com.byazt.sw.hp.class)).hp(true);
        }
    }

    public void jx(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.hp.getParent() == null) {
            viewGroup.addView(this.hp);
        }
        j(0);
    }

    public void w(boolean z2) {
        this.su = z2;
    }

    public void eb() {
        if (com.byazt.we.hp.hp(this.di)) {
            ns();
        } else {
            ky();
        }
        ImageView imageView = this.jx;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        xh.hp((View) this.jx, 8);
    }

    @Override // com.byazt.su.l
    @SuppressLint({"ClickableViewAccessibility"})
    public /* bridge */ /* synthetic */ void hp(mp mpVar, WeakReference weakReference, boolean z2) {
        hp2(mpVar, (WeakReference<Context>) weakReference, z2);
    }

    private void hp(com.byazt.go.hp hpVar) {
        mp mpVar;
        if (hpVar == null || (mpVar = this.di) == null || !com.byazt.we.hp.hp(mpVar)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("click_live_element", "click_live_feed");
        ((com.byazt.ey.hp) hpVar.hp(com.byazt.ey.hp.class)).hp(map);
    }

    private void l(Context context, View view) {
        if (view == null) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(2114387888);
        RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(2114387688);
        if (lv()) {
            xh.hp((View) relativeLayout, 0);
            xh.hp((View) relativeLayout2, 8);
            this.kg = relativeLayout;
        } else {
            xh.hp((View) relativeLayout2, 0);
            xh.hp((View) relativeLayout, 8);
            this.kg = relativeLayout2;
        }
        RelativeLayout relativeLayout3 = this.kg;
        if (relativeLayout3 == null) {
            return;
        }
        this.mp = (RoundImageView) relativeLayout3.findViewById(2114387831);
        this.f24060m = (TextView) this.kg.findViewById(2114387742);
        this.f24056f = (RelativeLayout) this.kg.findViewById(2114387693);
    }

    @Override // com.byazt.su.l
    public View jx() {
        return this.hp;
    }

    public void hp(NativeVideoTsView.hp hpVar) {
        this.as = hpVar;
    }

    public void hp(zy zyVar) {
        hp(zyVar, this.dy);
        hp(zyVar, this.lv);
    }

    private void hp(zy zyVar, com.byazt.go.hp hpVar) {
        ec interactionManager;
        if (hpVar == null) {
            return;
        }
        ((com.byazt.sw.hp) hpVar.hp(com.byazt.sw.hp.class)).hp(zyVar);
        com.byazt.ey.jx jxVar = (com.byazt.ey.jx) hpVar.hp(com.byazt.ey.jx.class);
        if ((zyVar instanceof com.byazt.db.jx) && (interactionManager = ((com.byazt.db.jx) zyVar).getInteractionManager()) != null) {
            interactionManager.hp(jxVar);
        }
    }

    public void j(int i2) {
        this.cx = i2;
        xh.hp(this.hp, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.byazt.tv.TTLottieVideoContainer] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.byazt.tv.UpieVideoView] */
    public void hp(Context context, View view, mp mpVar) {
        SSRenderTextureView sSRenderTextureView;
        System.currentTimeMillis();
        if (view != null) {
            view.setKeepScreenOn(true);
        }
        if (com.byazt.nwu.hp.l(mpVar)) {
            sSRenderTextureView = new TTLottieVideoContainer(this.f24063o);
        } else if (com.byazt.nwu.hp.jx(mpVar)) {
            sSRenderTextureView = new UpieVideoView(context, com.byazt.nwu.hp.q(mpVar));
        } else {
            sSRenderTextureView = new SSRenderTextureView(this.f24063o);
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(sSRenderTextureView, 0, layoutParams);
            if (pu()) {
                view.setBackgroundColor(0);
            } else {
                view.setBackgroundColor(-16777216);
            }
        }
        xh.hp((View) sSRenderTextureView, 8);
        this.f24059l = sSRenderTextureView;
        this.jx = (ImageView) view.findViewById(2114387626);
        this.f24068v = (TTProgressBar) view.findViewById(2114387653);
        this.f24057j = view.findViewById(2114387900);
        this.f24069w = view.findViewById(2114387631);
        this.f24052a = (ImageView) view.findViewById(2114387651);
        this.eb = (TTViewStub) view.findViewById(2114387744);
        this.yr = (TTViewStub) view.findViewById(2114387666);
        this.f24067u = (TTViewStub) view.findViewById(2114387828);
        if (com.byazt.we.hp.hp(mpVar)) {
            l(context, view);
        }
        System.currentTimeMillis();
    }

    private void l(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.f24067u) == null || tTViewStub.getParent() == null || this.ky != null) {
            return;
        }
        this.f24067u.hp();
        this.ky = view.findViewById(2114387674);
        this.xh = (TextView) view.findViewById(2114387868);
        this.f24061ms = (TextView) view.findViewById(2114387842);
    }

    public a(Context context, View view, boolean z2, EnumSet<l.hp> enumSet, mp mpVar, com.byazt.su.jx jxVar, com.byazt.go.hp hpVar) {
        this(context, view, z2, enumSet, mpVar, jxVar, true, hpVar);
    }

    public void l(boolean z2, boolean z3) {
        ImageView imageView = this.jx;
        if (imageView != null) {
            if (z2) {
                com.byazt.ymw.v.hp(this.f24063o, "tt_new_play_video", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            } else {
                com.byazt.ymw.v.hp(this.f24063o, "tt_new_pause_video", imageView, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
        }
    }

    public void l(int i2, int i3) {
        ViewGroup.LayoutParams layoutParams;
        View view = this.hp;
        if (view == null || (layoutParams = view.getLayoutParams()) == null) {
            return;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.width = i2;
        }
        if (i3 == -1 || i3 == -2 || i3 > 0) {
            layoutParams.height = i3;
        }
        this.hp.setLayoutParams(layoutParams);
    }

    public void l(int i2) {
        xh.hp((View) this.f24068v, 0);
        TTProgressBar tTProgressBar = this.f24068v;
        if (tTProgressBar != null) {
            tTProgressBar.setProgress(i2);
        }
    }

    @Override // com.byazt.su.l
    public void l() {
        if (pu()) {
            xh.hp(this.f24057j, 8);
            xh.hp(this.f24069w, 8);
            xh.hp((View) this.f24052a, 8);
            xh.hp((View) this.jx, 8);
            return;
        }
        xh.hp((View) this.kg, 8);
        xh.w(this.f24057j);
        xh.w(this.f24069w);
        ImageView imageView = this.f24052a;
        if (imageView != null) {
            xh.w(imageView);
        }
    }

    public void hp(Context context, View view) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.yr) == null || tTViewStub.getParent() == null || this.rz != null) {
            return;
        }
        this.rz = this.yr.hp();
        this.nd = (RelativeLayout) view.findViewById(2114387953);
        this.hd = (RoundImageView) view.findViewById(2114387958);
        this.zx = (TextView) view.findViewById(2114387926);
        this.f24070y = (TextView) view.findViewById(2114387877);
    }

    public void hp(View view, Context context) {
        TTViewStub tTViewStub;
        if (view == null || context == null || (tTViewStub = this.eb) == null || tTViewStub.getParent() == null || this.f24066s != null) {
            return;
        }
        this.f24066s = this.eb.hp();
        this.eb.setVisibility(0);
        this.f24064q = (ImageView) view.findViewById(2114387804);
        this.f24055e = view.findViewById(2114387961);
        this.gu = (RoundImageView) view.findViewById(2114387664);
        this.jl = (TextView) view.findViewById(2114387957);
        this.zy = (TextView) view.findViewById(2114387764);
        this.f24058k = (TextView) view.findViewById(2114387686);
    }

    public boolean hp(int i2, com.byazt.tw.j jVar, boolean z2) {
        v vVar = this.f24054d;
        return vVar == null || vVar.hp(i2, jVar, z2);
    }

    public void hp(com.byazt.su.hp hpVar) {
        if (hpVar instanceof l) {
            this.wv = (l) hpVar;
            ec();
        }
    }

    public void hp(int i2, int i3) {
        if (i2 == -1) {
            i2 = xh.j(this.f24063o);
        }
        if (i2 <= 0) {
            return;
        }
        this.xs = i2;
        if (!gu() && !e() && !this.f24053b.contains(l.hp.fixedSize)) {
            this.vv = eb(i2);
        } else {
            this.vv = i3;
        }
        l(this.xs, this.vv);
    }

    @Override // com.byazt.su.l
    public void hp() {
        hp(false, this.f24062n);
        di();
    }

    @Override // com.byazt.su.l
    public void hp(boolean z2) {
        this.pu = z2;
    }

    public void hp(final ImageView imageView, String str) {
        if (imageView == null || !com.byazt.nwu.hp.hp(this.di) || com.byazt.nwu.hp.eb(this.di)) {
            return;
        }
        com.byazt.ws.l.hp(str).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.oh.a.12
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(u<Bitmap> uVar) {
                Bitmap result;
                if (uVar == null || (result = uVar.getResult()) == null) {
                    return;
                }
                final Bitmap bitmapHp = com.byazt.sq.l.hp(a.this.f24063o, result, 25);
                s.hp(new Runnable() { // from class: com.byazt.oh.a.12.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (bitmapHp != null) {
                            imageView.setBackground(new BitmapDrawable(bitmapHp));
                        }
                    }
                });
            }
        }, 4);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: hp, reason: avoid collision after fix types in other method */
    public void hp2(mp mpVar, WeakReference<Context> weakReference, boolean z2) {
        String strCu;
        mp mpVar2;
        if (mpVar == null || pu()) {
            return;
        }
        hp(false, this.f24062n);
        if (com.byazt.we.hp.hp(mpVar)) {
            hp(sz.getContext(), this.hp);
            vv();
            return;
        }
        hp(this.hp, sz.getContext());
        View view = this.f24066s;
        if (view != null) {
            xh.hp(view, 0);
        }
        ImageView imageView = this.f24064q;
        if (imageView != null) {
            xh.hp((View) imageView, 0);
        }
        if (ky.j(this.di)) {
            l(this.hp, sz.getContext());
            xh.hp(this.f24055e, 8);
            xh.hp((View) this.f24064q, 0);
            xh.hp(this.ky, 0);
            xh.hp((View) this.xh, 0);
            xh.hp((View) this.f24061ms, 0);
            if (this.f24061ms != null && vv.jx(sz.getContext()) == 0) {
                xh.hp((View) this.f24061ms, 8);
            }
            View view2 = this.f24066s;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.byazt.oh.a.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        com.byazt.su.jx jxVar = a.this.nu;
                        if (jxVar != null) {
                            ((com.byazt.su.hp) jxVar).hp();
                            com.byazt.dc.hp hpVar = a.this.f24065r;
                            if (hpVar != null) {
                                hpVar.hp();
                            }
                        }
                    }
                });
            }
            if (this.f24064q != null && !TextUtils.isEmpty(df.l(this.di))) {
                if (com.byazt.nwu.hp.l(mpVar)) {
                    com.byazt.ws.l.hp(df.l(this.di)).to(this.f24064q);
                    hp(this.f24064q, df.l(this.di));
                } else {
                    com.byazt.xm.l.hp(2147483647L, df.hp(this.di), new l.InterfaceC0408l() { // from class: com.byazt.oh.a.3
                        @Override // com.byazt.xm.l.InterfaceC0408l
                        public void hp(Bitmap bitmap) {
                            if (bitmap == null) {
                                com.byazt.ws.l.hp(df.l(a.this.di)).to(a.this.f24064q);
                                return;
                            }
                            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) a.this.f24064q.getLayoutParams();
                            if (bitmap.getWidth() > bitmap.getHeight()) {
                                float height = (bitmap.getHeight() * xh.j(sz.getContext())) / bitmap.getWidth();
                                layoutParams.width = xh.j(sz.getContext());
                                layoutParams.height = (int) height;
                                layoutParams.addRule(13);
                                a.this.f24064q.setLayoutParams(layoutParams);
                            }
                            a.this.f24064q.setImageBitmap(bitmap);
                        }
                    });
                }
            }
        } else {
            xh.hp(this.f24055e, 0);
            if (this.f24064q != null && !TextUtils.isEmpty(df.l(this.di))) {
                com.byazt.ws.l.hp(df.l(this.di)).to(this.f24064q);
                hp(this.f24064q, df.l(this.di));
            }
            if (ms()) {
                this.f24055e.post(new Runnable() { // from class: com.byazt.oh.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.xh();
                    }
                });
            }
        }
        if (!TextUtils.isEmpty(mpVar.qk())) {
            strCu = mpVar.qk();
        } else if (!TextUtils.isEmpty(mpVar.v_())) {
            strCu = mpVar.v_();
        } else if (!TextUtils.isEmpty(mpVar.cu())) {
            strCu = mpVar.cu();
        } else {
            strCu = "";
        }
        if (this.gu != null && (mpVar2 = this.di) != null && mpVar2.nq() != null && this.di.nq().hp() != null) {
            xh.hp((View) this.gu, 0);
            xh.hp((View) this.jl, 4);
            com.byazt.ws.l.hp(this.di.nq()).to(this.gu);
            if (nu()) {
                this.gu.setOnClickListener(this.lv);
                this.gu.setOnTouchListener(this.lv);
            } else {
                this.gu.setOnClickListener(this.dy);
                this.gu.setOnTouchListener(this.dy);
            }
        } else if (!TextUtils.isEmpty(strCu)) {
            xh.hp((View) this.gu, 4);
            xh.hp((View) this.jl, 0);
            TextView textView = this.jl;
            if (textView != null) {
                textView.setText(strCu.substring(0, 1));
                if (nu()) {
                    this.jl.setOnClickListener(this.lv);
                    this.jl.setOnTouchListener(this.lv);
                } else {
                    this.jl.setOnClickListener(this.dy);
                    this.jl.setOnTouchListener(this.dy);
                }
            }
        }
        if (this.zy != null && !TextUtils.isEmpty(strCu)) {
            this.zy.setText(strCu);
        }
        xh.hp((View) this.zy, 0);
        xh.hp((View) this.f24058k, 0);
        String strLl = mpVar.ll();
        if (TextUtils.isEmpty(strLl)) {
            int iQ = mpVar.q();
            if (iQ == 4) {
                strLl = "立即下载";
            } else if (iQ != 5) {
                strLl = "查看详情";
            } else {
                strLl = "立即拨打";
            }
        }
        TextView textView2 = this.f24058k;
        if (textView2 != null) {
            textView2.setText(strLl);
            this.f24058k.setOnClickListener(this.dy);
            this.f24058k.setOnTouchListener(this.dy);
        }
        TextView textView3 = this.xh;
        if (textView3 != null) {
            textView3.setText(strLl);
            this.xh.setOnClickListener(this.dy);
            this.xh.setOnTouchListener(this.dy);
        }
        if (this.pu) {
            return;
        }
        s(4);
    }

    @Override // com.byazt.cw.hp
    public void hp(SurfaceTexture surfaceTexture, int i2, int i3) {
        this.ns = true;
        if (n()) {
            this.wv.hp(this, surfaceTexture);
        }
    }

    @Override // com.byazt.cw.hp
    public boolean hp(SurfaceTexture surfaceTexture) {
        this.ns = false;
        if (!n()) {
            return true;
        }
        this.wv.l(this, surfaceTexture);
        return true;
    }

    public void hp(boolean z2, boolean z3, boolean z4) {
        xh.hp((View) this.f24068v, 0);
        xh.hp((View) this.jx, (z2 && (xh.j(this.f24057j) && xh.j(this.kg))) ? 0 : 8);
    }

    public void hp(boolean z2, boolean z3) {
        xh.hp((View) this.f24068v, z2 ? 0 : 8);
        xh.hp((View) this.jx, 8);
    }

    public void hp(com.byazt.dc.hp hpVar) {
        this.f24065r = hpVar;
        com.byazt.go.hp hpVar2 = this.dy;
        if (hpVar2 != null) {
            ((com.byazt.sw.hp) hpVar2.hp(com.byazt.sw.hp.class)).hp(hpVar);
        }
    }

    @Override // com.byazt.su.l
    public void hp(Drawable drawable) {
        View view = this.hp;
        if (view != null) {
            view.setBackgroundDrawable(drawable);
        }
    }

    @Override // com.byazt.su.l
    public void hp(int i2) {
        xh.hp((View) this.f24056f, i2);
    }

    public void hp(hp.InterfaceC0317hp interfaceC0317hp) {
        this.qu = interfaceC0317hp;
        com.byazt.gog.jx jxVar = this.ud;
        if (jxVar != null) {
            jxVar.hp(interfaceC0317hp);
        }
    }
}
