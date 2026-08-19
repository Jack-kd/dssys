package com.anythink.core.common.inner.mixad.shake;

import android.content.Context;
import android.view.View;
import com.anythink.core.api.ATSDKGlobalSetting;
import com.anythink.core.api.ATShakeViewListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.h.n;
import com.anythink.core.common.h.y;
import com.anythink.core.common.l.b;

/* loaded from: classes2.dex */
public final class a implements b {

    /* renamed from: a, reason: collision with root package name */
    private final int[] f4781a = {22, 8, 15};

    /* renamed from: b, reason: collision with root package name */
    private BaseAd f4782b;

    /* renamed from: c, reason: collision with root package name */
    private Context f4783c;

    /* renamed from: d, reason: collision with root package name */
    private y f4784d;

    public a(Context context, BaseAd baseAd, y yVar) {
        this.f4783c = context;
        this.f4782b = baseAd;
        this.f4784d = yVar;
    }

    @Override // com.anythink.core.common.l.b
    public final com.anythink.core.common.l.a a(int i2, int i3, ATShakeViewListener aTShakeViewListener) {
        Boolean boolIsShakeEnabled;
        BaseAd baseAd = this.f4782b;
        if (baseAd == null || this.f4783c == null) {
            return null;
        }
        n detail = baseAd.getDetail();
        int iZ = detail != null ? detail.Z() : 0;
        if (iZ != 0 && (boolIsShakeEnabled = ATSDKGlobalSetting.isShakeEnabled(iZ)) != null && !boolIsShakeEnabled.booleanValue()) {
            return null;
        }
        View shakeView = this.f4782b.getShakeView(i2, i3, aTShakeViewListener);
        if (shakeView != null) {
            return new MixNativeAdNetworkShakeView(this.f4783c, shakeView, i2, i3);
        }
        int[] iArr = this.f4781a;
        if (iArr != null) {
            for (int i4 : iArr) {
                if (i4 == iZ) {
                    return null;
                }
            }
        }
        MixNativeAdShakeView mixNativeAdShakeView = new MixNativeAdShakeView(this.f4783c, this.f4784d, this.f4782b.getNativeAdInteractionType());
        mixNativeAdShakeView.initView(i2, i3, aTShakeViewListener);
        return mixNativeAdShakeView;
    }

    private static boolean a(int[] iArr, int i2) {
        if (iArr == null) {
            return false;
        }
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }
}
