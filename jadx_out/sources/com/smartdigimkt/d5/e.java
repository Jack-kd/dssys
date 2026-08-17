package com.smartdigimkt.d5;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.anythink.core.common.m.f;
import com.smartdigimkt.sdk.basead.ui.web.WebLandPageActivity;
import com.smartdigimkt.sdk.core.SDKContext;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes5.dex */
public abstract class e {
    public static void a(String str) {
        List listA;
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268468224);
            Context contextD = SDKContext.getInstance().d();
            if (contextD != null) {
                com.smartdigimkt.a5.a aVarA = com.smartdigimkt.z4.d.c().a();
                if (aVarA != null && !aVarA.f39371f && aVarA.f39376h0 != 1 && (listA = a(contextD, intent)) != null && listA.size() > 1) {
                    String str2 = ((ResolveInfo) listA.get(0)).activityInfo != null ? ((ResolveInfo) listA.get(0)).activityInfo.packageName : "";
                    if (!TextUtils.isEmpty(str2)) {
                        intent.setPackage(str2);
                    }
                }
                contextD.startActivity(intent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str) {
        try {
            WebLandPageActivity.a(context, str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static List a(Context context, Intent intent) {
        return (SDKContext.getInstance().a(f.bG) || SDKContext.getInstance().a(f.bH) || context == null) ? new ArrayList() : context.getPackageManager().queryIntentActivities(intent, 131072);
    }
}
