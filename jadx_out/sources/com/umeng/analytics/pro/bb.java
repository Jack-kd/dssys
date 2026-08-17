package com.umeng.analytics.pro;

import android.content.Context;
import com.umeng.analytics.pro.ba;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.SdkVersion;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class bb implements ba.a {

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final bb f48771a = new bb();

        private a() {
        }
    }

    public static bb a() {
        return a.f48771a;
    }

    @Override // com.umeng.analytics.pro.ba.a
    public void a(Object obj, int i2) {
        JSONObject jSONObjectA;
        if (i2 != 101) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "[CkHandler]: unknown event type!");
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "[CkHandler]:recv CkDispatch.CHECK event!");
        Context appContext = UMGlobalContext.getAppContext();
        if (!UMConfigure.getInitStatus() || appContext == null || UMConfigure.needSendZcfgEnv(appContext) || com.umeng.commonsdk.utils.c.a() || FieldManager.allow(com.umeng.commonsdk.utils.d.aw) || SdkVersion.SDK_TYPE == 1 || !(obj instanceof bc)) {
            return;
        }
        try {
            JSONObject jSONObjectG = ((bc) obj).g();
            if (!jSONObjectG.has("eID") || (jSONObjectA = bd.a(appContext)) == null) {
                return;
            }
            bd.a(jSONObjectA, jSONObjectG);
            aw.a(new ar(ar.f48704c, jSONObjectA, "appkey"), 0L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
        }
    }
}
