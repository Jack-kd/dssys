package com.anythink.core.common.inner.mixad.b;

import android.view.View;
import com.anythink.core.api.ATNativeAdInfo;
import com.anythink.core.common.inner.ui.thirdparty.ThirdPartyNativeTemplateView;

/* loaded from: classes2.dex */
public final class e extends a implements com.anythink.core.common.l.c.a.d {

    /* renamed from: b, reason: collision with root package name */
    View f4693b;

    /* renamed from: c, reason: collision with root package name */
    ATNativeAdInfo.AdPrepareInfo f4694c;

    @Override // com.anythink.core.common.l.c.a.d
    public final View a() {
        com.anythink.core.common.l.e.a.a aVar = this.f4691a;
        if (aVar != null && this.f4693b == null) {
            View view = (View) aVar.a();
            this.f4693b = view;
            if (view instanceof ThirdPartyNativeTemplateView) {
                this.f4694c = ((ThirdPartyNativeTemplateView) view).getAdPrepareInfo();
            }
        }
        return this.f4693b;
    }

    @Override // com.anythink.core.common.l.c.a.d
    public final ATNativeAdInfo.AdPrepareInfo b() {
        return this.f4694c;
    }
}
