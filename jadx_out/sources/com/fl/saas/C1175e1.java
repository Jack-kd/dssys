package com.fl.saas;

import java.io.File;

/* renamed from: com.fl.saas.e1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1175e1 extends AbstractC1180g0 {

    /* renamed from: b, reason: collision with root package name */
    private final long f30375b;

    public C1175e1(long j2) {
        if (j2 <= 0) {
            throw new IllegalArgumentException("Max size must be positive number!");
        }
        this.f30375b = j2;
    }

    @Override // com.fl.saas.AbstractC1180g0
    public boolean a(File file, long j2, int i2) {
        return j2 <= this.f30375b;
    }
}
