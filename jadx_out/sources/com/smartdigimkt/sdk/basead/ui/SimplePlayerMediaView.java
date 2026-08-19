package com.smartdigimkt.sdk.basead.ui;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.smartdigimkt.a4.c;
import com.smartdigimkt.a4.f;
import com.smartdigimkt.c2.d;
import com.smartdigimkt.c5.h;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.m3.e;
import com.smartdigimkt.sdk.api.format.SDMNativeAdMediaViewListener;
import com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView;
import com.smartdigimkt.sdk.basead.ui.web.WebProgressBarView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.v1.a3;
import com.smartdigimkt.v1.k5;
import com.smartdigimkt.v1.l5;
import com.smartdigimkt.v1.m5;
import com.smartdigimkt.v1.n5;
import com.smartdigimkt.v1.o5;
import com.smartdigimkt.v1.p5;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes5.dex */
public class SimplePlayerMediaView extends FrameLayout implements a3 {

    /* renamed from: a, reason: collision with root package name */
    public final String f43611a;

    /* renamed from: b, reason: collision with root package name */
    public d f43612b;

    /* renamed from: c, reason: collision with root package name */
    public WebProgressBarView f43613c;

    /* renamed from: d, reason: collision with root package name */
    public MuteImageView f43614d;

    /* renamed from: e, reason: collision with root package name */
    public long f43615e;

    /* renamed from: f, reason: collision with root package name */
    public SDMNativeAdMediaViewListener f43616f;

    /* renamed from: g, reason: collision with root package name */
    public c f43617g;

    /* renamed from: h, reason: collision with root package name */
    public f f43618h;

    /* renamed from: i, reason: collision with root package name */
    public ImageView f43619i;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f43620j;

    /* renamed from: k, reason: collision with root package name */
    public ImageView f43621k;

    /* renamed from: l, reason: collision with root package name */
    public ImageView f43622l;

    /* renamed from: m, reason: collision with root package name */
    public View f43623m;

    /* renamed from: n, reason: collision with root package name */
    public View.OnClickListener f43624n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f43625o;

    /* renamed from: p, reason: collision with root package name */
    public final AtomicBoolean f43626p;

    /* renamed from: q, reason: collision with root package name */
    public String f43627q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f43628r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f43629s;

    /* renamed from: t, reason: collision with root package name */
    public int f43630t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f43631u;

    /* renamed from: v, reason: collision with root package name */
    public com.smartdigimkt.u1.c f43632v;

    /* renamed from: w, reason: collision with root package name */
    public int f43633w;

    public SimplePlayerMediaView(@NonNull Context context) {
        this(context, null);
    }

    public void a() {
        LayoutInflater.from(getContext()).inflate(k.a(getContext(), "myoffer_simple_player_media_ad_view", "layout"), this);
    }

    public final void b() {
        if (this.f43617g == null) {
            int i2 = this.f43633w;
            getContext();
            this.f43617g = new c(i2, this.f43630t);
        }
        if (this.f43625o || this.f43626p.get()) {
            return;
        }
        this.f43626p.set(true);
        this.f43617g.a(this, new p5(this));
    }

    @Override // com.smartdigimkt.v1.a3
    public void destroyPlayerView(int i2) {
        BasePlayerView basePlayerView;
        d dVar = this.f43612b;
        if (dVar == null || (basePlayerView = dVar.f39641h) == null) {
            return;
        }
        basePlayerView.release(i2);
    }

    @Override // com.smartdigimkt.v1.a3
    public long getVideoCurrentPosition() {
        d dVar = this.f43612b;
        if (dVar != null) {
            return dVar.a();
        }
        return 0L;
    }

    @Override // com.smartdigimkt.v1.a3
    public void initPlayerView(com.smartdigimkt.m3.c cVar, a aVar, com.smartdigimkt.c2.c cVar2, com.smartdigimkt.u1.c cVar3) {
        e eVar;
        a();
        if (cVar != null && (eVar = cVar.f41832w) != null) {
            this.f43633w = eVar.a();
        }
        this.f43618h = new f(this.f43633w);
        this.f43632v = cVar3;
        this.f43613c = (WebProgressBarView) findViewById(k.a(getContext(), "myoffer_player_view_progress_bar_id", "id"));
        this.f43619i = (ImageView) findViewById(k.a(getContext(), "myoffer_player_view_resume_img_id", "id"));
        this.f43621k = (ImageView) findViewById(k.a(getContext(), "myoffer_player_view_cover_img_id", "id"));
        this.f43622l = (ImageView) findViewById(k.a(getContext(), "myoffer_player_view_cover_icon_id", "id"));
        ImageView imageView = this.f43619i;
        if (imageView != null) {
            imageView.setOnClickListener(new k5(this));
        }
        ImageView imageView2 = (ImageView) findViewById(k.a(getContext(), "myoffer_player_view_replay_img_id", "id"));
        this.f43620j = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new l5(this));
        }
        int i2 = aVar.f41644r.f41892S;
        if (i2 <= 0) {
            i2 = 100;
        }
        this.f43630t = i2;
        this.f43623m = findViewById(k.a(getContext(), "myoffer_player_view_fail_id", "id"));
        d dVar = new d(this, aVar, cVar, h.y(getContext()));
        this.f43612b = dVar;
        BasePlayerView basePlayerView = dVar.f39641h;
        if (basePlayerView != null) {
            basePlayerView.setNeedInterruptRelease(true);
        }
        d dVar2 = this.f43612b;
        dVar2.f39643j = cVar2;
        dVar2.f39642i = new m5(this, aVar, cVar);
        if (!TextUtils.isEmpty(cVar.f41815f) && this.f43621k != null) {
            m.a(getContext()).a(new o(1, cVar.f41815f), getResources().getDisplayMetrics().widthPixels, getResources().getDisplayMetrics().heightPixels, new n5(this, cVar));
        }
        setAutoPlay(this.f43627q);
        MuteImageView muteImageView = (MuteImageView) findViewById(k.a(getContext(), "myoffer_btn_mute_id", "id"));
        this.f43614d = muteImageView;
        if (muteImageView != null) {
            muteImageView.setMute(this.f43628r);
            this.f43614d.setOnClickListener(new o5(this));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        d dVar = this.f43612b;
        if (dVar != null && !this.f43629s) {
            this.f43629s = true;
            dVar.a(this.f43628r, null, this.f43632v);
        }
        b();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f43617g;
        if (cVar != null) {
            cVar.a();
            this.f43617g = null;
        }
        this.f43626p.set(false);
        d dVar = this.f43612b;
        if (dVar != null) {
            dVar.b(4);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void pauseVideo() {
        d dVar = this.f43612b;
        if (dVar != null) {
            dVar.b(3);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void resumeVideo() {
        d dVar = this.f43612b;
        if (dVar != null) {
            if (this.f43625o || !this.f43618h.a(this, dVar.f39641h, 50, 0)) {
                b();
            } else {
                this.f43612b.c();
            }
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setATImproveClickViewController(com.smartdigimkt.k2.c cVar) {
        d dVar = this.f43612b;
        if (dVar != null) {
            dVar.f39640g = cVar;
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setAutoPlay(String str) {
        BasePlayerView basePlayerView;
        NetworkInfo activeNetworkInfo;
        this.f43627q = str;
        str.getClass();
        if (str.equals("1")) {
            return;
        }
        if (str.equals("2")) {
            Context context = getContext();
            char[] cArr = k.f39779a;
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
                    if (activeNetworkInfo.getType() == 1) {
                        return;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        this.f43625o = true;
        d dVar = this.f43612b;
        if (dVar != null && (basePlayerView = dVar.f39641h) != null && basePlayerView.isPlaying()) {
            this.f43612b.b(1);
        }
        ImageView imageView = this.f43619i;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setIsMuted(boolean z2) {
        this.f43628r = z2;
        MuteImageView muteImageView = this.f43614d;
        if (muteImageView != null) {
            muteImageView.setMute(z2);
        }
        d dVar = this.f43612b;
        if (dVar != null) {
            dVar.b(z2);
        }
    }

    @Override // com.smartdigimkt.v1.a3
    public void setPlayerOnClickListener(View.OnClickListener onClickListener) {
        this.f43624n = onClickListener;
    }

    @Override // com.smartdigimkt.v1.a3
    public void setVideoListener(SDMNativeAdMediaViewListener sDMNativeAdMediaViewListener) {
        this.f43616f = sDMNativeAdMediaViewListener;
    }

    public void setmIsPureMode(boolean z2) {
        this.f43631u = z2;
    }

    public SimplePlayerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SimplePlayerMediaView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43611a = getClass().getSimpleName();
        this.f43625o = false;
        this.f43626p = new AtomicBoolean(false);
        this.f43627q = "1";
        this.f43628r = true;
        this.f43629s = false;
        this.f43630t = 0;
        this.f43631u = false;
        this.f43633w = 1;
    }
}
