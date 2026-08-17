package com.byazt.oh;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.byazt.dnb.gu;
import com.byazt.dnb.jl;
import com.byazt.dth.TTViewStub;
import com.byazt.jo.xs;
import com.byazt.jz.dy;
import com.byazt.jz.s;
import com.byazt.jz.sz;
import com.byazt.nke.b;
import com.byazt.oh.j;
import com.byazt.pg.r;
import com.byazt.qk.NativeExpressVideoView;
import com.byazt.qt.zy;
import com.byazt.su.jx;
import com.byazt.wnd.GifView;
import com.byazt.xci.df;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.byazt.xci.v;
import com.byazt.ymw.e;
import com.byazt.ymw.u;
import com.byazt.ymw.ud;
import com.byazt.ymw.vv;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 2488})
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class NativeVideoTsView extends FrameLayout implements jx.hp, r.hp, j.hp {

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f24022a;
    public volatile boolean an;
    public int as;

    /* renamed from: b, reason: collision with root package name */
    public boolean f24023b;
    public boolean cx;

    /* renamed from: d, reason: collision with root package name */
    public NativeExpressVideoView f24024d;
    public boolean di;
    public TTViewStub dy;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f24025e;
    public boolean ea;
    public FrameLayout eb;
    public j ec;

    /* renamed from: f, reason: collision with root package name */
    public jx f24026f;
    public ImageView gu;
    public ViewGroup hd;
    public boolean hp;
    public long hq;

    /* renamed from: j, reason: collision with root package name */
    public mp f24027j;
    public ImageView jl;
    public final Context jx;

    /* renamed from: k, reason: collision with root package name */
    public boolean f24028k;
    public boolean kg;
    public boolean ky;

    /* renamed from: l, reason: collision with root package name */
    public boolean f24029l;
    public long lv;

    /* renamed from: m, reason: collision with root package name */
    public boolean f24030m;
    public boolean mp;

    /* renamed from: ms, reason: collision with root package name */
    public int f24031ms;

    /* renamed from: n, reason: collision with root package name */
    public String f24032n;
    public View.OnAttachStateChangeListener nd;
    public boolean ns;
    public boolean nu;

    /* renamed from: o, reason: collision with root package name */
    public boolean f24033o;
    public AtomicBoolean pc;
    public jx.InterfaceC0367jx pu;

    /* renamed from: q, reason: collision with root package name */
    public boolean f24034q;
    public boolean qu;

    /* renamed from: r, reason: collision with root package name */
    public long f24035r;
    public boolean rv;
    public ViewTreeObserver rz;

    /* renamed from: s, reason: collision with root package name */
    public boolean f24036s;
    public boolean su;
    public final AtomicBoolean sz;

    /* renamed from: u, reason: collision with root package name */
    public int f24037u;
    public final ud ud;

    /* renamed from: v, reason: collision with root package name */
    public String f24038v;
    public l vq;
    public boolean vv;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.su.jx f24039w;
    public boolean wv;
    public boolean xh;
    public AtomicBoolean xs;

    /* renamed from: y, reason: collision with root package name */
    public com.byazt.ctq.jx f24040y;
    public ViewTreeObserver.OnGlobalLayoutListener yr;
    public com.byazt.ar.eb zx;
    public ImageView zy;

    public interface hp {
        void hp(View view, int i2);
    }

    public interface j {
        void hp(boolean z2, long j2, long j3, long j4, boolean z3, boolean z4);
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 1698})
    public static class jx implements b {

        /* renamed from: a, reason: collision with root package name */
        public int f24046a;
        public int eb;
        public v hp;

        /* renamed from: j, reason: collision with root package name */
        public mp f24047j;
        public WeakReference<GifView> jx = new WeakReference<>(null);

        /* renamed from: l, reason: collision with root package name */
        public WeakReference<ViewGroup> f24048l;

        /* renamed from: w, reason: collision with root package name */
        public String f24049w;

        public jx(v vVar, ViewGroup viewGroup, mp mpVar, String str, int i2, int i3) {
            this.hp = vVar;
            this.f24048l = new WeakReference<>(viewGroup);
            this.f24047j = mpVar;
            this.f24049w = str;
            this.f24046a = i2;
            this.eb = i3;
        }

        @Override // com.byazt.nke.b
        public void onFailed(int i2, String str, Throwable th) {
            u.l("copflg", "fail: ".concat(String.valueOf(str)));
            GifView gifView = this.jx.get();
            if (gifView != null) {
                gifView.setVisibility(8);
            }
            com.byazt.jdb.j.hp(this.f24047j, this.f24049w, 2);
        }

        @Override // com.byazt.nke.b
        public void onSuccess(final com.byazt.nke.u uVar) {
            try {
                ViewGroup viewGroup = this.f24048l.get();
                if (viewGroup == null) {
                    return;
                }
                viewGroup.postDelayed(new Runnable() { // from class: com.byazt.oh.NativeVideoTsView.jx.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            ViewGroup viewGroup2 = (ViewGroup) jx.this.f24048l.get();
                            if (viewGroup2 == null) {
                                return;
                            }
                            Context context = viewGroup2.getContext();
                            jx jxVar = jx.this;
                            jxVar.hp(context, jxVar.hp, uVar, viewGroup2);
                        } catch (Exception unused) {
                        }
                    }
                }, 100L);
            } catch (Exception e2) {
                onFailed(1002, "", e2);
            }
        }

        private int hp() {
            if (this.hp.a() > 0.0d) {
                return (int) (this.eb * this.hp.a());
            }
            return this.eb / 2;
        }

        private void hp(Context context, FrameLayout.LayoutParams layoutParams, int i2) {
            if (this.hp.jx() == 2) {
                layoutParams.gravity = BadgeDrawable.BOTTOM_END;
                layoutParams.rightMargin = i2;
                layoutParams.bottomMargin = i2;
            } else {
                layoutParams.gravity = BadgeDrawable.TOP_START;
                layoutParams.leftMargin = i2;
                layoutParams.topMargin = xh.jx(context, 19.0f);
            }
        }

        private void hp(Object obj, com.byazt.nke.u uVar, GifView gifView) {
            if (obj instanceof byte[]) {
                if (uVar.isGif()) {
                    gifView.hp((byte[]) obj, false);
                    gifView.setRepeatConfig(false);
                } else {
                    gifView.setImageDrawable(com.byazt.zn.u.hp((byte[]) obj, 0));
                }
            }
        }

        private void hp(GifView gifView) {
            if (gifView == null || gifView.getParent() == null) {
                return;
            }
            ((ViewGroup) gifView.getParent()).removeView(gifView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void hp(Context context, v vVar, com.byazt.nke.u uVar, ViewGroup viewGroup) {
            FrameLayout.LayoutParams layoutParams;
            GifView gifView = new GifView(context);
            gifView.setAdjustViewBounds(true);
            gifView.setBackgroundColor(0);
            int iJx = xh.jx(context, 12.0f);
            this.f24046a = viewGroup.getWidth() <= 0 ? this.f24046a : viewGroup.getWidth();
            this.eb = viewGroup.getHeight() <= 0 ? this.eb : viewGroup.getHeight();
            int iHp = hp();
            if (vVar.hp() == 3) {
                if (iHp > xh.jx(context, 88.0f)) {
                    iHp = xh.jx(context, 88.0f);
                }
            } else if (vVar.hp() == 4 && iHp > xh.jx(context, 178.0f)) {
                iHp = xh.jx(context, 178.0f);
            }
            int i2 = this.f24046a - iJx;
            int iEb = (int) (iHp * vVar.eb());
            if (iEb > i2 && iEb > 0 && i2 > 0) {
                layoutParams = new FrameLayout.LayoutParams(i2, -2);
            } else {
                layoutParams = new FrameLayout.LayoutParams(-2, iHp);
            }
            hp(context, layoutParams, iJx);
            gifView.setVisibility(0);
            hp(uVar.getResult(), uVar, gifView);
            hp(this.jx.get());
            viewGroup.addView(gifView, layoutParams);
            this.jx = new WeakReference<>(gifView);
            com.byazt.jdb.j.hp(this.f24047j, this.f24049w, 0);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO, 1143})
    public class l implements Runnable {

        /* renamed from: l, reason: collision with root package name */
        public volatile boolean f24051l;

        private l() {
        }

        public Runnable hp(boolean z2) {
            this.f24051l = z2;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeVideoTsView.this.l(this.f24051l);
        }
    }

    public NativeVideoTsView(Context context, mp mpVar) {
        this(context, mpVar, false, false);
    }

    private void b() {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null) {
            return;
        }
        jxVar.j(this.hp);
        ((com.byazt.oh.j) this.f24039w).hp((j.hp) this);
        this.f24039w.hp(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cx() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        ViewTreeObserver viewTreeObserver = this.rz;
        if (viewTreeObserver == null || (onGlobalLayoutListener = this.yr) == null) {
            return;
        }
        viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    private boolean d() {
        View view;
        if (!jl.hp(this.f24027j)) {
            view = this;
        } else if (hd.hp(this.f24027j) == 2) {
            view = this.f24024d;
        } else {
            ViewParent parent = getParent();
            view = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        }
        return dy.l(view, com.byazt.rdt.jx.hp().hp(50, this.f24027j), 5);
    }

    private boolean di() {
        return TextUtils.equals(this.f24038v, "splash_ad") || TextUtils.equals(this.f24038v, "cache_splash_ad");
    }

    private boolean dy() {
        return 2 == sz.l().a(ky.zy(this.f24027j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.ctq.jx getKvCache() {
        mp mpVar = this.f24027j;
        return com.byazt.ry.j.hp(mpVar == null ? null : mpVar.xq(), "sp_multi_native_video_data");
    }

    private void hq() {
        if (xs()) {
            return;
        }
        if (this.f24040y == null) {
            this.f24040y = getKvCache();
        }
        this.f24040y.put("key_video_isfromvideodetailpage", false);
        this.f24040y.put("key_video_is_from_detail_page", false);
    }

    private boolean lv() {
        return 5 == sz.l().a(ky.zy(this.f24027j));
    }

    private void n() {
        addView(hp(this.jx));
        H_();
    }

    private void ns() {
        if (!(this instanceof NativeDrawVideoTsView) || this.xs.get() || s.u().kg() == null) {
            return;
        }
        this.zy.setImageBitmap(s.u().kg());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.zy.getLayoutParams();
        int iJx = xh.jx(getContext(), this.f24037u);
        layoutParams.width = iJx;
        layoutParams.height = iJx;
        this.zy.setLayoutParams(layoutParams);
        this.xs.set(true);
    }

    private void nu() {
        if (this.f24040y == null) {
            this.f24040y = getKvCache();
        }
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null || xs() || !this.f24040y.get("key_video_is_update_flag", false)) {
            return;
        }
        boolean z2 = this.f24040y.get("key_native_video_complete", false);
        long j2 = this.f24040y.get("key_video_current_play_position", -1L);
        long j3 = this.f24040y.get("key_video_total_play_duration", jxVar.k() + jxVar.jl());
        long j4 = this.f24040y.get("key_video_duration", jxVar.k());
        jxVar.jx(z2);
        if (z2) {
            jxVar.l(j4);
        } else {
            jxVar.l(j2);
        }
        jxVar.jx(j3);
        jxVar.j(j4);
        this.f24040y.put("key_video_is_update_flag", false);
    }

    private void o() throws JSONException {
        boolean zD = d();
        if (this.an && zD) {
            com.byazt.su.jx jxVar = this.f24039w;
            if (jxVar instanceof com.byazt.oh.j) {
                ((com.byazt.oh.j) jxVar).hq();
            }
            this.an = false;
        } else {
            if (this.vq == null) {
                this.vq = new l();
            } else {
                e.l().removeCallbacks(this.vq);
            }
            this.vq.hp(zD);
            e.l().post(this.vq);
        }
        this.ud.sendEmptyMessageDelayed(1, this.lv);
    }

    private void r() {
        xh.w(this.jl);
        xh.w(this.f24025e);
    }

    private void s() {
        hp(0L, 0);
        this.pu = null;
    }

    private void ud() {
        if (this.hd == null) {
            return;
        }
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) parent;
                viewGroup.setClipChildren(false);
                if (viewGroup.hashCode() == this.hd.hashCode()) {
                    this.hd.hashCode();
                    return;
                }
            }
        }
    }

    private boolean wv() {
        if (xs()) {
            return false;
        }
        if (this.f24040y == null) {
            this.f24040y = getKvCache();
        }
        return this.f24040y.get("key_video_is_from_detail_page", false) || this.f24040y.get("key_video_isfromvideodetailpage", false);
    }

    public void H_() {
        this.f24039w = hp(this.jx, this.eb, this.f24027j, this.f24038v, !xs(), this.f24023b, this.di);
        b();
        this.nd = new View.OnAttachStateChangeListener() { // from class: com.byazt.oh.NativeVideoTsView.3
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                nativeVideoTsView.rz = nativeVideoTsView.f24022a.getViewTreeObserver();
                if (NativeVideoTsView.this.rz == null || NativeVideoTsView.this.yr == null) {
                    return;
                }
                NativeVideoTsView.this.rz.addOnGlobalLayoutListener(NativeVideoTsView.this.yr);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                NativeVideoTsView.this.cx();
            }
        };
        this.yr = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.byazt.oh.NativeVideoTsView.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int width = NativeVideoTsView.this.f24022a.getWidth();
                int height = NativeVideoTsView.this.f24022a.getHeight();
                ((com.byazt.oh.j) NativeVideoTsView.this.f24039w).hp(width, height);
                NativeVideoTsView.this.cx();
                NativeVideoTsView.this.l(width, height);
            }
        };
    }

    @Override // com.byazt.oh.j.hp
    public void I_() {
        xh.hp((View) this.f24025e, 8);
        jx.InterfaceC0367jx interfaceC0367jx = this.pu;
        if (interfaceC0367jx != null && !this.qu) {
            this.qu = true;
            interfaceC0367jx.onVideoAdStartPlay();
        }
        xh.hp((View) this.f24025e, 8);
        com.byazt.ar.eb ebVar = this.zx;
        if (ebVar != null) {
            ebVar.hp();
        }
    }

    public boolean e() {
        return this.su;
    }

    public void eb() {
        mp mpVar = this.f24027j;
        if (mpVar == null) {
            return;
        }
        int iA = sz.l().a(ky.zy(mpVar));
        if (iA == 1) {
            this.hp = vv.j(this.jx);
        } else if (iA == 2) {
            this.hp = vv.w(this.jx) || vv.j(this.jx) || vv.a(this.jx) || vv.jx(sz.getContext()) == 1;
        } else if (iA == 3) {
            this.hp = false;
        } else if (iA == 4) {
            this.vv = true;
        } else if (iA == 5) {
            this.hp = vv.j(this.jx) || vv.a(this.jx);
        }
        if (this.f24029l) {
            this.f24036s = false;
        } else {
            this.f24036s = this.f24027j.dh() == 1;
        }
        if ("splash_ad".equals(this.f24038v)) {
            this.hp = true;
            this.f24036s = true;
        }
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.j(this.hp);
        }
    }

    public void ec() {
        if (this.f24039w != null) {
            r();
            this.f24039w.l();
        }
    }

    public com.byazt.su.jx getNativeVideoController() {
        return this.f24039w;
    }

    public boolean getVideoError() {
        return this.cx;
    }

    public void gu() {
        j jVar;
        com.byazt.su.jx jxVar;
        if (this.f24029l || (jVar = this.ec) == null || (jxVar = this.f24039w) == null) {
            return;
        }
        jVar.hp(jxVar.sz(), this.f24039w.k(), this.f24039w.k() + this.f24039w.jl(), this.f24039w.gu(), this.hp, this.f24036s);
    }

    @Override // com.byazt.pg.r.hp
    public void handleMsg(Message message) throws JSONException {
        if (message.what != 1) {
            return;
        }
        o();
    }

    public void jl() {
        TTViewStub tTViewStub;
        if (di() || this.jx == null || (tTViewStub = this.dy) == null || tTViewStub.getParent() == null || this.f24027j == null || this.f24025e != null) {
            return;
        }
        if (this.dy.getParent() != null && (this.dy.getParent() instanceof ViewGroup)) {
            this.f24025e = (RelativeLayout) this.dy.hp();
        }
        this.gu = (ImageView) findViewById(2114387954);
        ImageView imageView = (ImageView) findViewById(2114387847);
        this.zy = imageView;
        if (this.f24028k) {
            xh.hp((View) imageView, 0);
        }
        if (!TextUtils.isEmpty(df.l(this.f24027j))) {
            com.byazt.ws.l.hp(df.l(this.f24027j)).to(this.gu);
            hp(this.gu, df.l(this.f24027j));
        }
        ns();
    }

    public void k() {
        if (!this.sz.get()) {
            this.sz.set(true);
            if (this.f24039w != null) {
                ud udVar = this.ud;
                if (udVar != null) {
                    udVar.removeCallbacksAndMessages(null);
                }
                this.f24039w.hp(true, 3);
            }
        }
        this.pc.set(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onAttachedToWindow();
        if (this.kg) {
            ViewGroup viewGroup = this.f24022a;
            if (viewGroup != null && (onAttachStateChangeListener = this.nd) != null) {
                viewGroup.addOnAttachStateChangeListener(onAttachStateChangeListener);
            }
            j();
            com.byazt.mb.s.hp(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        View.OnAttachStateChangeListener onAttachStateChangeListener;
        super.onDetachedFromWindow();
        ViewGroup viewGroup = this.f24022a;
        if (viewGroup != null && (onAttachStateChangeListener = this.nd) != null) {
            viewGroup.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        w();
        this.f24026f = null;
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        if (this.kg) {
            j();
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        gu();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        w();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z2) {
        com.byazt.su.jx jxVar;
        com.byazt.su.jx jxVar2;
        com.byazt.su.jx jxVar3;
        com.byazt.su.jx jxVar4;
        super.onWindowFocusChanged(z2);
        if (this.kg) {
            this.ky = z2;
            nu();
            if (wv() && (jxVar4 = this.f24039w) != null && jxVar4.sz()) {
                hq();
                xh.hp((View) this.f24025e, 8);
                j(true);
                s();
                return;
            }
            eb();
            if (!xs() && v() && (jxVar2 = this.f24039w) != null && !jxVar2.u()) {
                if (this.ud != null) {
                    if (z2 && (jxVar3 = this.f24039w) != null && !jxVar3.sz()) {
                        this.ud.obtainMessage(1).sendToTarget();
                        return;
                    } else {
                        this.ud.removeMessages(1);
                        l(false);
                        return;
                    }
                }
                return;
            }
            if (v()) {
                return;
            }
            if (!z2 && (jxVar = this.f24039w) != null && jxVar.xs() != null && this.f24039w.xs().isPlaying()) {
                this.ud.removeMessages(1);
                l(false);
            } else if (z2) {
                this.ud.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i2) {
        com.byazt.su.jx jxVar;
        com.byazt.su.jx jxVar2;
        com.byazt.su.jx jxVar3;
        super.onWindowVisibilityChanged(i2);
        if (this.kg) {
            ud();
            nu();
            if (this.rv) {
                this.rv = i2 == 0;
            }
            if (wv() && (jxVar3 = this.f24039w) != null && jxVar3.sz()) {
                hq();
                xh.hp((View) this.f24025e, 8);
                j(true);
                s();
                return;
            }
            eb();
            if (xs() || !v() || (jxVar = this.f24039w) == null || jxVar.u() || this.f24027j == null) {
                return;
            }
            boolean zL = dy.l(this, com.byazt.rdt.jx.hp().hp(20, this.f24027j), 5);
            isShown();
            if (this.wv && df.v(this.f24027j) != null && zL) {
                com.byazt.tw.a aVarHp = df.hp(4, this.f24027j);
                aVarHp.setCid(this.f24027j.j());
                aVarHp.setWidth(this.f24022a.getWidth());
                aVarHp.setHeight(this.f24022a.getHeight());
                aVarHp.setLogExtra(this.f24027j.w_());
                aVarHp.setCurrent(this.hq);
                aVarHp.setQuiet(u());
                hp(aVarHp);
                xh.hp((View) this.f24025e, 8);
            } else {
                try {
                    StringBuilder sb = new StringBuilder("onWindowVisibilityChanged materialMeta.getVideo() is null ");
                    sb.append(this.f24025e == null);
                    sb.append(" ");
                    sb.append(this.rv);
                    sb.append(" ");
                    sb.append(hashCode());
                    u.l("NativeVideoAdView", sb.toString());
                    if (this.rv && this.f24025e == null) {
                        jl();
                        xh.hp((View) this.f24025e, 0);
                    }
                } catch (Throwable unused) {
                }
            }
            if (i2 != 0 || !this.ky || this.ud == null || (jxVar2 = this.f24039w) == null || jxVar2.sz()) {
                return;
            }
            this.ud.obtainMessage(1).sendToTarget();
        }
    }

    @Override // com.byazt.oh.j.hp
    public void q() {
        this.an = true;
        if (this.ud.hasMessages(1)) {
            return;
        }
        this.ud.sendEmptyMessage(1);
    }

    public void setAdCreativeClickListener(hp hpVar) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            ((com.byazt.oh.j) jxVar).hp(hpVar);
        }
    }

    public void setComplete(boolean z2) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.jx(z2);
        }
    }

    public void setControllerStatusCallBack(j jVar) {
        this.ec = jVar;
    }

    public void setDrawVideoListener(com.byazt.dc.hp hpVar) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            ((com.byazt.oh.j) jxVar).hp(hpVar);
        }
    }

    public void setEasyPlayableEventSender(com.byazt.ar.eb ebVar) {
        this.zx = ebVar;
    }

    public void setEnableAutoCheck(boolean z2) {
        this.kg = z2;
    }

    public void setEnableBlur(boolean z2) {
        this.f24034q = z2;
    }

    public void setIsAutoPlay(boolean z2) {
        mp mpVar;
        if (this.nu || (mpVar = this.f24027j) == null) {
            return;
        }
        int iA = sz.l().a(ky.zy(mpVar));
        if (z2 && iA != 4 && (!vv.w(this.jx) ? !(!vv.a(this.jx) ? vv.j(this.jx) : dy() || lv()) : !dy())) {
            z2 = false;
        }
        this.hp = z2;
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.j(z2);
        }
        if (this.hp) {
            xh.hp((View) this.f24025e, 8);
        } else {
            jl();
            RelativeLayout relativeLayout = this.f24025e;
            if (relativeLayout != null) {
                xh.hp((View) relativeLayout, 0);
                if (df.v(this.f24027j) != null) {
                    com.byazt.ws.l.hp(df.l(this.f24027j)).to(this.gu);
                    hp(this.gu, df.l(this.f24027j));
                } else {
                    u.l("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
                }
            }
        }
        this.nu = true;
    }

    public void setIsQuiet(boolean z2) {
        this.f24036s = z2;
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.l(z2);
        }
    }

    public void setMaterialMeta(mp mpVar) {
        this.f24027j = mpVar;
    }

    public void setNativeExpressVideoView(NativeExpressVideoView nativeExpressVideoView) {
        this.f24024d = nativeExpressVideoView;
    }

    public void setNativeRenderAd(boolean z2) {
        this.su = z2;
    }

    public void setNativeVideoAdListener(jx.hp hpVar) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.hp(hpVar);
        }
    }

    public void setNativeVideoController(com.byazt.su.jx jxVar) {
        this.f24039w = jxVar;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z2) {
        this.f24028k = z2;
    }

    public void setVideoAdClickListenerTTNativeAd(zy zyVar) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            ((com.byazt.oh.j) jxVar).hp(zyVar);
        }
    }

    public void setVideoAdInteractionListener(jx.InterfaceC0367jx interfaceC0367jx) {
        this.pu = interfaceC0367jx;
    }

    public void setVideoAdLoadListener(jx.j jVar) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.hp(jVar);
        }
    }

    public void setVideoCacheUrl(String str) {
        this.f24032n = str;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        if (i2 == 4 || i2 == 8) {
            k();
        }
    }

    public void sz() {
        ud udVar = this.ud;
        if (udVar != null) {
            udVar.removeCallbacksAndMessages(null);
        }
    }

    public boolean u() {
        return this.f24036s;
    }

    public boolean v() {
        return this.hp;
    }

    public void vv() {
        com.byazt.su.l lVarVv;
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null || (lVarVv = jxVar.vv()) == null) {
            return;
        }
        lVarVv.hp();
        View viewJx = lVarVv.jx();
        if (viewJx != null) {
            viewJx.setVisibility(8);
            if (viewJx.getParent() != null) {
                ((ViewGroup) viewJx.getParent()).removeView(viewJx);
            }
        }
    }

    public boolean xs() {
        return this.f24029l;
    }

    public boolean zy() {
        mp mpVar = this.f24027j;
        return mpVar != null && mpVar.ja() == 4 && hd.hp(this.f24027j) == 1 && !TextUtils.equals("draw_ad", this.f24038v);
    }

    public NativeVideoTsView(Context context) {
        this(context, null, false, false);
    }

    public void j() {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null) {
            H_();
        } else if ((jxVar instanceof com.byazt.oh.j) && !xs()) {
            ((com.byazt.oh.j) this.f24039w).as();
        }
        if (this.f24039w == null || !this.sz.get()) {
            return;
        }
        this.sz.set(false);
        eb();
        if (!v()) {
            if (this.f24039w.sz()) {
                j(true);
                return;
            } else {
                jl();
                xh.hp((View) this.f24025e, 0);
                return;
            }
        }
        ImageView imageView = this.jl;
        if (imageView != null) {
            xh.hp((View) imageView, 8);
        }
        if (df.v(this.f24027j) == null) {
            u.l("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
            return;
        }
        com.byazt.tw.a aVarHp = df.hp(4, this.f24027j);
        aVarHp.setCid(this.f24027j.j());
        aVarHp.setWidth(this.f24022a.getWidth());
        aVarHp.setHeight(this.f24022a.getHeight());
        aVarHp.setLogExtra(this.f24027j.w_());
        aVarHp.setCurrent(0L);
        aVarHp.setAudio(jl.hp(this.f24027j));
        aVarHp.setQuiet(u());
        if (di()) {
            String splashCacheDir = gu.hp(0).getSplashCacheDir();
            if (this.f24027j.qq()) {
                splashCacheDir = gu.hp();
            }
            aVarHp.setCacheParentDir(splashCacheDir);
        }
        hp(aVarHp);
        this.f24039w.jx(false);
    }

    public void jx(boolean z2) {
        com.byazt.ar.eb ebVar = this.zx;
        if (ebVar != null) {
            ebVar.hp(z2);
        }
    }

    @Override // com.byazt.su.jx.hp
    public void l(long j2, int i2) {
        this.cx = true;
    }

    public void w() {
        this.ec = null;
        vv();
        k();
    }

    public NativeVideoTsView(Context context, mp mpVar, boolean z2, boolean z3) {
        this(context, mpVar, z2, z3, com.byazt.ih.l.AD_TAG_FEED, false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2, int i3) {
        if (xs()) {
            return;
        }
        mp mpVar = this.f24027j;
        v vVarKe = mpVar == null ? null : mpVar.ke();
        if (vVarKe != null && i3 > 0) {
            if (!vVarKe.s()) {
                com.byazt.jdb.j.hp(this.f24027j, this.f24038v, 1);
                return;
            }
            this.f24031ms = i2;
            this.as = i3;
            if (this.f24026f == null) {
                this.f24026f = new jx(vVarKe, this.f24022a, this.f24027j, this.f24038v, i2, i3);
            }
            com.byazt.ws.l.hp(vVarKe.w()).type(3).config(Bitmap.Config.RGB_565).to(this.f24026f);
        }
    }

    public NativeVideoTsView(Context context, mp mpVar, String str, boolean z2, boolean z3) {
        this(context, mpVar, false, false, str, z2, z3);
    }

    public NativeVideoTsView(Context context, mp mpVar, boolean z2, boolean z3, String str, boolean z4, boolean z5) {
        super(context);
        this.hp = true;
        this.f24036s = true;
        this.f24029l = false;
        this.ns = false;
        this.cx = false;
        this.f24023b = false;
        this.di = true;
        this.f24033o = false;
        this.f24028k = true;
        this.f24038v = com.byazt.ih.l.AD_TAG_FEED;
        this.f24037u = 50;
        this.wv = true;
        this.xs = new AtomicBoolean(false);
        this.nu = false;
        this.vv = false;
        this.lv = 50L;
        this.f24035r = 500L;
        this.ky = true;
        this.xh = false;
        this.kg = true;
        this.mp = true;
        this.ea = false;
        this.sz = new AtomicBoolean(false);
        this.rv = true;
        this.an = false;
        this.pc = new AtomicBoolean(false);
        this.f24038v = str;
        this.jx = context;
        this.f24027j = mpVar;
        this.f24029l = z2;
        this.f24033o = z3;
        this.f24023b = z4;
        this.di = z5;
        this.ud = new ud(com.byazt.dnb.s.l(), this);
        setContentDescription("NativeVideoAdView");
        eb();
        n();
        com.byazt.dnb.s.l(new Runnable() { // from class: com.byazt.oh.NativeVideoTsView.1
            @Override // java.lang.Runnable
            public void run() {
                if (NativeVideoTsView.this.f24040y == null) {
                    NativeVideoTsView nativeVideoTsView = NativeVideoTsView.this;
                    nativeVideoTsView.f24040y = nativeVideoTsView.getKvCache();
                }
            }
        });
    }

    @Override // com.byazt.su.jx.hp
    public void hp(long j2, int i2) {
        this.ea = true;
        jx.InterfaceC0367jx interfaceC0367jx = this.pu;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onVideoComplete();
        }
    }

    @Override // com.byazt.su.jx.hp
    public void hp() {
        if (this.pu == null || !di()) {
            return;
        }
        this.pu.onVideoComplete();
    }

    @Override // com.byazt.su.jx.hp
    public void hp(long j2, long j3) {
        com.byazt.su.jx jxVar;
        if (j2 != j3) {
            this.ea = false;
        }
        jx.InterfaceC0367jx interfaceC0367jx = this.pu;
        if (interfaceC0367jx != null) {
            interfaceC0367jx.onProgressUpdate(j2, j3);
        }
        if (d() || (jxVar = this.f24039w) == null) {
            return;
        }
        jxVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z2) {
        if (this.ea || this.ns == z2) {
            return;
        }
        if (!z2) {
            e.l().removeCallbacks(this.vq);
        }
        this.ns = z2;
        jx(z2);
        if (this.f24027j == null || this.f24039w == null) {
            return;
        }
        boolean zWv = wv();
        hq();
        if (zWv && this.f24039w.sz()) {
            j(true);
            s();
            return;
        }
        if (z2 && !this.f24039w.sz() && !this.f24039w.u()) {
            if (this.f24039w.xs() != null && this.f24039w.xs().isPaused()) {
                if (this.hp) {
                    if ("ALP-AL00".equals(((com.byazt.pg.jl) com.byazt.ym.j.getService("device_info_new")).getDeviceModel())) {
                        this.f24039w.s();
                    } else {
                        ((com.byazt.oh.j) this.f24039w).a(zWv);
                    }
                    jx.InterfaceC0367jx interfaceC0367jx = this.pu;
                    if (interfaceC0367jx != null) {
                        interfaceC0367jx.onVideoAdContinuePlay();
                        return;
                    }
                    return;
                }
                this.ns = false;
                return;
            }
            if (this.hp && this.f24039w.xs() == null) {
                if (!this.sz.get()) {
                    this.sz.set(true);
                }
                this.pc.set(false);
                j();
                return;
            }
            return;
        }
        if (this.f24039w.xs() == null || !this.f24039w.xs().isPlaying()) {
            return;
        }
        this.f24039w.a();
        jx.InterfaceC0367jx interfaceC0367jx2 = this.pu;
        if (interfaceC0367jx2 != null) {
            interfaceC0367jx2.onVideoAdPaused();
        }
    }

    private View hp(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setId(2114387848);
        layoutParams.gravity = 17;
        frameLayout.setVisibility(8);
        this.f24022a = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        frameLayout2.setId(2114387756);
        layoutParams2.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout.addView(frameLayout2);
        this.eb = frameLayout2;
        TTViewStub tTViewStub = new TTViewStub(context, new com.byazt.kgm.w());
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        tTViewStub.setId(2114387607);
        tTViewStub.setLayoutParams(layoutParams3);
        frameLayout.addView(tTViewStub);
        this.dy = tTViewStub;
        return frameLayout;
    }

    public void j(boolean z2) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            jxVar.jx(z2);
            com.byazt.su.l lVarVv = this.f24039w.vv();
            if (lVarVv != null) {
                lVarVv.l();
                View viewJx = lVarVv.jx();
                if (viewJx != null) {
                    if (viewJx.getParent() != null) {
                        ((ViewGroup) viewJx.getParent()).removeView(viewJx);
                    }
                    viewJx.setVisibility(0);
                    addView(viewJx);
                    lVarVv.hp(this.f24027j, new WeakReference<>(this.jx), false);
                }
            }
        }
    }

    public void hp(final ImageView imageView, String str) {
        if (imageView == null || !com.byazt.nwu.hp.hp(this.f24027j) || com.byazt.nwu.hp.eb(this.f24027j)) {
            return;
        }
        com.byazt.ws.l.hp(str).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.oh.NativeVideoTsView.2
            @Override // com.byazt.nke.b
            public void onFailed(int i2, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u<Bitmap> uVar) {
                Bitmap result;
                if (uVar == null || (result = uVar.getResult()) == null) {
                    return;
                }
                final Bitmap bitmapHp = com.byazt.sq.l.hp(NativeVideoTsView.this.jx, result, 25);
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.oh.NativeVideoTsView.2.1
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

    public void hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.dy.getParent() != null && (this.dy.getParent() instanceof ViewGroup)) {
            this.f24025e = (RelativeLayout) this.dy.hp();
        }
        ImageView imageView = (ImageView) findViewById(2114387954);
        this.gu = imageView;
        imageView.setImageDrawable(null);
        this.zy = (ImageView) findViewById(2114387847);
        com.byazt.ws.l.hp(str).to(this.gu);
        hp(this.gu, str);
        xh.hp((View) this.f24025e, 0);
    }

    public void l(boolean z2, boolean z3) {
        this.mp = z2;
        this.f24030m = z3;
    }

    public void l(int i2) {
        if (vv.jx(sz.getContext()) == 0) {
            return;
        }
        if (this.f24039w.xs() != null) {
            if (this.f24039w.xs().isPlaying() && i2 == 2) {
                l(false);
                ud udVar = this.ud;
                if (udVar != null) {
                    udVar.removeMessages(1);
                }
                hp(true);
                return;
            }
            if (this.f24039w.xs().isPaused() && i2 == 3) {
                this.hp = true;
                l(true);
                eb();
                ud udVar2 = this.ud;
                if (udVar2 != null) {
                    udVar2.sendEmptyMessageDelayed(1, this.lv);
                }
                hp(false);
                return;
            }
        }
        if (v() || this.pc.get()) {
            return;
        }
        this.pc.set(true);
        if (df.v(this.f24027j) != null) {
            r();
            com.byazt.tw.a aVarHp = df.hp(4, this.f24027j);
            aVarHp.setCid(this.f24027j.j());
            aVarHp.setWidth(this.f24022a.getWidth());
            aVarHp.setHeight(this.f24022a.getHeight());
            aVarHp.setLogExtra(this.f24027j.w_());
            aVarHp.setCurrent(this.hq);
            aVarHp.setQuiet(u());
            aVarHp.setCacheParentDir(gu.hp(this.f24027j.qe()).getOtherCacheDir());
            hp(aVarHp);
        } else {
            u.l("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        ud udVar3 = this.ud;
        if (udVar3 != null) {
            udVar3.sendEmptyMessageDelayed(1, this.lv);
        }
        hp(false);
    }

    public com.byazt.su.jx hp(Context context, ViewGroup viewGroup, mp mpVar, String str, boolean z2, boolean z3, boolean z4) {
        return new com.byazt.oh.j(context, viewGroup, mpVar, str, z2, z3, z4);
    }

    public boolean hp(long j2, boolean z2, boolean z3) {
        boolean zHp = false;
        this.f24022a.setVisibility(0);
        if (this.f24039w == null) {
            this.f24039w = new com.byazt.oh.j(this.jx, this.eb, this.f24027j, this.f24038v, this.f24023b, this.di);
            b();
        }
        this.hq = j2;
        if (xs()) {
            this.f24039w.hp(false);
            if (df.v(this.f24027j) != null) {
                com.byazt.tw.a aVarHp = df.hp(4, this.f24027j);
                aVarHp.setCid(this.f24027j.j());
                aVarHp.setWidth(this.f24022a.getWidth());
                aVarHp.setHeight(this.f24022a.getHeight());
                aVarHp.setLogExtra(this.f24027j.w_());
                aVarHp.setCurrent(j2);
                aVarHp.setQuiet(u());
                if (z3) {
                    this.f24039w.l(aVarHp);
                    return true;
                }
                zHp = hp(aVarHp);
            }
            if (((j2 > 0 && !z2 && !z3) || (j2 > 0 && z2 && !this.f24033o)) && (this.f24039w instanceof com.byazt.fbd.hp)) {
                xs.hp hpVar = new xs.hp();
                hpVar.hp(this.f24039w.gu());
                hpVar.jx(this.f24039w.k());
                hpVar.l(this.f24039w.jl());
                com.byazt.su.jx jxVar = this.f24039w;
                ((com.byazt.fbd.hp) jxVar).l(jxVar.vv(), hpVar);
            }
            return zHp;
        }
        if (zy() || this.f24034q) {
            hp(this.jx, 25, df.l(this.f24027j));
        }
        return true;
    }

    public boolean hp(com.byazt.tw.a aVar) {
        if (this.f24039w == null) {
            return false;
        }
        this.wv = false;
        this.lv = this.f24035r;
        if (this.f24030m) {
            aVar.setQuiet(this.mp);
        }
        return this.f24039w.hp(aVar);
    }

    public void l() {
        if (vv.jx(sz.getContext()) == 0) {
            return;
        }
        if (this.f24039w.xs() != null) {
            if (this.f24039w.xs().isPlaying()) {
                l(false);
                ud udVar = this.ud;
                if (udVar != null) {
                    udVar.removeMessages(1);
                }
                hp(true);
                return;
            }
            if (this.f24039w.xs().isPaused()) {
                this.hp = true;
                l(true);
                eb();
                ud udVar2 = this.ud;
                if (udVar2 != null) {
                    udVar2.sendEmptyMessageDelayed(1, this.lv);
                }
                hp(false);
                return;
            }
        }
        if (v() || this.pc.get()) {
            return;
        }
        this.pc.set(true);
        if (df.v(this.f24027j) != null) {
            r();
            com.byazt.tw.a aVarHp = df.hp(4, this.f24027j);
            aVarHp.setCid(this.f24027j.j());
            aVarHp.setWidth(this.f24022a.getWidth());
            aVarHp.setHeight(this.f24022a.getHeight());
            aVarHp.setLogExtra(this.f24027j.w_());
            aVarHp.setCurrent(this.hq);
            aVarHp.setQuiet(u());
            hp(aVarHp);
        } else {
            u.l("NativeVideoAdView", "attachTask materialMeta.getVideo() is null !!");
        }
        ud udVar3 = this.ud;
        if (udVar3 != null) {
            udVar3.sendEmptyMessageDelayed(1, this.lv);
        }
        hp(false);
    }

    @Override // com.byazt.oh.j.hp
    public void hp(int i2) {
        eb();
    }

    public void hp(boolean z2) {
        if (this.jl == null) {
            this.jl = new ImageView(getContext());
            if (s.u().kg() != null) {
                this.jl.setImageBitmap(s.u().kg());
            } else {
                com.byazt.ymw.v.hp(sz.getContext(), "tt_new_play_video", this.jl, MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME);
            }
            this.jl.setScaleType(ImageView.ScaleType.FIT_XY);
            int iJx = xh.jx(getContext(), this.f24037u);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iJx, iJx);
            layoutParams.gravity = 17;
            this.f24022a.addView(this.jl, layoutParams);
        }
        if (z2) {
            this.jl.setVisibility(0);
        } else {
            this.jl.setVisibility(8);
        }
    }

    public void hp(int i2, int i3) {
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar != null) {
            ((com.byazt.oh.j) jxVar).hp(i2, i3);
        }
    }

    public void hp(final Context context, final int i2, String str) {
        final com.byazt.su.l lVarVv;
        com.byazt.su.jx jxVar = this.f24039w;
        if (jxVar == null || (lVarVv = jxVar.vv()) == null) {
            return;
        }
        com.byazt.ws.l.hp(str).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.oh.NativeVideoTsView.5
            @Override // com.byazt.nke.b
            public void onFailed(int i3, String str2, Throwable th) {
            }

            @Override // com.byazt.nke.b
            public void onSuccess(com.byazt.nke.u<Bitmap> uVar) {
                Bitmap bitmapHp = com.byazt.sq.l.hp(context, uVar.getResult(), i2);
                if (bitmapHp == null) {
                    return;
                }
                final BitmapDrawable bitmapDrawable = new BitmapDrawable(NativeVideoTsView.this.getResources(), bitmapHp);
                com.byazt.dnb.s.hp(new Runnable() { // from class: com.byazt.oh.NativeVideoTsView.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.byazt.su.l lVar = lVarVv;
                        if (lVar != null) {
                            lVar.hp(bitmapDrawable);
                        }
                    }
                });
            }
        }, 4);
    }
}
