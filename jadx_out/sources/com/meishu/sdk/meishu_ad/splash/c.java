package com.meishu.sdk.meishu_ad.splash;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.gson.Gson;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.exception.ErrorCodeUtil;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.SdkHandler;
import com.meishu.sdk.core.utils.p1;
import com.meishu.sdk.core.utils.q;
import com.meishu.sdk.meishu_ad.nativ.NormalMediaView;
import com.qq.e.comm.pi.IReward;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class c extends com.meishu.sdk.core.ad.splash.c implements com.meishu.sdk.meishu_ad.splash.b {

    /* renamed from: a, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.splash.a f32514a;

    /* renamed from: b, reason: collision with root package name */
    public d f32515b;

    /* renamed from: c, reason: collision with root package name */
    public SplashSkipView f32516c;

    /* renamed from: d, reason: collision with root package name */
    public NormalMediaView f32517d;

    /* renamed from: e, reason: collision with root package name */
    public MeishuSplashRootView f32518e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f32519f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f32520g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f32521h;

    /* renamed from: i, reason: collision with root package name */
    public List<b> f32522i;

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            SplashSkipView splashSkipView = c.this.f32516c;
            if (splashSkipView != null) {
                splashSkipView.c();
            }
        }
    }

    public interface b {
        void a(ViewGroup viewGroup);
    }

    public c(d dVar, com.meishu.sdk.platform.ms.splash.a aVar, boolean z2) {
        super(null, "MS");
        this.f32522i = new ArrayList();
        this.f32515b = dVar;
        this.f32514a = aVar;
    }

    @Override // com.meishu.sdk.meishu_ad.splash.b, com.meishu.sdk.platform.ms.c
    public AdSlot a() {
        return this.f32515b;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public AdType b() {
        return AdType.SPLASH;
    }

    public void c() {
        if (this.adContainer == null) {
            SdkHandler.getInstance().runOnUiThread(new q(this.f32515b.getErrorUrl(), ErrorCodeUtil.RES_LOAD_ERROR.intValue(), "开屏容器为空"));
        }
        if (this.f32519f || this.adContainer == null) {
            try {
                p1.b(this.f32515b.getEventUrl(), ErrorCodeUtil.RENDER_AD_INTERRUPTED, "广告重复展示");
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        View view = this.adView;
        if (view != null && view.getParent() != null && (this.adView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adView.getParent()).removeView(this.adView);
        }
        this.adContainer.addView(this.adView);
        this.f32518e.setVisibility(0);
        try {
            Gson gson = new Gson();
            HashMap map = new HashMap();
            map.put("stepNum", 5);
            map.put("msg", "attach to the container");
            map.put("creativeType", Integer.valueOf(this.f32515b.getAdPatternType()));
            if (this.adView != null) {
                map.put(IReward.AD_VIEW, 1);
            } else {
                map.put(IReward.AD_VIEW, 0);
            }
            p1.a(this.f32515b.getErrorUrl(), gson.toJson(map));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        this.f32518e.post(new a());
        this.f32519f = true;
    }

    @Override // com.meishu.sdk.platform.ms.c
    public Context getContext() {
        return this.adView.getContext();
    }

    @Override // com.meishu.sdk.platform.ms.c
    public int getInteractionType() {
        return this.f32515b.getInteractionType();
    }

    @Override // com.meishu.sdk.core.ad.a, com.meishu.sdk.core.ad.IAd
    public void setAdView(View view) {
        this.adView = view;
    }

    @Override // com.meishu.sdk.core.ad.splash.c, com.meishu.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        setAdContainer(viewGroup);
        LogUtil.d("c", "开屏容器 width=" + viewGroup.getWidth() + ",开屏容器 height=" + viewGroup.getHeight());
        List<b> list = this.f32522i;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<b> it = this.f32522i.iterator();
        while (it.hasNext()) {
            it.next().a(viewGroup);
        }
        this.f32522i.clear();
    }
}
