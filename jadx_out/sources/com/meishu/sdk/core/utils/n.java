package com.meishu.sdk.core.utils;

import android.app.NotificationManager;
import android.content.Context;
import android.text.TextUtils;
import com.meishu.sdk.core.download.a;

/* loaded from: classes4.dex */
public class n extends com.meishu.sdk.core.safe.l {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f31938a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f31939b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DownloadUtils f31940c;

    public n(DownloadUtils downloadUtils, String str, Context context) {
        this.f31940c = downloadUtils;
        this.f31938a = str;
        this.f31939b = context;
    }

    @Override // com.meishu.sdk.core.safe.l
    public void safeRun() {
        String[] strArr;
        try {
            l0 l0Var = DownloadUtils.f31749h.get(Integer.valueOf(DownloadUtils.a(this.f31938a)));
            if (l0Var != null && (strArr = l0Var.f31928e) != null) {
                LogUtil.d("DownloadUtils", "Report send dn_succ");
                for (String str : strArr) {
                    if (!TextUtils.isEmpty(str)) {
                        a0.a(this.f31939b, str, new i());
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        int iA = DownloadUtils.a(this.f31938a);
        a.C0651a.f31541a.a(this.f31938a);
        NotificationManager notificationManager = this.f31940c.f31754a;
        if (notificationManager != null) {
            notificationManager.cancel(iA);
        }
        DownloadUtils.a(this.f31939b, this.f31938a);
        DownloadUtils.f31749h.remove(Integer.valueOf(DownloadUtils.a(this.f31938a)));
    }
}
