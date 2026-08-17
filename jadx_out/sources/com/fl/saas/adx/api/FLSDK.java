package com.fl.saas.adx.api;

import android.content.Context;
import com.fl.saas.A;
import com.fl.saas.C1172d1;
import com.fl.saas.E0;
import com.fl.saas.adx.api.mixNative.NativeLoadListener;
import com.fl.saas.adx.base.exception.ErrorCodeConstant;
import com.fl.saas.adx.base.exception.FLError;
import com.fl.saas.adx.base.manager.MixNativeManager;
import com.fl.saas.adx.util.LogcatUtil;

/* loaded from: classes3.dex */
public class FLSDK {
    public static /* synthetic */ void a(Context context, AdParams adParams, NativeLoadListener nativeLoadListener) {
        try {
            E0.a().e();
            new MixNativeManager(context, adParams, nativeLoadListener).load();
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            if (nativeLoadListener != null) {
                nativeLoadListener.onAdFailed(FLError.create(ErrorCodeConstant.AD_DATA_ERROR, "ad request error"));
            }
        }
    }

    public static void loadMixNative(final Context context, final AdParams adParams, final NativeLoadListener nativeLoadListener) {
        if (!FLConfig.isInit()) {
            if (nativeLoadListener != null) {
                nativeLoadListener.onAdFailed(FLError.create(ErrorCodeConstant.INIT_ERROR, "Please initialize the SDK first"));
            }
        } else if (adParams == null || !A.a(adParams.getKey())) {
            C1172d1.a().b(new Runnable() { // from class: com.fl.saas.adx.api.a
                @Override // java.lang.Runnable
                public final void run() {
                    FLSDK.a(context, adParams, nativeLoadListener);
                }
            });
        } else if (nativeLoadListener != null) {
            nativeLoadListener.onAdFailed(FLError.create(ErrorCodeConstant.FREQUENCY_ERROR, "Request too frequently"));
        }
    }
}
