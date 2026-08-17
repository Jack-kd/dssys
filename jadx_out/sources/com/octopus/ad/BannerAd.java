package com.octopus.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.kuaishou.weapon.p0.g;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.p;
import com.octopus.ad.internal.q;

/* loaded from: classes4.dex */
public final class BannerAd implements AdLifeControl, IBidding {

    /* renamed from: a, reason: collision with root package name */
    private final com.octopus.ad.internal.b.c f33196a;

    @RequiresPermission(g.f31159a)
    public BannerAd(Context context, String str, BannerAdListener bannerAdListener) {
        this(context, str, bannerAdListener, "");
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        com.octopus.ad.internal.b.c cVar = this.f33196a;
        if (cVar != null) {
            cVar.m();
            this.f33196a.f34252b.a();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        cancel();
    }

    public String getAdSlotId() {
        return this.f33196a.d();
    }

    public int getPrice() {
        com.octopus.ad.internal.b.c cVar = this.f33196a;
        if (cVar == null) {
            return 0;
        }
        return cVar.e();
    }

    public String getRequestId() {
        return this.f33196a.i();
    }

    public String getTagId() {
        com.octopus.ad.internal.b.c cVar = this.f33196a;
        if (cVar == null) {
            return null;
        }
        return cVar.f();
    }

    public boolean isLoaded() {
        return this.f33196a.g();
    }

    public boolean isValid() {
        return isLoaded() && this.f33196a.h();
    }

    @RequiresPermission(g.f31159a)
    public void loadAd() {
        this.f33196a.a(new AdRequest.Builder().build().a());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
    }

    public void openAdInNativeBrowser(boolean z2) {
        this.f33196a.b(z2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i2, String str, String str2) {
        com.octopus.ad.internal.b.c cVar = this.f33196a;
        if (cVar == null) {
            return;
        }
        cVar.sendLossNotice(i2, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i2) {
        com.octopus.ad.internal.b.c cVar = this.f33196a;
        if (cVar == null) {
            return;
        }
        cVar.sendWinNotice(i2);
    }

    public void setAdSlotId(String str) {
        this.f33196a.b(str);
    }

    public void setChannel(String str) {
        this.f33196a.d(str);
    }

    public void setRequestId(String str) {
        this.f33196a.e(str);
    }

    @RequiresPermission(g.f31159a)
    public BannerAd(Context context, String str, NativeAdListener nativeAdListener, String str2) {
        com.octopus.ad.internal.b.c cVar = new com.octopus.ad.internal.b.c(context == null ? q.a().l() : context, str, p.BANNER, str2);
        this.f33196a = cVar;
        cVar.a(nativeAdListener);
    }
}
