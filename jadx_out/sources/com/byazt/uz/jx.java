package com.byazt.uz;

/* loaded from: classes3.dex */
public enum jx {
    JSON(".json"),
    ZIP(".zip");

    public final String jx;

    jx(String str) {
        this.jx = str;
    }

    public String hp() {
        return ".temp" + this.jx;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.jx;
    }
}
