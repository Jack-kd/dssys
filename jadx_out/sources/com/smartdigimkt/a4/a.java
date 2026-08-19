package com.smartdigimkt.a4;

import android.view.View;

/* loaded from: classes5.dex */
public abstract class a {
    private static final int DEFAULT_IMPRESSION_MIN_PERCENTAGE_VIEWED = 50;
    private static final int DEFAULT_IMPRESSION_MIN_TIME_VIEWED_MS = 500;
    private boolean mImpressionRecorded;
    private int mImpressionMinTimeViewed = 500;
    private int mImpressionMinPercentageViewed = 50;
    private Integer mImpressionMinVisiblePx = null;

    public int getImpressionMinPercentageViewed() {
        return this.mImpressionMinPercentageViewed;
    }

    public final Integer getImpressionMinVisiblePx() {
        return this.mImpressionMinVisiblePx;
    }

    public final boolean isImpressionRecorded() {
        return this.mImpressionRecorded;
    }

    public abstract void recordImpression(View view);

    public final void setImpressionRecorded() {
        this.mImpressionRecorded = true;
    }
}
