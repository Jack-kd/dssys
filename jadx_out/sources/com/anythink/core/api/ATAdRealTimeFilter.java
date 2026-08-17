package com.anythink.core.api;

import java.util.List;

/* loaded from: classes.dex */
public class ATAdRealTimeFilter {
    private static ATAdRealTimeFilter sInstance;
    private Long biddingWaitMaxTime;
    private RLFilterListener filterListener;

    public static abstract class RLFilterListener {
        public abstract ATAdFilter filterAdByBiddingResult(List<ATAdInfo> list, boolean z2);
    }

    public static ATAdRealTimeFilter getInstance() {
        ATAdRealTimeFilter aTAdRealTimeFilter;
        synchronized (ATAdRealTimeFilter.class) {
            try {
                if (sInstance == null) {
                    sInstance = new ATAdRealTimeFilter();
                }
                aTAdRealTimeFilter = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aTAdRealTimeFilter;
    }

    public Long getBiddingWaitMaxTime() {
        return this.biddingWaitMaxTime;
    }

    public RLFilterListener getRLFilterListener() {
        return this.filterListener;
    }

    public void registerAdRealTimeFilterListener(RLFilterListener rLFilterListener) {
        this.filterListener = rLFilterListener;
    }

    public void registerAdRealTimeFilterListener(RLFilterListener rLFilterListener, Long l2) {
        this.filterListener = rLFilterListener;
        this.biddingWaitMaxTime = l2;
    }
}
