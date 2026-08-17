package com.meishu.sdk.core.utils;

import android.content.Context;
import com.meishu.sdk.core.ad.AdType;

/* loaded from: classes4.dex */
public class x0 extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f32044a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AdType f32045b;

    public x0(Context context, AdType adType) {
        this.f32044a = context;
        this.f32045b = adType;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        y0.a(this.f32044a, this.f32045b);
    }
}
