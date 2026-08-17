package com.beizi.fusion;

/* loaded from: classes2.dex */
public enum nm implements pc {
    ERROR_INVALID_URL(1, "url invalid"),
    ERROR_NULL_MODEL_BUILD(2, "model builder is null"),
    ERROR_EMPTY_CONTENT(3, "request content is null");


    /* renamed from: a, reason: collision with root package name */
    private final int f15351a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15352b;

    nm(int i2, String str) {
        this.f15351a = i2;
        this.f15352b = str;
    }

    @Override // com.beizi.fusion.pc
    public String a() {
        return this.f15352b;
    }

    @Override // com.beizi.fusion.pc
    public int b() {
        return this.f15351a;
    }
}
