package com.anythink.network.meishu;

import android.content.Context;
import com.anythink.core.api.ATAdConst;
import com.anythink.network.meishu.MsNativeAd;
import com.meishu.sdk.core.ad.MsAdSlot;
import com.meishu.sdk.core.ad.draw.DrawAdEventListener;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.ad.draw.IDrawAd;
import com.meishu.sdk.core.utils.AdErrorInfo;
import com.meishu.sdk.core.utils.ResultBean;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes2.dex */
public class MsNativeDrawAd extends MsNativeAd {

    /* renamed from: a, reason: collision with root package name */
    private final MsNativeAd.AdListener f10012a;

    /* renamed from: b, reason: collision with root package name */
    private DrawAdLoader f10013b;

    /* renamed from: c, reason: collision with root package name */
    boolean f10014c;

    /* renamed from: d, reason: collision with root package name */
    private final int f10015d;

    public class a implements DrawAdEventListener {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10016a;

        public a(Context context) {
            this.f10016a = context;
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdError(AdErrorInfo adErrorInfo) {
            if (MsNativeDrawAd.this.f10012a != null) {
                MsNativeDrawAd.this.f10012a.onNativeAdFailToLoad(String.valueOf(adErrorInfo.getCode()), adErrorInfo.getMessage());
            }
        }

        @Override // com.meishu.sdk.core.ad.IAdEventListener
        public void onAdReady(IDrawAd iDrawAd) {
            ResultBean data;
            if (iDrawAd == null || iDrawAd.getDrawType() != 2) {
                if (MsNativeDrawAd.this.f10012a != null) {
                    MsNativeDrawAd.this.f10012a.onNativeAdFailToLoad("", "iDrawAd is not express");
                    return;
                }
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new MsATDrawAd(this.f10016a, iDrawAd));
            try {
                data = iDrawAd.getData();
            } catch (Exception unused) {
            }
            double d2 = data != null ? Double.parseDouble(data.getEcpm()) : 0.0d;
            if (MsNativeDrawAd.this.f10012a != null) {
                MsNativeDrawAd.this.f10012a.onNativeAdLoadSuccess(arrayList, iDrawAd, d2);
            }
        }
    }

    public MsNativeDrawAd(boolean z2, int i2, MsNativeAd.AdListener adListener) {
        this.f10012a = adListener;
        this.f10014c = z2;
        this.f10015d = i2;
    }

    @Override // com.anythink.network.meishu.MsNativeAd
    public void destroy() {
        DrawAdLoader drawAdLoader = this.f10013b;
        if (drawAdLoader != null) {
            drawAdLoader.destroy();
            this.f10013b = null;
        }
    }

    @Override // com.anythink.network.meishu.MsNativeAd
    public void loadAd(Context context, String str, Map<String, Object> map, Map<String, Object> map2) {
        int i2 = 0;
        try {
            try {
            } catch (Throwable th) {
                th.printStackTrace();
            }
            int i3 = map2.containsKey(ATAdConst.KEY.AD_WIDTH) ? Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString()) : 0;
            try {
                if (map2.containsKey(ATAdConst.KEY.AD_HEIGHT)) {
                    i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString());
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            MsAdSlot.Builder channel = new MsAdSlot.Builder().setPid(str).setChannel(MsATInitManager.CHANNEL);
            if (i3 != 0) {
                channel.setWidth(i3);
            }
            if (i2 != 0) {
                channel.setHeight(i2);
            }
            if (this.f10014c) {
                channel.setFetchCount(1);
            } else {
                channel.setFetchCount(this.f10015d);
            }
            DrawAdLoader drawAdLoader = new DrawAdLoader(context, channel.build(), new a(context));
            this.f10013b = drawAdLoader;
            drawAdLoader.loadAd();
        } catch (Exception e2) {
            MsNativeAd.AdListener adListener = this.f10012a;
            if (adListener != null) {
                adListener.onNativeAdFailToLoad("", "loadAd with exception:" + e2.getMessage());
            }
        }
    }
}
