package com.meishu.sdk.core.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes4.dex */
public class SdkHandler {
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static final String TAG = "SdkHandler";
    private Handler mHandler;

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final SdkHandler f31791a = new SdkHandler();
    }

    public static SdkHandler getInstance() {
        return b.f31791a;
    }

    public static void runOnMainThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
            return;
        }
        Message messageObtain = Message.obtain(MAIN_HANDLER, runnable);
        try {
            messageObtain.setAsynchronous(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        messageObtain.sendToTarget();
    }

    public void postDelay(Runnable runnable, long j2) {
        this.mHandler.postDelayed(runnable, j2);
    }

    public void runOnUiThread(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    private SdkHandler() {
        this.mHandler = new Handler(Looper.getMainLooper());
    }
}
