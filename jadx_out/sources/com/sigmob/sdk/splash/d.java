package com.sigmob.sdk.splash;

import android.os.Bundle;
import android.text.TextUtils;
import com.sigmob.sdk.base.common.AbstractC1285y;
import com.sigmob.sdk.base.common.InterfaceC1274p;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.MaterialMeta;

/* loaded from: classes4.dex */
class d extends AbstractC1285y {

    /* renamed from: c, reason: collision with root package name */
    C1371a f38649c;

    /* renamed from: d, reason: collision with root package name */
    private SplashAdBroadcastReceiver f38650d;

    public d(InterfaceC1274p interfaceC1274p) {
        super(interfaceC1274p);
    }

    public static boolean c(BaseAdUnit baseAdUnit) {
        MaterialMeta material = baseAdUnit.getMaterial();
        if (TextUtils.isEmpty(baseAdUnit.getCrid())) {
            return false;
        }
        return (TextUtils.isEmpty(material.video_url) && TextUtils.isEmpty(material.image_src)) ? false : true;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(InterfaceC1274p interfaceC1274p) {
        this.f36054a = interfaceC1274p;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void b(BaseAdUnit baseAdUnit) {
        super.b(baseAdUnit);
        SplashAdBroadcastReceiver splashAdBroadcastReceiver = this.f38650d;
        if (splashAdBroadcastReceiver == null) {
            return;
        }
        splashAdBroadcastReceiver.b(splashAdBroadcastReceiver);
        this.f38650d = null;
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public void a(BaseAdUnit baseAdUnit, Bundle bundle) {
        if (baseAdUnit == null) {
            baseAdUnit = this.f36055b;
        }
        if (com.sigmob.sdk.base.utils.v.b(baseAdUnit)) {
            this.f38649c = (C1371a) baseAdUnit.getAdConfig();
        }
        super.a(baseAdUnit, bundle);
        InterfaceC1274p interfaceC1274p = this.f36054a;
        if (interfaceC1274p instanceof e) {
            SplashAdBroadcastReceiver splashAdBroadcastReceiver = new SplashAdBroadcastReceiver((e) interfaceC1274p, baseAdUnit.getUuid());
            this.f38650d = splashAdBroadcastReceiver;
            splashAdBroadcastReceiver.a(splashAdBroadcastReceiver);
        }
    }

    @Override // com.sigmob.sdk.base.common.AbstractC1285y
    public boolean a(BaseAdUnit baseAdUnit) {
        return c(baseAdUnit);
    }
}
