package com.anythink.core.common.h;

/* loaded from: classes2.dex */
public final class r extends bl {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4357a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f4358b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final String f4359c = "return_flag";

    /* renamed from: d, reason: collision with root package name */
    public static final String f4360d = "sdk_native_im_w";

    /* renamed from: e, reason: collision with root package name */
    public static final String f4361e = "sdk_native_im_h";
    private String aD;
    private String aE;
    private int aF = 1;
    private int aG;

    private String T() {
        return this.aE;
    }

    private String U() {
        return this.aD;
    }

    private int V() {
        return this.aF;
    }

    private int W() {
        return this.aG;
    }

    public final void a(String str) {
        this.aE = str;
    }

    public final void b(String str) {
        this.aD = str;
    }

    public final void a(int i2) {
        this.aF = i2;
    }

    public final void b(int i2) {
        this.aG = i2;
    }

    @Override // com.anythink.core.common.h.w
    public final int a() {
        return this.aF == 1 ? 2 : 4;
    }
}
