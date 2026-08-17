package com.sigmob.sdk.base.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.utils.FileUtil;
import com.sigmob.sdk.base.common.BaseBroadcastReceiver;
import com.sigmob.sdk.base.common.C1244a;
import com.sigmob.sdk.base.common.ad;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.IntentActions;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.utils.k;
import com.sigmob.sdk.base.utils.n;
import com.sigmob.sdk.base.utils.s;
import java.io.File;
import java.util.HashMap;

/* loaded from: classes4.dex */
class a extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36543a = "a";

    public String a(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageManager != null && packageInfo != null) {
            try {
                String strValueOf = String.valueOf(packageManager.getApplicationLabel(packageInfo.applicationInfo));
                k.f(f36543a, "getAppLabel: label = " + strValueOf, new Object[0]);
                return strValueOf;
            } catch (Throwable th) {
                k.f(f36543a, "getAppLabel: error = " + th.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00df  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(android.content.Context r14, android.content.Intent r15) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.services.a.onReceive(android.content.Context, android.content.Intent):void");
    }

    private void a(Context context, PackageInfo packageInfo, String str) {
        ad.a((BaseAdUnit) null, PointCategory.APP_INSTALL_MONITOR, packageInfo, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Context context, BaseAdUnit baseAdUnit) {
        FileUtil.deleteFile(new File(n.a(context.getApplicationContext()), baseAdUnit.getApkName()).getAbsolutePath());
    }

    private void a(final Context context, final BaseAdUnit baseAdUnit, PackageInfo packageInfo) {
        com.sigmob.sdk.base.network.h.a(baseAdUnit, C1244a.f35654F);
        ad.a(baseAdUnit, PointCategory.APP_INSTALL_END, packageInfo, "1");
        HashMap map = new HashMap();
        map.put("result", "1");
        BaseBroadcastReceiver.a(context, baseAdUnit.getUuid(), map, IntentActions.ACTION_INTERSTITIAL_INSTALL_END);
        baseAdUnit.setApkPackageName(packageInfo.packageName);
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.base.services.h
            @Override // java.lang.Runnable
            public final void run() {
                a.a(context, baseAdUnit);
            }
        });
        s.a((CharSequence) baseAdUnit.getDeeplinkUrl());
    }
}
