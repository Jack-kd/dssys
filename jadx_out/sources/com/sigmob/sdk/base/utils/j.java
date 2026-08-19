package com.sigmob.sdk.base.utils;

import android.util.Base64;
import android.webkit.WebSettings;
import com.czhj.sdk.common.utils.ReflectionUtil;
import com.czhj.sdk.logger.SigmobLogger;

/* loaded from: classes4.dex */
public class j {
    public static void a(String str, WebSettings webSettings) {
        a(str, webSettings, com.sigmob.sdk.base.n.f36418D);
        a(str, webSettings, com.sigmob.sdk.base.n.f36420F);
    }

    public static void a(String str, WebSettings webSettings, String str2) {
        try {
            ReflectionUtil.MethodBuilder methodBuilder = new ReflectionUtil.MethodBuilder(webSettings, new String(Base64.decode(str2, 2)));
            methodBuilder.addParam(Boolean.TYPE, Boolean.TRUE);
            methodBuilder.execute();
        } catch (Exception e2) {
            SigmobLogger.e(str, "executeJsMethod: error = " + e2.getMessage(), new Object[0]);
        }
    }
}
