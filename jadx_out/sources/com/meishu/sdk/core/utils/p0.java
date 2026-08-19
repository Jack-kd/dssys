package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.activity.MeishuOpenDeepLinkActivity;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.MSAdConfig;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.util.Arrays;

/* loaded from: classes4.dex */
public class p0 {

    /* renamed from: a, reason: collision with root package name */
    public a f31949a;

    public interface a {
        void a(boolean z2);
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final p0 f31950a = new p0();
    }

    public static void a(boolean z2) {
        try {
            p0 p0Var = b.f31950a;
            a aVar = p0Var.f31949a;
            if (aVar != null) {
                aVar.a(z2);
                p0Var.f31949a = null;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str, String str2, String[] strArr, String str3, String[] strArr2, boolean z2) {
        Intent intentA;
        if (z2) {
            MeishuOpenDeepLinkActivity.startOpenDeepLinkActivity(context, str, str2, strArr, str3);
            return;
        }
        com.meishu.sdk.core.service.d.a(new m0(-1L));
        try {
            try {
            } catch (Throwable th) {
                p1.a(strArr2, str, th);
                th.printStackTrace();
            }
            if (TextUtils.isEmpty(str3)) {
                intentA = null;
            } else {
                String strA = w1.a(str3, str);
                if (TextUtils.isEmpty(strA)) {
                    strA = str;
                }
                intentA = Intent.parseUri(strA, 0);
            }
            if (intentA != null && intentA.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                a(strArr, 1);
            } else {
                intentA = a(context, str, str2, strArr, strArr2);
            }
            if (r0.f31975f != null) {
                f.a(str, intentA);
            }
            context.startActivity(intentA);
        } catch (Throwable th2) {
            LogUtil.d("ClickHandler", "jumpDeepLink2 error");
            p1.a(strArr2, str, th2);
            th2.printStackTrace();
            a(false);
        }
    }

    public static Intent a(Context context, String str, String str2, String[] strArr, String[] strArr2) {
        byte[] bArrDigest;
        try {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    byte[] bArrA = g1.a(str2);
                    if (bArrA != null && bArrA.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        AdSdk.adConfig();
                        sb.append(MSAdConfig.initUUID());
                        try {
                            bArrDigest = MessageDigest.getInstance("SHA-256").digest(sb.toString().getBytes("UTF-8"));
                        } catch (Exception unused) {
                            bArrDigest = null;
                        }
                        if (Arrays.equals(bArrA, bArrDigest)) {
                            Intent intentA = v1.a(str, context);
                            if (intentA != null && intentA.resolveActivity(AdSdk.getContext().getPackageManager()) != null) {
                                a(strArr, 1);
                                return intentA;
                            }
                            a(strArr, 3);
                            return a(str);
                        }
                    }
                    a(strArr, 2);
                    Intent intentA2 = v1.a(str, context);
                    return (intentA2 == null || intentA2.resolveActivity(AdSdk.getContext().getPackageManager()) == null) ? a(str) : intentA2;
                } catch (Throwable unused2) {
                    a(strArr, 3);
                    return a(str);
                }
            }
            a(strArr, 4);
            return a(str);
        } catch (Throwable th) {
            p1.a(strArr2, str, th);
            try {
                a(strArr, 3);
                return a(str);
            } catch (Throwable th2) {
                th2.printStackTrace();
                th.printStackTrace();
                return null;
            }
        }
    }

    public static void a(String[] strArr, int i2) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        f.a(i0.b(strArr, i2));
    }

    public static Intent a(String str) throws URISyntaxException {
        Intent uri = Intent.parseUri(str, 0);
        uri.addCategory("android.intent.category.BROWSABLE");
        uri.setComponent(null);
        uri.setSelector(null);
        uri.setFlags(C.ENCODING_PCM_MU_LAW);
        return uri;
    }
}
