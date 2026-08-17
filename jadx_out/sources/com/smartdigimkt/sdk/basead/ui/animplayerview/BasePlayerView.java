package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.smartdigimkt.i0.f;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.y1.c;
import com.smartdigimkt.y1.k;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BasePlayerView extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public long f43690a;

    /* renamed from: b, reason: collision with root package name */
    public long f43691b;

    /* renamed from: c, reason: collision with root package name */
    public int f43692c;

    /* renamed from: d, reason: collision with root package name */
    public int f43693d;

    /* renamed from: e, reason: collision with root package name */
    public int f43694e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f43695f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f43696g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f43697h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f43698i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f43699j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f43700k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f43701l;

    /* renamed from: m, reason: collision with root package name */
    public Thread f43702m;

    /* renamed from: n, reason: collision with root package name */
    public c f43703n;

    /* renamed from: o, reason: collision with root package name */
    public k f43704o;

    /* renamed from: p, reason: collision with root package name */
    public com.smartdigimkt.m3.c f43705p;

    /* renamed from: q, reason: collision with root package name */
    public a f43706q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f43707r;

    /* renamed from: s, reason: collision with root package name */
    public int f43708s;

    public BasePlayerView(Context context) {
        super(context);
        this.f43690a = 5000L;
        this.f43691b = -1L;
        this.f43699j = false;
        this.f43700k = false;
        this.f43701l = false;
        this.f43707r = false;
    }

    public void a(f fVar) {
        k kVar = this.f43704o;
        if (kVar != null) {
            kVar.a(fVar);
        }
        this.f43704o = null;
    }

    public abstract long getCurrentPosition();

    public abstract long getVideoLength();

    public int getViewType() {
        return this.f43708s;
    }

    public abstract boolean hasVideo();

    public void init(com.smartdigimkt.m3.c cVar, a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        this.f43705p = cVar;
        this.f43706q = aVar;
    }

    public abstract boolean isMute();

    public boolean isPlayCompletion() {
        return this.f43701l;
    }

    public abstract boolean isPlaying();

    public abstract void pause();

    public void rePlayVideo() {
    }

    public void release(int i2) {
    }

    public abstract void setListener(k kVar);

    public abstract void setMute(boolean z2);

    public void setNeedInterruptRelease(boolean z2) {
        this.f43707r = z2;
    }

    public void setViewType(int i2) {
        this.f43708s = i2;
    }

    public abstract void start();

    public abstract void stop();

    public BasePlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43690a = 5000L;
        this.f43691b = -1L;
        this.f43699j = false;
        this.f43700k = false;
        this.f43701l = false;
        this.f43707r = false;
    }

    public BasePlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43690a = 5000L;
        this.f43691b = -1L;
        this.f43699j = false;
        this.f43700k = false;
        this.f43701l = false;
        this.f43707r = false;
    }
}
