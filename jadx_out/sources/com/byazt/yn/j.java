package com.byazt.yn;

/* loaded from: classes3.dex */
public enum j {
    LEFT(0),
    TOP(1),
    RIGHT(2),
    BOTTOM(3),
    START(4),
    END(5),
    HORIZONTAL(6),
    VERTICAL(7),
    ALL(8);


    /* renamed from: e, reason: collision with root package name */
    public final int f28144e;

    j(int i2) {
        this.f28144e = i2;
    }

    public int hp() {
        return this.f28144e;
    }
}
