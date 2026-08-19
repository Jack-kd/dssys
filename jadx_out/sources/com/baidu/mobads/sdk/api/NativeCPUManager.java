package com.baidu.mobads.sdk.api;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.ae;
import com.baidu.mobads.sdk.internal.br;
import com.baidu.mobads.sdk.internal.bv;
import java.util.HashMap;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class NativeCPUManager {
    private static final String TAG = "NativeCPUManager";
    private CPUAdListener mCPUAdListener;
    private ae mCPUAdProd;
    private Context mContext;
    private int mPageSize = 10;
    private HashMap<String, Object> mParams = new HashMap<>();

    public interface CPUAdListener {
        void onAdError(String str, int i2);

        void onAdLoaded(List<IBasicCPUData> list);

        void onDisLikeAdClick(int i2, String str);

        void onExitLp();

        void onLpCustomEventCallBack(HashMap<String, Object> map, DataPostBackListener dataPostBackListener);

        void onVideoDownloadFailed();

        void onVideoDownloadSuccess();
    }

    public interface DataPostBackListener {
        void postback(JSONObject jSONObject);
    }

    public NativeCPUManager(Context context, String str, CPUAdListener cPUAdListener) {
        this.mCPUAdProd = null;
        if (context == null || TextUtils.isEmpty(str)) {
            bv.a().c(TAG, "Init params error!");
            if (cPUAdListener != null) {
                cPUAdListener.onAdError("Input params error.", br.INTERFACE_USE_PROBLEM.b());
                return;
            }
            return;
        }
        this.mCPUAdListener = cPUAdListener;
        this.mContext = context;
        ae aeVar = new ae(context, str, this);
        this.mCPUAdProd = aeVar;
        aeVar.a(cPUAdListener);
    }

    public void loadAd(int i2, int i3, boolean z2) {
        loadAd(i2, new int[]{i3}, z2);
    }

    public void openAppActivity(String str) {
        ae aeVar = this.mCPUAdProd;
        if (aeVar != null) {
            aeVar.a(str);
            this.mCPUAdProd.a();
        }
    }

    public void setPageSize(int i2) {
        if (i2 <= 0 || i2 > 20) {
            bv.a().c(TAG, "Input page size is wrong which should be in (0,20]!");
        } else {
            this.mPageSize = i2;
        }
    }

    public void setRequestParameter(CPUAdRequest cPUAdRequest) {
        if (cPUAdRequest == null || cPUAdRequest.getExtras() == null) {
            return;
        }
        this.mParams = cPUAdRequest.getExtras();
    }

    public void setRequestTimeoutMillis(int i2) {
        ae aeVar = this.mCPUAdProd;
        if (aeVar != null) {
            aeVar.a(i2);
        }
    }

    private void loadAd(int i2, int[] iArr, boolean z2) {
        if (i2 <= 0 || iArr == null) {
            bv.a().c(TAG, "LoadAd with terrible params!");
            return;
        }
        ae aeVar = this.mCPUAdProd;
        if (aeVar != null) {
            aeVar.a(i2, this.mPageSize, iArr, z2, this.mParams);
            this.mCPUAdProd.e();
            this.mCPUAdProd.a();
        }
    }
}
