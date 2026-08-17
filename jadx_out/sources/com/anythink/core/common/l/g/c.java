package com.anythink.core.common.l.g;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.d.s;
import com.anythink.core.common.h.y;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;

/* loaded from: classes2.dex */
public final class c implements ATCustomLoadListenerExt {

    /* renamed from: a, reason: collision with root package name */
    private final ATCustomLoadListener f5475a;

    /* renamed from: b, reason: collision with root package name */
    private final com.anythink.core.common.l.d.b f5476b;

    public c(ATCustomLoadListener aTCustomLoadListener, com.anythink.core.common.l.d.b bVar) {
        this.f5476b = bVar;
        this.f5475a = aTCustomLoadListener;
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdCacheLoaded(BaseAd... baseAdArr) {
        final BaseAd baseAd;
        com.anythink.core.common.l.d.b bVar = this.f5476b;
        if (bVar == null || !bVar.l()) {
            ATCustomLoadListener aTCustomLoadListener = this.f5475a;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdCacheLoaded(new BaseAd[0]);
                return;
            }
            return;
        }
        if (baseAdArr == null || baseAdArr.length <= 0 || (baseAd = baseAdArr[0]) == null) {
            ATCustomLoadListener aTCustomLoadListener2 = this.f5475a;
            if (aTCustomLoadListener2 != null) {
                aTCustomLoadListener2.onAdLoadError("10011", "load fail with no adObject");
                return;
            }
            return;
        }
        this.f5476b.a(baseAd.getNetworkInfoMap());
        boolean zEquals = String.valueOf(this.f5476b.e()).equals("2") ? ((String) this.f5476b.a("size", "")).equals(y.f4503c) : true;
        if (TextUtils.isEmpty(baseAd.getMainImageUrl()) && baseAd.getAdMediaView(new Object[0]) == null && zEquals) {
            ATCustomLoadListener aTCustomLoadListener3 = this.f5475a;
            if (aTCustomLoadListener3 != null) {
                aTCustomLoadListener3.onAdLoadError("10012", "load fail with no main image.");
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(baseAd.getMainImageUrl())) {
            this.f5475a.onAdCacheLoaded(new d(baseAd, this.f5476b.a()));
        } else if (baseAd.getAdMediaView(new Object[0]) == null) {
            com.anythink.core.common.res.b.a(s.b().g()).a(new e(2, baseAd.getMainImageUrl()), 0, 0, new b.a() { // from class: com.anythink.core.common.l.g.c.1
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                    if (c.this.f5475a != null) {
                        c.this.f5475a.onAdLoadError("10011", "load image fail:".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (!TextUtils.equals(str, baseAd.getMainImageUrl()) || c.this.f5475a == null) {
                        return;
                    }
                    c.this.f5475a.onAdCacheLoaded(new d(baseAd, c.this.f5476b.a()));
                }
            });
        } else {
            this.f5475a.onAdCacheLoaded(new d(baseAd, this.f5476b.a()));
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdDataLoaded() {
        ATCustomLoadListener aTCustomLoadListener = this.f5475a;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListenerExt
    public final void onAdDataLoadedWithAds(BaseAd... baseAdArr) {
        ATCustomLoadListener aTCustomLoadListener = this.f5475a;
        if (aTCustomLoadListener instanceof ATCustomLoadListenerExt) {
            ((ATCustomLoadListenerExt) aTCustomLoadListener).onAdDataLoadedWithAds(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public final void onAdLoadError(String str, String str2) {
        ATCustomLoadListener aTCustomLoadListener = this.f5475a;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }
}
