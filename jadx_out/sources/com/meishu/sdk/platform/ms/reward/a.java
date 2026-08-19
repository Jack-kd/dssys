package com.meishu.sdk.platform.ms.reward;

import android.text.TextUtils;
import com.meishu.sdk.activity.MeishuRewardVideoPlayerActivity;
import com.meishu.sdk.core.ad.AdSlot;
import com.meishu.sdk.core.ad.AdType;
import com.meishu.sdk.core.loader.IAdLoadListener;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i;
import com.meishu.sdk.core.utils.i0;
import com.meishu.sdk.core.utils.v0;
import com.meishu.sdk.meishu_ad.nativ.f;
import com.meishu.sdk.platform.ms.d;
import com.meishu.sdk.platform.ms.g;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class a implements com.meishu.sdk.meishu_ad.nativ.a {

    /* renamed from: a, reason: collision with root package name */
    public IAdLoadListener f33090a;

    /* renamed from: b, reason: collision with root package name */
    public g f33091b;

    /* renamed from: c, reason: collision with root package name */
    public f f33092c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f33093d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f33094e;

    /* renamed from: f, reason: collision with root package name */
    public com.meishu.sdk.platform.ms.a f33095f;

    public a(g gVar, IAdLoadListener iAdLoadListener, f fVar) {
        this.f33091b = gVar;
        this.f33090a = iAdLoadListener;
        this.f33092c = fVar;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.meishu.sdk.core.loader.c] */
    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADExposure() {
        try {
            if (C1242a.a((AdSlot) this.f33092c)) {
                LogUtil.dev("AdListenerAdapter", "has exp. return");
                return;
            }
            if (this.f33093d) {
                return;
            }
            this.f33093d = true;
            this.f33092c.setHasExposed(true);
            v0.a(this.f33091b.getAdLoader().getPosId(), 3);
            String[] monitorUrl = this.f33091b.f32888a.getMonitorUrl();
            i0.a(monitorUrl);
            if (monitorUrl != null) {
                LogUtil.d("AdListenerAdapter", "send onAdExposure");
                for (String str : monitorUrl) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f33091b.getContext(), i0.a(i0.a(str, this.f33092c.getAct_type(), this.f33091b instanceof b ? AdType.REWARD : AdType.FULL_SCREEN_VIDEO)), new i());
                    }
                }
            }
            IAdLoadListener iAdLoadListener = this.f33090a;
            if (iAdLoadListener != null) {
                iAdLoadListener.onAdExposure();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onADLoaded(List<com.meishu.sdk.meishu_ad.nativ.b> list) {
        List<com.meishu.sdk.meishu_ad.nativ.b> list2 = list;
        try {
            if (this.f33090a == null || list2 == null || list2.isEmpty()) {
                return;
            }
            com.meishu.sdk.platform.ms.a aVar = new com.meishu.sdk.platform.ms.a(this.f33091b, list2.get(0), this.f33092c, this);
            this.f33095f = aVar;
            this.f33090a.onAdReady(aVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.m0
    public void onAdRenderFail(String str, int i2) {
        try {
            this.f33094e = Boolean.TRUE;
            if (this.f33091b.f32888a.getErrorUrl() != null) {
                a0.a(this.f33091b.f32888a.getErrorUrl()[0], Integer.valueOf(i2), str);
            }
            com.meishu.sdk.platform.ms.a aVar = this.f33095f;
            if (aVar != null) {
                MeishuRewardVideoPlayerActivity.clearRewardMediaView();
                aVar.f32830a = null;
            }
            try {
                MeishuRewardVideoPlayerActivity.clearRewardMediaView();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            IAdLoadListener iAdLoadListener = this.f33090a;
            if (iAdLoadListener != null) {
                iAdLoadListener.onAdPlatformError(new d(str, Integer.valueOf(i2)));
                this.f33090a.onAdRenderFail(str, i2);
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
