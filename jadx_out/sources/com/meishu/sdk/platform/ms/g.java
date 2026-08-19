package com.meishu.sdk.platform.ms;

import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.core.loader.c;
import com.meishu.sdk.platform.BasePlatformLoader;

/* loaded from: classes4.dex */
public abstract class g<T extends AdSlot, Loader extends com.meishu.sdk.core.loader.c, LoaderListener extends IAdLoadListener> extends BasePlatformLoader<Loader, LoaderListener> {

    /* renamed from: a, reason: collision with root package name */
    public T f32888a;

    public g(Loader loader, T t2) {
        super(loader, new SdkAdInfo());
        this.f32888a = t2;
    }

    public T a() {
        return this.f32888a;
    }

    @Override // com.meishu.sdk.platform.BasePlatformLoader, com.meishu.sdk.core.loader.IAdLoader
    public void destroy() {
    }
}
