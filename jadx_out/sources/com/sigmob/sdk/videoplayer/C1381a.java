package com.sigmob.sdk.videoplayer;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.czhj.sdk.logger.SigmobLog;
import java.util.Timer;
import java.util.TimerTask;

/* renamed from: com.sigmob.sdk.videoplayer.a, reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1381a extends RelativeLayout implements h {

    /* renamed from: f, reason: collision with root package name */
    private static final String f38985f = "a";

    /* renamed from: v, reason: collision with root package name */
    private static final int f38986v = 6000;

    /* renamed from: a, reason: collision with root package name */
    i f38987a;

    /* renamed from: b, reason: collision with root package name */
    Class f38988b;

    /* renamed from: c, reason: collision with root package name */
    l f38989c;

    /* renamed from: d, reason: collision with root package name */
    public g f38990d;

    /* renamed from: e, reason: collision with root package name */
    public d f38991e;

    /* renamed from: g, reason: collision with root package name */
    private ViewGroup f38992g;

    /* renamed from: h, reason: collision with root package name */
    private int f38993h;

    /* renamed from: i, reason: collision with root package name */
    private Timer f38994i;

    /* renamed from: j, reason: collision with root package name */
    private C0780a f38995j;

    /* renamed from: k, reason: collision with root package name */
    private boolean f38996k;

    /* renamed from: l, reason: collision with root package name */
    private boolean f38997l;

    /* renamed from: m, reason: collision with root package name */
    private final Handler f38998m;

    /* renamed from: n, reason: collision with root package name */
    private boolean f38999n;

    /* renamed from: o, reason: collision with root package name */
    private boolean f39000o;

    /* renamed from: p, reason: collision with root package name */
    private int f39001p;

    /* renamed from: q, reason: collision with root package name */
    private int f39002q;

    /* renamed from: r, reason: collision with root package name */
    private float f39003r;

    /* renamed from: s, reason: collision with root package name */
    private k f39004s;

    /* renamed from: t, reason: collision with root package name */
    private int f39005t;

    /* renamed from: u, reason: collision with root package name */
    private String f39006u;

    /* renamed from: w, reason: collision with root package name */
    private boolean f39007w;

    /* renamed from: com.sigmob.sdk.videoplayer.a$a, reason: collision with other inner class name */
    public class C0780a extends TimerTask {
        public C0780a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C1381a c1381a = C1381a.this;
            d dVar = c1381a.f38991e;
            if (dVar == d.STATE_PLAYING || dVar == d.STATE_PAUSE) {
                c1381a.post(new Runnable() { // from class: com.sigmob.sdk.videoplayer.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f39105b.a();
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a() {
            long currentPositionWhenPlaying = C1381a.this.getCurrentPositionWhenPlaying();
            long duration = C1381a.this.getDuration();
            if (C1381a.this.f39004s == null) {
                return;
            }
            C1381a.this.f39004s.a(currentPositionWhenPlaying, duration);
        }
    }

    public C1381a(Context context) {
        super(context);
        this.f38991e = d.STATE_IDLE;
        this.f38998m = new Handler(Looper.getMainLooper()) { // from class: com.sigmob.sdk.videoplayer.a.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 6000 || C1381a.this.f38996k || C1381a.this.f38997l) {
                    return;
                }
                C1381a.this.f38996k = true;
                C1381a.this.setState(d.STATE_BUFFERING_START);
            }
        };
        FrameLayout frameLayout = new FrameLayout(context);
        this.f38992g = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        addView(this.f38992g, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void s() {
        try {
            i iVar = this.f38987a;
            if (iVar != null) {
                iVar.f();
            }
            Class cls = this.f38988b;
            this.f38987a = cls == null ? new j(this) : (i) cls.getConstructor(C1381a.class).newInstance(this);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a() {
        SigmobLog.d("startVideo [" + hashCode() + "] ");
        try {
            s();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            windowC.setFlags(16777216, 16777216);
            windowC.addFlags(128);
        }
        m();
        b();
    }

    public void b() {
        SigmobLog.d("onStatePreparing  [" + hashCode() + "] ");
        setState(d.STATE_PREPARING);
    }

    public void d() {
        i iVar;
        this.f39000o = false;
        d dVar = this.f38991e;
        if (dVar == d.STATE_NORMAL || (iVar = this.f38987a) == null) {
            a();
            return;
        }
        if (dVar == d.STATE_PAUSE || dVar == d.STATE_BUFFERING_END || dVar == d.STATE_AUTO_COMPLETE || dVar == d.STATE_PREPARED) {
            iVar.a();
            e();
        }
    }

    public void e() {
        SigmobLog.d("onStatePlaying  [" + hashCode() + "] ");
        if (this.f38991e == d.STATE_PREPARED) {
            int i2 = this.f38993h;
            if (i2 != 0) {
                this.f38987a.a(i2);
                this.f38993h = 0;
            }
            if (!this.f38997l) {
                this.f38998m.sendEmptyMessageDelayed(6000, 3000L);
            }
        }
        setState(d.STATE_PLAYING);
        f();
    }

    public void f() {
        SigmobLog.d("startProgressTimer:  [" + hashCode() + "] ");
        l();
        this.f38994i = new Timer();
        C0780a c0780a = new C0780a();
        this.f38995j = c0780a;
        this.f38994i.schedule(c0780a, 0L, 300L);
    }

    public boolean g() {
        return this.f39007w;
    }

    public long getCurrentPositionWhenPlaying() {
        d dVar = this.f38991e;
        if (dVar != d.STATE_PLAYING && dVar != d.STATE_PAUSE) {
            return 0L;
        }
        try {
            return this.f38987a.g();
        } catch (IllegalStateException e2) {
            com.sigmob.sdk.base.utils.k.f(f38985f, "getCurrentPositionWhenPlaying: error = " + e2.getMessage(), new Object[0]);
            return 0L;
        }
    }

    public long getDuration() {
        try {
            i iVar = this.f38987a;
            if (iVar != null) {
                return iVar.j();
            }
            return 0L;
        } catch (Throwable th) {
            th.printStackTrace();
            return 0L;
        }
    }

    public int getErrorCode() {
        return this.f39005t;
    }

    public String getErrorMessage() {
        return this.f39006u;
    }

    public int getVideoHeight() {
        return this.f39001p;
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public g getVideoPlayerDataSource() {
        return this.f38990d;
    }

    public int getVideoWidth() {
        return this.f39002q;
    }

    public void h() {
        SigmobLog.d("reset  [" + hashCode() + "] ");
        l();
        c();
        this.f38992g.removeAllViews();
        Window windowC = C1383c.c(getContext());
        if (windowC != null) {
            windowC.clearFlags(128);
        }
        i iVar = this.f38987a;
        if (iVar != null) {
            iVar.f();
        }
    }

    public void i() {
        setState(d.STATE_STOP);
        h();
    }

    public void j() {
        d dVar = this.f38991e;
        if (dVar == d.STATE_NORMAL || dVar == d.STATE_PREPARING || dVar == d.STATE_ERROR) {
            h();
        } else {
            if (dVar == d.STATE_PAUSE || this.f38987a == null) {
                return;
            }
            k();
            this.f38987a.d();
        }
    }

    public void k() {
        SigmobLog.i("onStatePause  [" + hashCode() + "] ");
        setState(d.STATE_PAUSE);
        f();
    }

    public void l() {
        Timer timer = this.f38994i;
        if (timer != null) {
            timer.cancel();
            this.f38994i = null;
        }
        C0780a c0780a = this.f38995j;
        if (c0780a != null) {
            c0780a.cancel();
            this.f38995j = null;
        }
    }

    public void m() {
        SigmobLog.d("addTextureView [" + hashCode() + "] ");
        l lVar = this.f38989c;
        if (lVar != null) {
            this.f38992g.removeView(lVar);
        }
        l lVar2 = new l(getContext().getApplicationContext());
        this.f38989c = lVar2;
        lVar2.setSurfaceTextureListener(this.f38987a);
        this.f38992g.addView(this.f38989c, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    public void n() {
        this.f39000o = true;
        a();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void o() {
        SigmobLog.d("onPrepared  [" + hashCode() + "] ");
        setState(d.STATE_PREPARED);
        setMute(this.f38999n);
        if (this.f39000o) {
            return;
        }
        SigmobLog.d("mediaInterface start");
        e();
        this.f38987a.a();
        this.f39000o = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        SigmobLog.d("onAttachedToWindow");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void p() {
        setState(d.STATE_AUTO_COMPLETE);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void q() {
    }

    public void r() {
        this.f39004s = null;
        h();
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setBufferProgress(int i2) {
    }

    public void setLooping(boolean z2) {
        i iVar = this.f38987a;
        if (iVar == null) {
            return;
        }
        try {
            iVar.a(z2);
            this.f39007w = z2;
        } catch (IllegalStateException e2) {
            e2.printStackTrace();
        }
    }

    public void setMute(boolean z2) {
        this.f38999n = z2;
        i iVar = this.f38987a;
        if (iVar == null) {
            return;
        }
        iVar.a(z2 ? 0.0f : 1.0f);
    }

    public void setState(d dVar) {
        this.f38991e = dVar;
        Context contextE = com.sigmob.sdk.b.e();
        if (dVar == d.STATE_PLAYING) {
            C1383c.f(contextE);
        } else if (dVar == d.STATE_NORMAL || dVar == d.STATE_PAUSE || dVar == d.STATE_AUTO_COMPLETE || dVar == d.STATE_STOP) {
            C1383c.g(contextE);
        }
        k kVar = this.f39004s;
        if (kVar == null) {
            return;
        }
        kVar.a(dVar);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        l lVar = this.f38989c;
        if (lVar == null) {
            return;
        }
        lVar.setSurfaceTexture(surfaceTexture);
    }

    public void setTextureViewContainer(ViewGroup viewGroup) {
        this.f38992g = viewGroup;
    }

    public void setUp(String str) {
        a(new g(str, (String) null), 0);
    }

    public void setVideoPlayerStatusListener(k kVar) {
        this.f39004s = kVar;
    }

    public void a(int i2) {
        d dVar = this.f38991e;
        if (dVar != d.STATE_PAUSE && dVar != d.STATE_PREPARED && dVar != d.STATE_AUTO_COMPLETE && dVar != d.STATE_PLAYING) {
            this.f38993h = i2;
            return;
        }
        i iVar = this.f38987a;
        if (iVar == null) {
            return;
        }
        iVar.a(i2);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void b(int i2, int i3) {
        d dVar;
        SigmobLog.d("onInfo() called with: what = [" + i2 + "], extra = [" + i3 + "]");
        if (i2 == 3) {
            if (!this.f38997l) {
                this.f38997l = true;
                this.f38998m.removeMessages(6000);
            }
            if (!this.f38996k) {
                return;
            } else {
                this.f38996k = false;
            }
        } else if (i2 == 701) {
            dVar = d.STATE_BUFFERING_START;
            setState(dVar);
        } else if (i2 != 702) {
            return;
        }
        dVar = d.STATE_BUFFERING_END;
        setState(dVar);
    }

    public void c() {
        SigmobLog.d("onStateNormal stat" + this.f38991e + " [" + hashCode() + "] ");
        setState(d.STATE_NORMAL);
        i iVar = this.f38987a;
        if (iVar != null) {
            iVar.f();
        }
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void a(int i2, int i3) {
        this.f39005t = i2;
        this.f39006u = "" + i3;
        setState(d.STATE_ERROR);
    }

    @Override // com.sigmob.sdk.videoplayer.h
    public void c(int i2, int i3) {
        this.f39001p = i3;
        this.f39002q = i2;
        SigmobLog.d("onVideoSizeChanged  [" + hashCode() + "] ");
        l lVar = this.f38989c;
        if (lVar == null) {
            return;
        }
        float f2 = this.f39003r;
        if (f2 != 0.0f) {
            lVar.setRotation(f2);
        }
        this.f38989c.a(i2, i3);
    }

    public void a(g gVar, int i2) {
        this.f38990d = gVar;
        c();
    }
}
