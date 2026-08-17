package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.be;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;

/* loaded from: classes5.dex */
public class i extends a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f50314a = be.b().b(be.f48809l);

    /* renamed from: b, reason: collision with root package name */
    public static final String f50315b = "key_umeng_sp_oaid";

    /* renamed from: c, reason: collision with root package name */
    public static final String f50316c = "key_umeng_sp_oaid_required_time";

    /* renamed from: d, reason: collision with root package name */
    private static final String f50317d = "oaid";

    /* renamed from: e, reason: collision with root package name */
    private Context f50318e;

    public i(Context context) {
        super("oaid");
        this.f50318e = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (!UMConfigure.shouldCollectOaid()) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** OaidTracking.getId(): oaid开关已关闭。");
            return null;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            try {
                SharedPreferences sharedPreferences = this.f50318e.getSharedPreferences(f50314a, 0);
                if (sharedPreferences != null) {
                    return sharedPreferences.getString(f50315b, "");
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
