package com.smartdigimkt.e;

import android.graphics.Bitmap;
import com.smartdigimkt.sdk.R;
import com.smartdigimkt.sdk.basead.ui.BaseSdkSplashATView;

/* loaded from: classes5.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f39959a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseSdkSplashATView f39960b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bitmap f39961c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Runnable f39962d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Runnable f39963e;

    public m(Runnable runnable, BaseSdkSplashATView baseSdkSplashATView, Bitmap bitmap, Runnable runnable2, Runnable runnable3, int i2) {
        this.f39959a = runnable;
        this.f39960b = baseSdkSplashATView;
        this.f39961c = bitmap;
        this.f39962d = runnable2;
        this.f39963e = runnable3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f39959a == null || this.f39960b.getTag(R.id.sdm_bubble_delay_runnable_tag) == this.f39959a) {
            if (q.a(this.f39960b)) {
                q.a(this.f39960b, this.f39961c, this.f39962d, this.f39963e, this.f39959a);
            } else {
                q.b(this.f39960b, this.f39959a);
            }
        }
    }
}
