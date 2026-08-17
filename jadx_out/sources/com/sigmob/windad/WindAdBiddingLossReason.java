package com.sigmob.windad;

/* loaded from: classes5.dex */
public enum WindAdBiddingLossReason {
    LOSS_REASON_LOW_PRICE(2, "出价过低"),
    LOSS_REASON_RETURN_TIMEOUT(2000, "返回超时"),
    LOSS_REASON_RETURN_ERROR(2001, "广告素材格式错误");


    /* renamed from: a, reason: collision with root package name */
    private final int f39154a;
    private final String message;

    WindAdBiddingLossReason(int i2, String str) {
        this.f39154a = i2;
        this.message = str;
    }

    public int getCode() {
        return this.f39154a;
    }

    public String getMessage() {
        return this.message;
    }
}
