package com.smartdigimkt.v1;

import android.view.View;
import com.smartdigimkt.sdk.basead.ui.SdkBannerATView;

/* loaded from: classes5.dex */
public final class x4 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SdkBannerATView f44649a;

    public x4(SdkBannerATView sdkBannerATView) {
        this.f44649a = sdkBannerATView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SdkBannerATView sdkBannerATView = this.f44649a;
        View view2 = sdkBannerATView.f43228n;
        if (view2 == null || view2 != view) {
            int i2 = SdkBannerATView.f43573O;
            sdkBannerATView.a(1, 2);
        } else {
            int i3 = SdkBannerATView.f43573O;
            sdkBannerATView.a(1, 1);
        }
    }
}
