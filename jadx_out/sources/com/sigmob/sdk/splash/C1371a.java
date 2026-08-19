package com.sigmob.sdk.splash;

import android.content.Context;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.common.utils.TouchLocation;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.C1260i;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.SplashAdSetting;

/* renamed from: com.sigmob.sdk.splash.a, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1371a extends C1260i {

    /* renamed from: l, reason: collision with root package name */
    private int f38642l = 3;

    /* renamed from: m, reason: collision with root package name */
    private boolean f38643m;

    public static C1371a d(BaseAdUnit baseAdUnit) {
        C1371a c1371a = new C1371a();
        c1371a.b(baseAdUnit);
        return c1371a;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void a(Context context, TouchLocation touchLocation, TouchLocation touchLocation2, com.sigmob.sdk.base.a aVar, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null");
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "click");
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void b(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("close", (String) null, baseAdUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35693u);
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void c(Context context, int i2, BaseAdUnit baseAdUnit) {
        Preconditions.NoThrow.checkNotNull(context, "context cannot be null.");
        ad.a("skip", (String) null, baseAdUnit, (ad.a) null);
        com.sigmob.sdk.base.network.h.a(baseAdUnit, "skip");
    }

    public int l() {
        return this.f38642l;
    }

    public boolean m() {
        return this.f38643m;
    }

    @Override // com.sigmob.sdk.base.common.C1260i
    public void b(BaseAdUnit baseAdUnit) {
        super.b(baseAdUnit);
        SplashAdSetting splashAdSetting = baseAdUnit.getSplashAdSetting();
        if (splashAdSetting == null) {
            return;
        }
        this.f38642l = splashAdSetting.show_duration.intValue();
        this.f38643m = splashAdSetting.enable_close_on_click.booleanValue();
    }
}
