package com.byazt.c;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public interface hp {
    void changeLogLevel(int i2);

    void d(String str, String str2);

    void destroy();

    void e(String str, String str2);

    void e(String str, String str2, Throwable th);

    void e(String str, Throwable th);

    void execCloudManagerSafely();

    void fetchCommand();

    void i(String str, String str2);

    void initCLog(Context context, JSONObject jSONObject);

    void initCloudMessageManager(Context context, String str, String str2);

    void setOuterExecutorService(ScheduledExecutorService scheduledExecutorService);

    void setUploadHost(String str);

    void v(String str, String str2);

    void w(String str, String str2);

    void w(String str, String str2, Throwable th);

    void w(String str, Throwable th);
}
