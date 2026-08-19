package com.meishu.sdk.platform.bd.recycler;

import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.meishu.sdk.core.ad.recycler.a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.platform.bd.BDPlatformError;
import java.util.List;

/* loaded from: classes4.dex */
public class BDRecyclerListener implements BaiduNativeManager.FeedAdListener {
    private static final String TAG = "BDRecyclerListener";
    private BDRecyclerAd bdRecyclerAd;
    private BDRecyclerLoader bdRecyclerLoader;
    private int count;
    private List<NativeResponse> list;
    private a meishuAdListener;

    public BDRecyclerListener(a aVar, BDRecyclerLoader bDRecyclerLoader, int i2) {
        this.meishuAdListener = aVar;
        this.bdRecyclerLoader = bDRecyclerLoader;
    }

    public List<NativeResponse> getList() {
        return this.list;
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    public void onLpClosed() {
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    public void onNativeFail(int i2, String str, NativeResponse nativeResponse) {
        try {
            LogUtil.e(TAG, "onNativeFail: code=" + i2 + ", msg=" + str);
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.bdRecyclerLoader.getSdkAdInfo()).post(this.meishuAdListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNativeLoad(java.util.List<com.baidu.mobads.sdk.api.NativeResponse> r7) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishu.sdk.platform.bd.recycler.BDRecyclerListener.onNativeLoad(java.util.List):void");
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    public void onNoAd(int i2, String str, NativeResponse nativeResponse) {
        try {
            LogUtil.e(TAG, "onNativeFail: code=" + i2 + ", msg=" + str);
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.bdRecyclerLoader.getSdkAdInfo()).post(this.meishuAdListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    public void onVideoDownloadFailed() {
    }

    @Override // com.baidu.mobads.sdk.api.BaiduNativeManager.FeedAdListener
    public void onVideoDownloadSuccess() {
    }

    public void onNativeFail(int i2, String str) {
        try {
            LogUtil.e(TAG, "onNativeFail: code=" + i2 + ", msg=" + str);
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.bdRecyclerLoader.getSdkAdInfo()).post(this.meishuAdListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onNoAd(int i2, String str) {
        try {
            LogUtil.e(TAG, "onNativeFail: code=" + i2 + ", msg=" + str);
            if (str == null || str.startsWith("exception")) {
                return;
            }
            new BDPlatformError(str, this.bdRecyclerLoader.getSdkAdInfo()).post(this.meishuAdListener);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
