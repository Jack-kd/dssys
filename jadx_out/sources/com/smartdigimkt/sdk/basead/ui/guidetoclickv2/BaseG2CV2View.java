package com.smartdigimkt.sdk.basead.ui.guidetoclickv2;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.smartdigimkt.h2.a;
import com.smartdigimkt.h2.b;
import com.smartdigimkt.h2.n;
import com.smartdigimkt.k2.e;

/* loaded from: classes5.dex */
public abstract class BaseG2CV2View extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public long f43836a;

    /* renamed from: b, reason: collision with root package name */
    public b f43837b;

    /* renamed from: c, reason: collision with root package name */
    public long f43838c;

    /* renamed from: d, reason: collision with root package name */
    public a f43839d;

    /* renamed from: e, reason: collision with root package name */
    public e f43840e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f43841f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f43842g;

    public BaseG2CV2View(Context context) {
        this(context, null);
    }

    public final void a() {
        if (this.f43837b == null || this.f43841f || !canStartNextAnim()) {
            return;
        }
        this.f43841f = true;
        ((n) this.f43837b).f40508a.c();
        pauseAnim();
    }

    public boolean canStartNextAnim() {
        return true;
    }

    public void init(long j2, int i2, int i3, e eVar, b bVar) {
        this.f43836a = j2;
        this.f43840e = eVar;
        this.f43837b = bVar;
        this.f43841f = false;
        this.f43839d = new a(this);
        initView(i2, i3);
    }

    public abstract void initView(int i2, int i3);

    public void pauseAnim() {
    }

    public void pauseAnimPlay() {
        if (this.f43842g) {
            this.f43842g = false;
            long j2 = this.f43836a;
            if (j2 > 0) {
                this.f43836a = Math.max(j2 - (SystemClock.elapsedRealtime() - this.f43838c), 0L);
            }
            com.smartdigimkt.b4.e eVarA = com.smartdigimkt.b4.e.a();
            eVarA.f39592b.removeCallbacks(this.f43839d);
            pauseAnim();
        }
    }

    public void release() {
    }

    public void resumeAnim() {
    }

    public void resumeAnimPlay() {
        if (this.f43842g) {
            return;
        }
        this.f43842g = true;
        this.f43838c = SystemClock.elapsedRealtime();
        if (this.f43836a > 0) {
            resumeAnim();
            com.smartdigimkt.b4.e.a().a(this.f43836a, this.f43839d);
            return;
        }
        b bVar = this.f43837b;
        if (bVar != null) {
            ((n) bVar).f40508a.c();
        }
    }

    public BaseG2CV2View(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BaseG2CV2View(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f43836a = 5000L;
        this.f43842g = false;
    }
}
