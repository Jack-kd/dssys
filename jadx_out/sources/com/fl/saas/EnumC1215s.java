package com.fl.saas;

import java.io.Serializable;

/* renamed from: com.fl.saas.s, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC1215s implements Serializable {
    FLOAT_TOP_RIGHT(0),
    IMAGE_BOTTOM_CENTER(1),
    IMAGE_TOP_RIGHT(2);


    /* renamed from: a, reason: collision with root package name */
    private final int f30647a;

    EnumC1215s(int i2) {
        this.f30647a = i2;
    }

    public int b() {
        return this.f30647a;
    }

    public static EnumC1215s a(int i2) {
        for (EnumC1215s enumC1215s : values()) {
            if (enumC1215s.b() == i2) {
                return enumC1215s;
            }
        }
        return FLOAT_TOP_RIGHT;
    }
}
