package com.byazt.pg;

import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public interface r {

    public interface hp {
        void handleMsg(Message message);
    }

    void executeFastTask(Runnable runnable);

    void executeFastTask(Runnable runnable, int i2);

    void executeNormalTask(Runnable runnable);

    ExecutorService getAIDLExecutor();

    Handler getCsjMainHandler();

    ExecutorService getFastExecutor();

    Handler getIOHandler();

    ExecutorService getIoExecutor();

    Handler getMainHandler();

    ExecutorService getNormalExecutor();

    ScheduledExecutorService getScheduledThreadPool();

    ExecutorService newCachedThreadPool(int i2, int i3);

    Handler obtainHandler(hp hpVar, @Nullable String str);

    Handler obtainHandler(@Nullable String str);

    void postIOTask(Runnable runnable);

    void recycleHandler(@NonNull Handler handler);

    void updateSettings(JSONObject jSONObject);
}
