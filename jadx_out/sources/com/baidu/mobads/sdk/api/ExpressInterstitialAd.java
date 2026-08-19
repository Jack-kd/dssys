package com.baidu.mobads.sdk.api;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.baidu.mobads.sdk.internal.a;
import com.baidu.mobads.sdk.internal.az;
import com.baidu.mobads.sdk.internal.ct;
import com.baidu.mobads.sdk.internal.df;
import java.util.LinkedHashMap;

/* loaded from: classes2.dex */
public class ExpressInterstitialAd {
    private InterstitialAdDislikeListener mAdDislikeListener;
    private String mAdPlaceId;
    private String mAppsid;
    private int mBidFloor;
    private Context mContext;
    private ExpressInterstitialListener mExpressInterstitialListener;
    private int mHeight;
    private InterAdDownloadWindowListener mInterAdDownloadWindowListener;
    private long mLoadTime;
    private df mNativeInterstitialAdProd;
    private RequestParameters mRequestParameters;
    private boolean mUseDialogContainer;
    private boolean mUseDialogFrame;
    private int mWidth;
    private boolean onlyFetchAd;

    public interface InterAdDownloadWindowListener {
        void adDownloadWindowClose();

        void adDownloadWindowShow();

        void onADPermissionClose();

        void onADPermissionShow();

        void onADPrivacyClick();

        void onADPrivacyClose();
    }

    public interface InterstitialAdDislikeListener {
        void interstitialAdDislikeClick();
    }

    public ExpressInterstitialAd(Context context, String str) {
        this(context, str, 500, 600);
    }

    private void initNativeInterstitialAdProd() {
        System.currentTimeMillis();
        ct ctVar = new ct(this.mContext);
        ctVar.a(new ct.a() { // from class: com.baidu.mobads.sdk.api.ExpressInterstitialAd.1
            @Override // com.baidu.mobads.sdk.internal.ct.a
            public void dispatchTouchEvent(MotionEvent motionEvent) {
                ExpressInterstitialAd.this.mNativeInterstitialAdProd.a(motionEvent);
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            public void onAttachedToWindow() {
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            @SuppressLint({"MissingSuperCall"})
            public void onDetachedFromWindow() {
                if (ExpressInterstitialAd.this.mNativeInterstitialAdProd != null) {
                    ExpressInterstitialAd.this.mNativeInterstitialAdProd.o();
                }
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            public boolean onKeyDown(int i2, KeyEvent keyEvent) {
                return i2 == 4;
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            public void onLayoutComplete(int i2, int i3) {
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            public void onWindowFocusChanged(boolean z2) {
            }

            @Override // com.baidu.mobads.sdk.internal.ct.a
            public void onWindowVisibilityChanged(int i2) {
            }
        });
        this.mNativeInterstitialAdProd = new df(this.mContext, ctVar, this.mAdPlaceId);
        if (!TextUtils.isEmpty(this.mAppsid)) {
            this.mNativeInterstitialAdProd.f11180q = this.mAppsid;
        }
        df dfVar = this.mNativeInterstitialAdProd;
        dfVar.f11181r = this.mBidFloor;
        dfVar.f11460t = this.onlyFetchAd;
        dfVar.a(this.mExpressInterstitialListener);
        this.mNativeInterstitialAdProd.a(this.mInterAdDownloadWindowListener);
        this.mNativeInterstitialAdProd.a(this.mAdDislikeListener);
        this.mNativeInterstitialAdProd.b(this.mUseDialogFrame);
        this.mNativeInterstitialAdProd.c(this.mUseDialogContainer);
        RequestParameters requestParameters = this.mRequestParameters;
        if (requestParameters != null) {
            this.mNativeInterstitialAdProd.a(requestParameters);
        }
    }

    private void reallyLoad() {
        initNativeInterstitialAdProd();
        this.mNativeInterstitialAdProd.a();
    }

    public void biddingFail(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            dfVar.a(false, linkedHashMap, biddingListener);
        }
    }

    public void biddingSuccess(LinkedHashMap<String, Object> linkedHashMap, BiddingListener biddingListener) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            dfVar.a(true, linkedHashMap, biddingListener);
        }
    }

    public void destroy() {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar == null) {
            return;
        }
        dfVar.p();
    }

    public Object getAdDataForKey(String str) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            return dfVar.a(str);
        }
        return null;
    }

    public String getBiddingToken() {
        this.onlyFetchAd = true;
        initNativeInterstitialAdProd();
        return this.mNativeInterstitialAdProd.l();
    }

    public String getECPMLevel() {
        a aVarX;
        df dfVar = this.mNativeInterstitialAdProd;
        return (dfVar == null || (aVarX = dfVar.x()) == null) ? "" : aVarX.A();
    }

    public String getPECPM() {
        a aVarX;
        df dfVar = this.mNativeInterstitialAdProd;
        return (dfVar == null || (aVarX = dfVar.x()) == null) ? "" : aVarX.B();
    }

    public boolean isReady() {
        IAdInterListener iAdInterListener;
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar == null || (iAdInterListener = dfVar.f11176m) == null) {
            return false;
        }
        return iAdInterListener.isAdReady();
    }

    public void load() {
        this.mLoadTime = System.currentTimeMillis();
        if (this.mContext == null) {
            az.c().e("ExpressInterstitialAd", "请传一个非空的context再进行load");
        } else {
            this.onlyFetchAd = true;
            reallyLoad();
        }
    }

    public void loadBiddingAd(String str) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            dfVar.c(str);
        }
    }

    public void setAdDislikeListener(InterstitialAdDislikeListener interstitialAdDislikeListener) {
        this.mAdDislikeListener = interstitialAdDislikeListener;
    }

    public void setAppSid(String str) {
        this.mAppsid = str;
    }

    public void setBidFloor(int i2) {
        this.mBidFloor = i2;
    }

    @Deprecated
    public void setBiddingData(String str) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            dfVar.b(str);
        }
    }

    public void setDialogFrame(boolean z2) {
        this.mUseDialogFrame = z2;
    }

    public void setDownloadListener(InterAdDownloadWindowListener interAdDownloadWindowListener) {
        this.mInterAdDownloadWindowListener = interAdDownloadWindowListener;
    }

    public void setLoadListener(ExpressInterstitialListener expressInterstitialListener) {
        this.mExpressInterstitialListener = expressInterstitialListener;
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar != null) {
            dfVar.a(expressInterstitialListener);
        }
    }

    public void setRequestParameters(RequestParameters requestParameters) {
        this.mRequestParameters = requestParameters;
    }

    public void show() {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar == null) {
            return;
        }
        if (dfVar.f()) {
            this.mNativeInterstitialAdProd.g();
        } else {
            this.mNativeInterstitialAdProd.f((IOAdEvent) null);
        }
    }

    public void useUseDialogContainer(boolean z2) {
        this.mUseDialogContainer = z2;
    }

    public ExpressInterstitialAd(Context context, String str, int i2, int i3) {
        this.mUseDialogFrame = false;
        this.mBidFloor = -1;
        this.mUseDialogContainer = false;
        this.mContext = context;
        this.mAdPlaceId = str;
        this.mWidth = i2;
        this.mHeight = i3;
    }

    public void show(Activity activity) {
        df dfVar = this.mNativeInterstitialAdProd;
        if (dfVar == null) {
            return;
        }
        dfVar.a(activity);
        show();
    }
}
