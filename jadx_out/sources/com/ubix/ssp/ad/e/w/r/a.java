package com.ubix.ssp.ad.e.w.r;

import com.kwad.sdk.core.imageloader.KSImageLoader;

/* loaded from: classes5.dex */
public class a extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private int f47382a;

    public a(String str) {
        super(str);
        this.f47382a = KSImageLoader.InnerImageLoadingListener.MAX_DURATION;
    }

    public a(String str, String str2) {
        super(str);
        try {
            this.f47382a = Integer.parseInt(str2);
        } catch (NumberFormatException unused) {
            this.f47382a = 0;
        }
    }

    public a(Throwable th) {
        super(th);
    }
}
