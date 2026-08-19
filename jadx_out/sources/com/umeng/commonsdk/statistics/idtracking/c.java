package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.be;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;

/* loaded from: classes5.dex */
public class c extends a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f50290a = be.b().b(be.f48809l);

    /* renamed from: b, reason: collision with root package name */
    public static final String f50291b = "key_umeng_sp_honor_oaid";

    /* renamed from: c, reason: collision with root package name */
    private static final String f50292c = "honor_oaid";

    /* renamed from: d, reason: collision with root package name */
    private Context f50293d;

    public c(Context context) {
        super(f50292c);
        this.f50293d = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (!UMConfigure.shouldCollectOaid()) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>>*** HonorOaidTracker.getId(): oaid开关已关闭。");
            return null;
        }
        if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            try {
                SharedPreferences sharedPreferences = this.f50293d.getSharedPreferences(f50290a, 0);
                if (sharedPreferences != null) {
                    return sharedPreferences.getString(f50291b, "");
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
