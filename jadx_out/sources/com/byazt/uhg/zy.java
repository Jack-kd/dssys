package com.byazt.uhg;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum zy {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* renamed from: w, reason: collision with root package name */
    public final String f26230w;

    zy(String str) {
        this.f26230w = str;
    }

    public static zy hp(String str) throws IOException {
        zy zyVar = HTTP_1_0;
        if (str.equals(zyVar.f26230w)) {
            return zyVar;
        }
        zy zyVar2 = HTTP_1_1;
        if (str.equals(zyVar2.f26230w)) {
            return zyVar2;
        }
        zy zyVar3 = HTTP_2;
        if (str.equals(zyVar3.f26230w)) {
            return zyVar3;
        }
        zy zyVar4 = SPDY_3;
        if (str.equals(zyVar4.f26230w)) {
            return zyVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f26230w;
    }
}
