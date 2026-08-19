package com.sigmob.sdk.videocache;

/* loaded from: classes4.dex */
public class p extends Exception {

    /* renamed from: a, reason: collision with root package name */
    private static final String f38954a = ". Version: 4.25.12";

    public p(String str) {
        super(str + f38954a);
    }

    public p(String str, Throwable th) {
        super(str + f38954a, th);
    }

    public p(Throwable th) {
        super("No explanation error. Version: 4.25.12", th);
    }
}
