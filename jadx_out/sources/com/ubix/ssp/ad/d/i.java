package com.ubix.ssp.ad.d;

import android.view.View;
import com.ubix.ssp.open.ParamsReview;
import com.ubix.ssp.open.UBiXAdLossInfo;
import com.ubix.ssp.open.nativee.NativeAd;
import com.ubix.ssp.open.nativee.express.NativeExpressAd;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressInteractionListener;
import com.ubix.ssp.open.nativee.express.UBiXNativeExpressVideoListener;

/* loaded from: classes5.dex */
public class i implements NativeExpressAd {

    /* renamed from: a, reason: collision with root package name */
    private com.ubix.ssp.ad.i.d f45956a;

    /* renamed from: b, reason: collision with root package name */
    private long f45957b;

    /* renamed from: c, reason: collision with root package name */
    private int f45958c;

    /* renamed from: d, reason: collision with root package name */
    private NativeAd f45959d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f45960e;

    /* renamed from: f, reason: collision with root package name */
    private long f45961f;

    public void a(int i2) {
        this.f45958c = i2;
    }

    public void b(long j2) {
        this.f45961f = j2;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public void destroy() {
        com.ubix.ssp.ad.i.d dVar = this.f45956a;
        if (dVar != null) {
            dVar.a(this.f45959d);
        }
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    @Deprecated
    public int getAdType() {
        return this.f45958c;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public int getCreativeType() {
        return this.f45958c;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public View getNativeExpressView() {
        return this.f45956a.b(this.f45959d);
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public ParamsReview getParamsReview() {
        return this.f45956a.c(this.f45959d);
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public long getPrice() {
        return this.f45957b;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public long getVideoDuration() {
        return this.f45961f;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public boolean isValid() {
        com.ubix.ssp.ad.i.d dVar = this.f45956a;
        if (dVar != null) {
            return dVar.d(this.f45959d);
        }
        return false;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public boolean isVideoAd() {
        return this.f45960e;
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public void lossNotice(UBiXAdLossInfo uBiXAdLossInfo) {
        com.ubix.ssp.ad.i.d dVar;
        if (uBiXAdLossInfo == null || (dVar = this.f45956a) == null) {
            return;
        }
        dVar.a(this.f45959d, uBiXAdLossInfo.getInfo());
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public void renderExpressNativeAd(UBiXNativeExpressInteractionListener uBiXNativeExpressInteractionListener) {
        this.f45956a.a(this.f45959d, uBiXNativeExpressInteractionListener);
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public void setNativeExpressVideoListener(UBiXNativeExpressVideoListener uBiXNativeExpressVideoListener) {
        this.f45956a.a(this.f45959d, uBiXNativeExpressVideoListener);
    }

    @Override // com.ubix.ssp.open.nativee.express.NativeExpressAd
    public void winNotice(long j2) {
        com.ubix.ssp.ad.i.d dVar = this.f45956a;
        if (dVar != null) {
            dVar.a(this.f45959d, j2);
        }
    }

    public void a(long j2) {
        this.f45957b = j2;
    }

    public void a(com.ubix.ssp.ad.i.d dVar) {
        this.f45956a = dVar;
    }

    public void a(NativeAd nativeAd) {
        this.f45959d = nativeAd;
    }

    public void a(boolean z2) {
        this.f45960e = z2;
    }
}
