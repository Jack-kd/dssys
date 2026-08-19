package com.meishu.sdk.platform.ms.recycler;

import android.content.Context;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;

/* loaded from: classes4.dex */
public class MsCustomVideo {
    private static final String TAG = "MsCustomVideo";
    private com.meishu.sdk.meishu_ad.nativ.f adSlot;
    private Context context;
    private boolean isStarted;

    public MsCustomVideo(com.meishu.sdk.meishu_ad.nativ.f fVar) {
        this.adSlot = fVar;
    }

    public void reportVideoClose() {
        try {
            LogUtil.d(TAG, "send onVideoClose");
            String[] strArr = this.adSlot.f32409u;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoComplete() {
        try {
            LogUtil.d(TAG, "send onVideoComplete");
            String[] strArr = this.adSlot.f32402n;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoMute() {
        try {
            LogUtil.d(TAG, "send onVideoMute");
            String[] strArr = this.adSlot.f32406r;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoOneHalf() {
        try {
            LogUtil.d(TAG, "send onVideoOneHalf");
            String[] strArr = this.adSlot.f32400l;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoOneQuarter() {
        try {
            LogUtil.d(TAG, "send onVideoOneQuarter");
            String[] strArr = this.adSlot.f32399k;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoPause() {
        try {
            LogUtil.d(TAG, "send onVideoPause");
            String[] strArr = this.adSlot.f32403o;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoReplay() {
        try {
            LogUtil.d(TAG, "send onVideoReplay");
            String[] strArr = this.adSlot.f32408t;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoResume() {
        try {
            LogUtil.d(TAG, "send onVideoResume");
            String[] strArr = this.adSlot.f32404p;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoSkip() {
        try {
            LogUtil.d(TAG, "send onVideoSkip");
            String[] strArr = this.adSlot.f32405q;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoStart() {
        try {
            LogUtil.d(TAG, "send onVideoStart");
            if (this.isStarted) {
                return;
            }
            String[] strArr = this.adSlot.f32398j;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            this.isStarted = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoThreeQuarter() {
        try {
            LogUtil.d(TAG, "send onVideoThreeQuarter");
            String[] strArr = this.adSlot.f32401m;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void reportVideoUnmute() {
        try {
            LogUtil.d(TAG, "send onVideoUnmute");
            String[] strArr = this.adSlot.f32407s;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(AdSdk.getContext(), i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
