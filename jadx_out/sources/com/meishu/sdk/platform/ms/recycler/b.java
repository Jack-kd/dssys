package com.meishu.sdk.platform.ms.recycler;

import android.content.Context;
import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.ad.recycler.RecyclerAdMediaListener;
import com.meishu.sdk.core.utils.C1242a;
import com.meishu.sdk.core.utils.LogUtil;
import com.meishu.sdk.core.utils.a0;
import com.meishu.sdk.core.utils.i0;

/* loaded from: classes4.dex */
public class b implements com.meishu.sdk.meishu_ad.nativ.e {

    /* renamed from: a, reason: collision with root package name */
    public RecyclerAdMediaListener f32914a;

    /* renamed from: b, reason: collision with root package name */
    public Context f32915b = AdSdk.getContext();

    /* renamed from: c, reason: collision with root package name */
    public com.meishu.sdk.meishu_ad.nativ.f f32916c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f32917d;

    public b(com.meishu.sdk.meishu_ad.nativ.f fVar, RecyclerAdMediaListener recyclerAdMediaListener) {
        this.f32916c = fVar;
        this.f32914a = recyclerAdMediaListener;
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onProgressUpdate(long j2, long j3) {
        RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onProgressUpdate(j2, j3);
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoComplete() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoComplete");
            String[] strArr = this.f32916c.f32402n;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
            if (recyclerAdMediaListener != null) {
                recyclerAdMediaListener.onVideoCompleted();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoError() {
        RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoError();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoLoaded() {
        RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
        if (recyclerAdMediaListener != null) {
            recyclerAdMediaListener.onVideoLoaded();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoMute() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoMute");
            String[] strArr = this.f32916c.f32406r;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoOneHalf() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoOneHalf");
            String[] strArr = this.f32916c.f32400l;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoOneQuarter() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoOneQuarter");
            String[] strArr = this.f32916c.f32399k;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoPause() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoPause");
            String[] strArr = this.f32916c.f32403o;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
            if (recyclerAdMediaListener != null) {
                recyclerAdMediaListener.onVideoPause();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoResume() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoResume");
            String[] strArr = this.f32916c.f32404p;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
            RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
            if (recyclerAdMediaListener != null) {
                recyclerAdMediaListener.onVideoResume();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoStart() {
        try {
            if (C1242a.b(this.f32916c)) {
                LogUtil.dev("MeishuAdMediaListenerAdapter", "has video start. return");
                return;
            }
            if (!this.f32917d) {
                LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoStart");
                this.f32917d = true;
                this.f32916c.setHasVideoStart(true);
                String[] strArr = this.f32916c.f32398j;
                if (strArr != null) {
                    for (String str : strArr) {
                        if (!TextUtils.isEmpty(str)) {
                            a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                        }
                    }
                }
            }
            RecyclerAdMediaListener recyclerAdMediaListener = this.f32914a;
            if (recyclerAdMediaListener != null) {
                recyclerAdMediaListener.onVideoStart();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoThreeQuarter() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoThreeQuarter");
            String[] strArr = this.f32916c.f32401m;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.meishu.sdk.meishu_ad.nativ.e
    public void onVideoUnmute() {
        try {
            LogUtil.d("MeishuAdMediaListenerAdapter", "send onVideoUnmute");
            String[] strArr = this.f32916c.f32407s;
            if (strArr != null) {
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f32915b, i0.a(str), new com.meishu.sdk.core.utils.i());
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
