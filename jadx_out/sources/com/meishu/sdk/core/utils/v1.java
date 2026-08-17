package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.meishu.sdk.core.loader.aac;

/* loaded from: classes4.dex */
public class v1 {
    public static Intent a(String str, Context context) {
        String strB;
        String strB2;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Intent uri = Intent.parseUri(str, 0);
            uri.addCategory("android.intent.category.BROWSABLE");
            uri.setComponent(null);
            uri.setSelector(null);
            uri.setFlags(C.ENCODING_PCM_MU_LAW);
            if (context != null && uri.resolveActivity(context.getPackageManager()) == null) {
                return null;
            }
            ah ahVar = new ah();
            try {
                strB = g1.b(aac.dd);
            } catch (Exception e2) {
                e2.printStackTrace();
                strB = "";
            }
            ahVar.d(strB);
            try {
                strB2 = g1.b(aac.df);
            } catch (Exception e3) {
                e3.printStackTrace();
                strB2 = "";
            }
            return (Intent) ahVar.c(uri, strB2, "");
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
