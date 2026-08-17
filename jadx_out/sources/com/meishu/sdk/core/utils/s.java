package com.meishu.sdk.core.utils;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.core.content.FileProvider;
import com.meishu.sdk.core.service.MeishuFileProvider;

/* loaded from: classes4.dex */
public class s {

    /* renamed from: a, reason: collision with root package name */
    public static String f31995a;

    @RequiresApi(24)
    public static boolean a(Context context, String str) {
        try {
            boolean zA = a(context, context.getPackageName() + com.anythink.core.common.d.i.f2495E + "MeishuFileProvider", MeishuFileProvider.class);
            if (zA) {
                f31995a = context.getPackageName() + com.anythink.core.common.d.i.f2495E + "MeishuFileProvider";
            }
            if (!zA && !TextUtils.isEmpty(str) && (zA = a(context, str, FileProvider.class))) {
                f31995a = str;
            }
            if (!zA) {
                LogUtil.w("s", a("cGxlYXNlIHNldHRpbmcgRmlsZVByb3ZpZGVy"));
            }
            return zA;
        } catch (Throwable th) {
            th.printStackTrace();
            LogUtil.e("s", "", th);
            return false;
        }
    }

    public static boolean a(Context context, String str, Class cls) {
        XmlResourceParser xmlResourceParserLoadXmlMetaData;
        try {
            ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(str, 128);
            if (providerInfoResolveContentProvider != null && cls.isAssignableFrom(Class.forName(providerInfoResolveContentProvider.name))) {
                try {
                    xmlResourceParserLoadXmlMetaData = providerInfoResolveContentProvider.loadXmlMetaData(context.getPackageManager(), a("YW5kcm9pZC5zdXBwb3J0LkZJTEVfUFJPVklERVJfUEFUSFM="));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                if (xmlResourceParserLoadXmlMetaData == null) {
                    LogUtil.e("s", a("TWlzc2luZyBhbmRyb2lkLnN1cHBvcnQuRklMRV9QUk9WSURFUl9QQVRIUyBtZXRhLWRhdGE="));
                    return true;
                }
                boolean z2 = false;
                while (true) {
                    int next = xmlResourceParserLoadXmlMetaData.next();
                    if (next == 1) {
                        break;
                    }
                    if (next == 2) {
                        String name = xmlResourceParserLoadXmlMetaData.getName();
                        xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "name");
                        String attributeValue = xmlResourceParserLoadXmlMetaData.getAttributeValue(null, "path");
                        if ("root-path".equals(name)) {
                            if (com.anythink.core.common.d.i.f2495E.equals(attributeValue)) {
                                z2 = true;
                            }
                        } else if ("external-path".equals(name)) {
                            if (com.anythink.core.common.d.i.f2495E.equals(attributeValue)) {
                                z2 = true;
                            }
                        } else if ("external-files-path".equals(name) && (com.anythink.core.common.d.i.f2495E.equals(attributeValue) || "Download".equalsIgnoreCase(attributeValue))) {
                            z2 = true;
                        }
                    }
                }
                xmlResourceParserLoadXmlMetaData.close();
                if (!z2) {
                    LogUtil.w("s", a("cGxlYXNlIGFkZCA8ZXh0ZXJuYWwtZmlsZXMtcGF0aCBuYW1lPSJkb3dubG9hZCIgcGF0aD0iRG93bmxvYWQiLz4gaW4g") + "MeishuFileProvider");
                }
                return true;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return false;
    }

    public static String a(String str) {
        try {
            return new String(g1.a(str));
        } catch (Throwable unused) {
            return "";
        }
    }
}
