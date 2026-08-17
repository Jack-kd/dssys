package com.smartdigimkt.c3;

import com.smartdigimkt.c5.h;
import com.smartdigimkt.sdk.api.IntegrationCheckListener;
import com.smartdigimkt.sdk.api.SDMSDK;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class c implements IntegrationCheckListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SDMSDK.InitCallBack f39668a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SDKContext f39669b;

    public c(SDKContext sDKContext, SDMSDK.InitCallBack initCallBack) {
        this.f39669b = sDKContext;
        this.f39668a = initCallBack;
    }

    @Override // com.smartdigimkt.sdk.api.IntegrationCheckListener
    public final void onValidationFail(String str) {
        this.f39669b.f44116e = true;
        this.f39669b.a(this.f39668a, str);
    }

    @Override // com.smartdigimkt.sdk.api.IntegrationCheckListener
    public final void onValidationSucceed() {
        this.f39669b.f44116e = true;
        this.f39669b.a(this.f39668a, "");
        h.a(this.f39669b.f44122k);
    }
}
