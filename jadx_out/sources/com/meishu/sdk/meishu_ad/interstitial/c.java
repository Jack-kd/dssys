package com.meishu.sdk.meishu_ad.interstitial;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.anythink.core.common.d.i;
import com.meishu.sdk.R;
import com.meishu.sdk.activity.SdkInterstitialActivity;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.h0;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.v0;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.core.ad.a implements com.meishu.sdk.platform.ms.c {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.interstitial.b f32247a;

    /* renamed from: b, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.interstitial.a f32248b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f32249c;

    /* renamed from: d, reason: collision with root package name */
    public int f32250d;

    /* renamed from: e, reason: collision with root package name */
    public int f32251e;

    /* renamed from: f, reason: collision with root package name */
    public int f32252f;

    /* renamed from: g, reason: collision with root package name */
    public long f32253g;

    /* renamed from: h, reason: collision with root package name */
    public long f32254h;

    /* renamed from: i, reason: collision with root package name */
    public long f32255i;

    public class a implements a0.i {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Activity f32256a;

        public a(Activity activity) {
            this.f32256a = activity;
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void a() {
            LogUtil.d("NativeInterstitialAd", "videoLinkValid=false");
            c.this.f32254h = System.currentTimeMillis();
            try {
                if (!TextUtils.isEmpty(c.this.a().getVideo_cover())) {
                    c.this.a().setAdPatternType(1);
                    c.this.a().getImageUrls()[0] = c.this.a().getVideo_cover();
                    i0.b(c.this.a().getMonitorUrl());
                    c cVar = c.this;
                    com.meishu.sdk.core.cache.a.a(cVar.a().getVideo_cover(), new e(cVar, this.f32256a), true);
                    return;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            com.meishu.sdk.meishu_ad.interstitial.a aVar = c.this.f32248b;
            if (aVar != null) {
                ((com.meishu.sdk.platform.ms.interstitial.a) aVar).onAdRenderFail("插屏视频渲染失败", ErrorCodeUtil.RES_LOAD_ERROR.intValue());
            }
        }

        @Override // com.meishu.sdk.core.utils.a0.i
        public void success() {
            LogUtil.d("NativeInterstitialAd", "videoLinkValid=true");
            c cVar = c.this;
            Activity activity = this.f32256a;
            cVar.getClass();
            ExecutorService executorService = h0.f31906a;
            h0.b.f31910a.a(new d(cVar, activity));
        }
    }

    public c(com.meishu.sdk.platform.ms.interstitial.b bVar, com.meishu.sdk.meishu_ad.interstitial.a aVar) {
        super(null, "MS");
        this.f32250d = 1;
        this.f32247a = bVar;
        this.f32248b = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(c cVar, Context context, int i2) {
        cVar.getClass();
        LogUtil.d("NativeInterstitialAd", "actType=" + cVar.a().getAct_type());
        SdkInterstitialActivity.setSdkAd(cVar);
        SdkInterstitialActivity.setAdWrapper(cVar.f32247a);
        SdkInterstitialActivity.setMsAd(cVar);
        Intent intent = new Intent(context, (Class<?>) SdkInterstitialActivity.class);
        intent.putExtra("isVideoAutoPlay", ((InterstitialAdLoader) cVar.f32247a.getAdLoader()).getIsVideoAutoPlay());
        intent.putExtra("isClickToClose", ((InterstitialAdLoader) cVar.f32247a.getAdLoader()).getIsClickToClose());
        intent.putExtra("act_type", cVar.a().getAct_type());
        intent.putExtra("layout_type", cVar.f32250d);
        intent.putExtra("layout_width", cVar.f32252f);
        intent.putExtra("layout_height", cVar.f32251e);
        context.startActivity(intent);
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdType b() {
        return AdType.INTERSTITIAL;
    }

    @Override // com.meishu.sdk.platform.ms.c
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public b a() {
        return (b) this.f32247a.f32888a;
    }

    public void d() {
        com.meishu.sdk.platform.ms.interstitial.b bVar = this.f32247a;
        if (bVar == null || bVar.getLoaderListener() == 0 || this.f32249c) {
            return;
        }
        this.f32249c = true;
        v0.a(((b) this.f32247a.f32888a).getPosId(), 3);
        a().getMonitorUrl();
        String[] strArrB = i0.b(a().getMonitorUrl(), this.f32253g + i.f2495E + this.f32254h + i.f2495E + this.f32255i);
        try {
            i0.a(strArrB, this.adView.findViewById(R.id.ms_activity_sdk_interstitial_mediaContainer), (View) null);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (strArrB != null) {
            for (String str : strArrB) {
                if (!TextUtils.isEmpty(str)) {
                    int act_type = a().getAct_type();
                    if ((act_type & 2) == 2) {
                        act_type = (act_type - 2) | 1;
                    }
                    com.meishu.sdk.core.loader.a.a(this.f32247a.getContext(), i0.a(i0.a(str, act_type, AdType.INTERSTITIAL)));
                }
            }
        }
        try {
            this.f32247a.getConCurrentListener().onAdExposure();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (getInteractionListener() != null) {
            getInteractionListener().onAdExposure();
        }
    }

    @Override // com.meishu.sdk.platform.ms.c
    public Context getContext() {
        if (getAdView() != null) {
            getAdView().getContext();
        }
        return this.f32247a.getContext();
    }

    @Override // com.meishu.sdk.platform.ms.c
    public int getInteractionType() {
        return ((b) this.f32247a.f32888a).getInteractionType();
    }

    public final void a(Activity activity) {
        if (this.f32247a == null || activity == null) {
            return;
        }
        if (a().getAdPatternType() != 2) {
            com.meishu.sdk.core.cache.a.a(a().getImageUrls()[0], new e(this, activity), true);
        } else {
            this.f32253g = System.currentTimeMillis();
            a0.a(a().getImageUrls()[0], new a(activity));
        }
    }
}
