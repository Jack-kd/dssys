package com.czhj.sdk.common.ThreadPool;

import android.os.Handler;
import com.czhj.sdk.common.utils.Preconditions;

/* loaded from: classes3.dex */
public abstract class RepeatingHandlerRunnable implements Runnable {
    private final Handler mHandler;
    private volatile boolean mIsRunning;
    protected volatile long mUpdateIntervalMillis;

    public RepeatingHandlerRunnable(Handler handler) {
        Preconditions.NoThrow.checkNotNull(handler);
        this.mHandler = handler;
    }

    public abstract void doWork();

    @Override // java.lang.Runnable
    public void run() {
        if (this.mIsRunning) {
            doWork();
            this.mHandler.postDelayed(this, this.mUpdateIntervalMillis);
        }
    }

    public void startRepeating(long j2) {
        Preconditions.NoThrow.checkArgument(j2 > 0, "intervalMillis must be greater than 0. Saw: " + j2);
        this.mUpdateIntervalMillis = j2;
        if (this.mIsRunning) {
            return;
        }
        this.mIsRunning = true;
        this.mHandler.post(this);
    }

    public void stop() {
        this.mIsRunning = false;
        this.mHandler.removeCallbacksAndMessages(null);
    }
}
