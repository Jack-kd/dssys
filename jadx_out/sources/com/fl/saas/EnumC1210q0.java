package com.fl.saas;

import java.io.Serializable;

/* renamed from: com.fl.saas.q0, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC1210q0 implements Serializable {
    VERTICAL(0),
    HORIZONTAL(1),
    ENVELOPE(2);


    /* renamed from: a, reason: collision with root package name */
    private final int f30628a;

    EnumC1210q0(int i2) {
        this.f30628a = i2;
    }

    public int b() {
        return this.f30628a;
    }

    public static EnumC1210q0 a(int i2) {
        for (EnumC1210q0 enumC1210q0 : values()) {
            if (enumC1210q0.b() == i2) {
                return enumC1210q0;
            }
        }
        return VERTICAL;
    }
}
