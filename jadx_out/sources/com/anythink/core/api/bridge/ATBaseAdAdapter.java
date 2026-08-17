package com.anythink.core.api.bridge;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfo;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingNotice;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationBidManager;
import com.anythink.core.common.h.n;
import com.anythink.core.common.l.d.b;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class ATBaseAdAdapter extends ATBaseAdInternalAdapter {
    private void cleanLoadListener() {
        this.mBiddingListener = null;
        this.mLoadListener = null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public int baseOnAdapterBridgeVersion() {
        return 1;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public String closeAd() {
        return "";
    }

    public String getAdCustomExt() {
        b bVar = this.serverExtraInfo;
        return bVar != null ? bVar.d() : "";
    }

    public Map<String, Object> getAdExtraInfoMap() {
        return null;
    }

    public BaseAd getBaseAdObject(Context context) {
        return null;
    }

    public MediationBidManager getBidManager() {
        return null;
    }

    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        if (aTBidRequestInfoListener != null) {
            aTBidRequestInfoListener.onFailed(ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE);
        }
    }

    public final int getDismissType() {
        return this.mDismissType;
    }

    public String getILRD() {
        return null;
    }

    public ATInitMediation getMediationInitManager() {
        return null;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return null;
    }

    public final String getShowId() {
        n trackingInfo = getTrackingInfo();
        return trackingInfo != null ? trackingInfo.A() : "";
    }

    public final String getUserCustomData() {
        return this.mUserData;
    }

    public final String getUserId() {
        return this.mUserId;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        return false;
    }

    public void internalFormatShow(Activity activity, ViewGroup viewGroup, ATCommonImpressionListener aTCommonImpressionListener) {
    }

    public final void notifyATLoadFail(String str, String str2) {
        String str3;
        if (this.mBiddingListener != null) {
            if (TextUtils.isEmpty(str)) {
                str3 = str2;
            } else {
                str3 = str + "|" + str2;
            }
            this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str3), null);
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }

    @Override // com.anythink.core.common.d.b.a
    public void onCreate(Activity activity) {
    }

    @Override // com.anythink.core.common.d.b.a
    public void onDestroy(Activity activity) {
    }

    @Override // com.anythink.core.common.d.b.a
    public void onPause(Activity activity) {
    }

    @Override // com.anythink.core.common.d.b.a
    public void onResume(Activity activity) {
    }

    @Override // com.anythink.core.common.d.b.a
    public void onStart(Activity activity) {
    }

    @Override // com.anythink.core.common.d.b.a
    public void onStop(Activity activity) {
    }

    public void releaseLoadResource() {
        cleanLoadListener();
    }

    public final void setFetchAdTimeout(int i2) {
        this.mFetchAdTimeout = i2;
    }

    public final void setRequestNum(int i2) {
        if (i2 > 0) {
            this.mRequestNum = i2;
        }
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean setUserDataConsent(Context context, boolean z2, boolean z3) {
        return false;
    }

    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        return false;
    }

    @Override // com.anythink.core.api.bridge.IATBaseAdAdapter
    public boolean supportImpressionCallback() {
        return true;
    }

    public final void notifyATLoadFail(String str, String str2, ATBiddingNotice aTBiddingNotice, ATAdConst.CURRENCY currency) {
        String str3;
        if (this.mBiddingListener != null) {
            if (TextUtils.isEmpty(str)) {
                str3 = str2;
            } else {
                str3 = str + "|" + str2;
            }
            this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str3, aTBiddingNotice, currency), null);
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }
}
