package com.anythink.splashad.api;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public class ATSplashSkipInfo {
    public static final String TAG = "ATSplashSkipInfo";
    ATSplashSkipAdListener mATSplashSkipAdListener;
    long mCallbackInterval;
    ViewGroup mContainer;
    long mCountDownDuration;
    View mSkipView;

    public ATSplashSkipInfo(View view, long j2, long j3, ATSplashSkipAdListener aTSplashSkipAdListener) {
        this.mSkipView = view;
        this.mCountDownDuration = j2;
        this.mCallbackInterval = j3;
        this.mATSplashSkipAdListener = aTSplashSkipAdListener;
        if (j2 < 2000) {
            Log.e(TAG, "mCountDownDuration is less than or equal to 2000, reset to 2000");
            this.mCountDownDuration = 2000L;
        }
        long j4 = this.mCallbackInterval;
        if (j4 <= 0) {
            Log.e(TAG, "mCallbackInterval is less than or equal to 0, reset to 1000");
            this.mCallbackInterval = 1000L;
        } else if (j4 < 20) {
            Log.e(TAG, "mCallbackInterval is less than 10, reset to 20");
            this.mCallbackInterval = 20L;
        }
    }

    public boolean canUseCustomSkipView() {
        return this.mSkipView != null;
    }

    public void destroy() {
        View view = this.mSkipView;
        if (view != null) {
            view.setOnClickListener(null);
            this.mSkipView = null;
        }
        this.mATSplashSkipAdListener = null;
    }

    public ATSplashSkipAdListener getATSplashSkipAdListener() {
        return this.mATSplashSkipAdListener;
    }

    public long getCallbackInterval() {
        return this.mCallbackInterval;
    }

    public ViewGroup getContainer() {
        return this.mContainer;
    }

    public long getCountDownDuration() {
        return this.mCountDownDuration;
    }

    public View getSkipView() {
        return this.mSkipView;
    }

    public void setContainer(ViewGroup viewGroup) {
        this.mContainer = viewGroup;
    }

    public ATSplashSkipInfo(View view, ATSplashSkipAdListener aTSplashSkipAdListener) {
        this(view, 5000L, 1000L, aTSplashSkipAdListener);
    }
}
