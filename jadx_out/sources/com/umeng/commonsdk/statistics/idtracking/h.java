package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class h extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50312a = "mac";

    /* renamed from: b, reason: collision with root package name */
    private Context f50313b;

    public h(Context context) {
        super("mac");
        this.f50313b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return DeviceConfig.getMac(this.f50313b);
        } catch (Exception e2) {
            if (AnalyticsConstants.UM_DEBUG) {
                e2.printStackTrace();
            }
            UMCrashManager.reportCrash(this.f50313b, e2);
            return null;
        }
    }
}
