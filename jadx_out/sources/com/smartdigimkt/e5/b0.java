package com.smartdigimkt.e5;

import com.smartdigimkt.sdk.api.format.SDMLossInfo;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class b0 {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f40079a;

    static {
        int[] iArr = new int[SDMLossInfo.LOSS_REASON.values().length];
        f40079a = iArr;
        try {
            iArr[SDMLossInfo.LOSS_REASON.LOSS_TO_AUCTION_FLOOR.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f40079a[SDMLossInfo.LOSS_REASON.LOSS_TO_EXPIRE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f40079a[SDMLossInfo.LOSS_REASON.LOSS_TO_HIGHER_BID.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f40079a[SDMLossInfo.LOSS_REASON.LOSS_TO_NORMAL.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
