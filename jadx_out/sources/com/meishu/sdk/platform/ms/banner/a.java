package com.meishu.sdk.platform.ms.banner;

import android.text.TextUtils;
import android.view.View;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.safe.l;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.core.view.TouchAdContainer;
import com.meishu.sdk.core.view.TouchPositionListener;
import com.meishu.sdk.platform.ms.d;

/* loaded from: classes4.dex */
public class a implements com.meishu.sdk.meishu_ad.banner.b {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.core.ad.banner.b f32850a;

    /* renamed from: b, reason: collision with root package name */
    public b f32851b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f32852c;

    /* renamed from: d, reason: collision with root package name */
    public View f32853d;

    /* renamed from: com.meishu.sdk.platform.ms.banner.a$a, reason: collision with other inner class name */
    public class C0700a extends l {
        public C0700a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            v0.a(((com.meishu.sdk.meishu_ad.banner.a) a.this.f32851b.f32888a).getPosId(), 3);
            String[] monitorUrl = ((com.meishu.sdk.meishu_ad.banner.a) a.this.f32851b.f32888a).getMonitorUrl();
            i0.a(monitorUrl, a.this.f32853d, (View) null);
            if (monitorUrl != null) {
                LogUtil.d("BannerAdListenerAdapter", "send onAdExposure");
                for (String str : monitorUrl) {
                    if (!TextUtils.isEmpty(str)) {
                        int act_type = ((com.meishu.sdk.meishu_ad.banner.a) a.this.f32851b.f32888a).getAct_type();
                        if ((act_type & 2) == 2) {
                            act_type = (act_type - 2) | 1;
                        }
                        com.meishu.sdk.core.loader.a.a(a.this.f32851b.getContext(), i0.a(i0.a(i0.a(str, act_type, AdType.BANNER), a.this.f32853d.getWidth(), a.this.f32853d.getHeight())));
                    }
                }
            }
            a.this.f32850a.onAdExposure();
            a.this.f32852c = true;
        }
    }

    public a(b bVar, com.meishu.sdk.core.ad.banner.b bVar2) {
        this.f32851b = bVar;
        this.f32850a = bVar2;
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADExposure() {
        View view;
        if (this.f32852c || (view = this.f32853d) == null) {
            return;
        }
        view.post(new C0700a());
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADLoaded(c cVar) {
        c cVar2 = cVar;
        this.f32853d = cVar2.getAdView();
        TouchAdContainer touchAdContainer = new TouchAdContainer(this.f32853d.getContext());
        touchAdContainer.setTouchPositionListener(new TouchPositionListener(cVar2));
        touchAdContainer.addView(this.f32853d);
        this.f32853d = touchAdContainer;
        cVar2.setAdView(touchAdContainer);
        this.f32850a.onAdReady(cVar2);
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        if (((com.meishu.sdk.meishu_ad.banner.a) this.f32851b.f32888a).getErrorUrl() != null) {
            a0.a(((com.meishu.sdk.meishu_ad.banner.a) this.f32851b.f32888a).getErrorUrl()[0], Integer.valueOf(i2), str);
        }
        com.meishu.sdk.core.ad.banner.b bVar = this.f32850a;
        if (bVar != null) {
            bVar.onAdPlatformError(new d(str, Integer.valueOf(i2)));
            this.f32850a.onAdRenderFail(str, i2);
        }
    }
}
