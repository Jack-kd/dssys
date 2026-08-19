package com.smartdigimkt.v1;

import com.smartdigimkt.sdk.basead.ui.ShakeNativeBorderThumbView;
import com.smartdigimkt.sdk.core.SDKContext;

/* loaded from: classes5.dex */
public final class e5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ShakeNativeBorderThumbView f44464a;

    public e5(ShakeNativeBorderThumbView shakeNativeBorderThumbView) {
        this.f44464a = shakeNativeBorderThumbView;
    }

    public final int a() {
        int[] iArr = new int[2];
        this.f44464a.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        int width = (this.f44464a.getWidth() / 2) + i2;
        int height = (this.f44464a.getHeight() / 2) + i3;
        com.smartdigimkt.k2.s sVarA = com.smartdigimkt.k2.s.a();
        if (sVarA.f41346g == 0) {
            sVarA.f41346g = com.smartdigimkt.c5.h.j(SDKContext.getInstance().d());
        }
        int i4 = sVarA.f41346g;
        com.smartdigimkt.k2.s sVarA2 = com.smartdigimkt.k2.s.a();
        if (sVarA2.f41347h == 0) {
            sVarA2.f41347h = com.smartdigimkt.c5.h.i(SDKContext.getInstance().d());
        }
        int i5 = sVarA2.f41347h / 2;
        return (int) Math.sqrt(Math.pow(height - i5, 2.0d) + Math.pow(width - (i4 / 2), 2.0d));
    }
}
