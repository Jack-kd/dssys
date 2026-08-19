package com.smartdigimkt.sdk.basead.ui.animplayerview;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.inner.b.b;
import com.smartdigimkt.l3.a;
import com.smartdigimkt.sdk.basead.ui.WrapRoundImageView;
import com.smartdigimkt.sdk.core.common.res.image.RecycleImageView;
import com.smartdigimkt.t3.m;
import com.smartdigimkt.t3.o;
import com.smartdigimkt.y1.c;
import com.smartdigimkt.y1.d;
import com.smartdigimkt.y1.f;
import com.smartdigimkt.y1.k;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class BaseAnimPlayerView extends BasePlayerView {

    /* renamed from: A, reason: collision with root package name */
    public boolean f43682A;

    /* renamed from: t, reason: collision with root package name */
    public long f43683t;

    /* renamed from: u, reason: collision with root package name */
    public long f43684u;

    /* renamed from: v, reason: collision with root package name */
    public List f43685v;

    /* renamed from: w, reason: collision with root package name */
    public String f43686w;

    /* renamed from: x, reason: collision with root package name */
    public RecycleImageView f43687x;

    /* renamed from: y, reason: collision with root package name */
    public WrapRoundImageView f43688y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f43689z;

    public BaseAnimPlayerView(Context context) {
        super(context);
        this.f43683t = 0L;
        this.f43684u = 0L;
        this.f43686w = "";
        this.f43689z = false;
        this.f43682A = false;
        this.f43703n = new c(this, Looper.getMainLooper());
    }

    public abstract void a();

    public final void a(int i2, int i3) {
        RecycleImageView recycleImageView = new RecycleImageView(getContext());
        this.f43687x = recycleImageView;
        recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f43687x, -1, -1);
        this.f43688y = new WrapRoundImageView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f43688y.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(this.f43688y, layoutParams);
        m.a(getContext()).a(new o(1, this.f43686w), i2, i3, new f(this, i2, i3));
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public void e() {
        if (TextUtils.isEmpty(this.f43686w)) {
            com.smartdigimkt.i0.f fVar = new com.smartdigimkt.i0.f(b.f4595l, b.f4577T);
            this.f43682A = true;
            super.a(fVar);
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public long getCurrentPosition() {
        return this.f43691b;
    }

    public int getMinAnimDuration() {
        return 0;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public long getVideoLength() {
        return this.f43690a;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean hasVideo() {
        return this.f43705p != null;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void init(com.smartdigimkt.m3.c cVar, a aVar, boolean z2, List<Bitmap> list, com.smartdigimkt.u1.c cVar2) {
        super.init(cVar, aVar, z2, list, cVar2);
        this.f43685v = list;
        this.f43686w = cVar.f41815f;
        long jMax = Math.max(this.f43706q.f41644r.f41946k0, getMinAnimDuration());
        this.f43690a = jMax;
        this.f43692c = Math.round(jMax * 0.25f);
        this.f43693d = Math.round(this.f43690a * 0.5f);
        this.f43694e = Math.round(this.f43690a * 0.75f);
        k kVar = this.f43704o;
        if (kVar != null) {
            kVar.a(this.f43690a);
        }
        setOnClickListener(new com.smartdigimkt.y1.b(this));
        e();
        List list2 = this.f43685v;
        (list2 == null ? "null" : Integer.valueOf(list2.size())).toString();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean isMute() {
        return this.f43698i;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public boolean isPlaying() {
        return this.f43689z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        release(5);
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void pause() {
        if (this.f43689z) {
            this.f43683t = (SystemClock.elapsedRealtime() - this.f43684u) + this.f43683t;
        }
        this.f43689z = false;
        this.f43699j = false;
        this.f43702m = null;
        a();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void release(int i2) {
        this.f43699j = false;
        this.f43702m = null;
        this.f43704o = null;
        c cVar = this.f43703n;
        if (cVar != null) {
            cVar.removeCallbacksAndMessages(null);
        }
        b();
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void setListener(k kVar) {
        this.f43704o = kVar;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void setMute(boolean z2) {
        this.f43698i = z2;
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void start() {
        if (this.f43682A) {
            return;
        }
        this.f43689z = !this.f43701l;
        this.f43684u = SystemClock.elapsedRealtime();
        if (this.f43702m == null) {
            this.f43699j = true;
            Thread thread = new Thread(new d(this));
            this.f43702m = thread;
            thread.setName("sdm_type_anim_player_progress");
            this.f43702m.start();
        }
        if (this.f43689z) {
            c();
        }
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public void stop() {
        this.f43689z = false;
        this.f43699j = false;
        this.f43702m = null;
        k kVar = this.f43704o;
        if (kVar != null) {
            kVar.c();
        }
        d();
        this.f43704o = null;
    }

    public BaseAnimPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f43683t = 0L;
        this.f43684u = 0L;
        this.f43686w = "";
        this.f43689z = false;
        this.f43682A = false;
        this.f43703n = new c(this, Looper.getMainLooper());
    }

    @Override // com.smartdigimkt.sdk.basead.ui.animplayerview.BasePlayerView
    public final void a(com.smartdigimkt.i0.f fVar) {
        this.f43682A = true;
        super.a(fVar);
    }

    public BaseAnimPlayerView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43683t = 0L;
        this.f43684u = 0L;
        this.f43686w = "";
        this.f43689z = false;
        this.f43682A = false;
        this.f43703n = new c(this, Looper.getMainLooper());
    }
}
