package com.smartdigimkt.w2;

import android.webkit.ConsoleMessage;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class s {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f44902a;

    static {
        int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
        f44902a = iArr;
        try {
            iArr[ConsoleMessage.MessageLevel.LOG.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f44902a[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f44902a[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f44902a[ConsoleMessage.MessageLevel.TIP.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f44902a[ConsoleMessage.MessageLevel.DEBUG.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
    }
}
