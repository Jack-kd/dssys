package com.smartdigimkt.c5;

import com.smartdigimkt.sdk.api.SDMAdConst;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class m {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f39792a;

    static {
        int[] iArr = new int[SDMAdConst.CURRENCY.values().length];
        f39792a = iArr;
        try {
            iArr[SDMAdConst.CURRENCY.RMB.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f39792a[SDMAdConst.CURRENCY.RMB_CENT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f39792a[SDMAdConst.CURRENCY.USD.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
