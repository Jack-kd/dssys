package com.baidu.mobads.sdk.api;

import android.content.Context;
import com.baidu.mobads.sdk.internal.dh;
import com.baidu.mobads.sdk.internal.dj;
import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public class FullScreenVideoAd {
    private static final String TAG = "FullScreenVideoAd";
    private dj mAdProd;
    private final Context mContext;
    private RequestParameters mRequestParameters;

    public interface FullScreenVideoAdListener extends ScreenVideoAdListener {
        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onAdClick();

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onAdClose(float f2);

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onAdFailed(String str);

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onAdShow();

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onAdSkip(float f2);

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onVideoDownloadFailed();

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void onVideoDownloadSuccess();

        @Override // com.baidu.mobads.sdk.api.ScreenVideoAdListener
        void playCompletion();
    }

    public FullScreenVideoAd(Context context, String str, FullScreenVideoAdListener fullScreenVideoAdListener) {
        this(context, str, fullScreenVideoAdListener, false);
    }

    public void biddingFail(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.a(false, linkedHashMap, biddingListener);
        }
    }

    public void biddingSuccess(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.a(true, linkedHashMap, biddingListener);
        }
    }

    public String getBiddingToken() {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            return djVar.l();
        }
        return null;
    }

    public String getECPMLevel() {
        dj djVar = this.mAdProd;
        return djVar != null ? djVar.g() : "";
    }

    public String getPECPM() {
        dj djVar = this.mAdProd;
        return djVar != null ? djVar.x() : "";
    }

    public boolean isReady() {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            return djVar.f();
        }
        return false;
    }

    public synchronized void load() {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.a();
        }
    }

    public void loadBiddingAd(String str) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.c(str);
        }
    }

    public void setAppSid(String str) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.h(str);
        }
    }

    public void setBidFloor(int i2) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.f11181r = i2;
        }
    }

    @Deprecated
    public void setBiddingData(String str) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.b(str);
        }
    }

    public void setRequestParameters(RequestParameters requestParameters) {
        dj djVar;
        this.mRequestParameters = requestParameters;
        if (requestParameters == null || (djVar = this.mAdProd) == null) {
            return;
        }
        djVar.a(requestParameters);
    }

    public synchronized void show() {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.e();
        }
    }

    public FullScreenVideoAd(Context context, String str, FullScreenVideoAdListener fullScreenVideoAdListener, boolean z2) {
        this.mContext = context;
        dh dhVar = new dh(context, str, z2);
        this.mAdProd = dhVar;
        dhVar.a(fullScreenVideoAdListener);
    }

    public synchronized void show(Context context) {
        dj djVar = this.mAdProd;
        if (djVar != null) {
            djVar.a(context);
        }
    }
}
