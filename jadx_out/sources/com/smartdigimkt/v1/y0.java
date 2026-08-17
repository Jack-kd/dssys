package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.BaseScreenATView;
import com.umeng.commonsdk.statistics.UMErrorCode;

/* loaded from: classes5.dex */
public final class y0 implements com.smartdigimkt.x.m {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseScreenATView f44653a;

    public y0(BaseScreenATView baseScreenATView) {
        this.f44653a = baseScreenATView;
    }

    @Override // com.smartdigimkt.x.m
    public final void a() {
        this.f44653a.a(UMErrorCode.E_UM_BE_ERROR_WORK_MODE);
        this.f44653a.B();
    }
}
