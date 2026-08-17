package com.anythink.network.baidu.impression;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class BDImpressionController implements BDImpressionInterface {

    /* renamed from: e, reason: collision with root package name */
    private static final int f9419e = 0;

    /* renamed from: f, reason: collision with root package name */
    private static final int f9420f = 50;

    /* renamed from: a, reason: collision with root package name */
    private boolean f9421a;

    /* renamed from: b, reason: collision with root package name */
    private int f9422b = 0;

    /* renamed from: c, reason: collision with root package name */
    private int f9423c = 50;

    /* renamed from: d, reason: collision with root package name */
    private Integer f9424d = null;

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return this.f9423c;
    }

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.f9422b;
    }

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public final Integer getImpressionMinVisiblePx() {
        return this.f9424d;
    }

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.f9421a;
    }

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public abstract void recordImpression(View view);

    @Override // com.anythink.network.baidu.impression.BDImpressionInterface
    public final void setImpressionRecorded() {
        this.f9421a = true;
    }
}
