package com.smartdigimkt.d4;

import com.smartdigimkt.sdk.api.ISDMAdManager;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.Map;

/* loaded from: classes5.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDKContext f39894a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f39895b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map f39896c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ISDMAdManager.S2SBidTokenCallback f39897d;

    public c(boolean z2, boolean z3, SDKContext sDKContext, String str, Map map, ISDMAdManager.S2SBidTokenCallback s2SBidTokenCallback) {
        this.f39894a = sDKContext;
        this.f39895b = str;
        this.f39896c = map;
        this.f39897d = s2SBidTokenCallback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f39894a.a(new b(this));
    }
}
