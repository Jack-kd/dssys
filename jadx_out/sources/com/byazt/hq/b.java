package com.byazt.hq;

import java.io.IOException;

/* loaded from: classes2.dex */
public enum b {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");


    /* renamed from: w, reason: collision with root package name */
    public final String f20780w;

    b(String str) {
        this.f20780w = str;
    }

    public static b hp(String str) throws IOException {
        b bVar = HTTP_1_0;
        if (str.equals(bVar.f20780w)) {
            return bVar;
        }
        b bVar2 = HTTP_1_1;
        if (str.equals(bVar2.f20780w)) {
            return bVar2;
        }
        b bVar3 = HTTP_2;
        if (str.equals(bVar3.f20780w)) {
            return bVar3;
        }
        b bVar4 = SPDY_3;
        if (str.equals(bVar4.f20780w)) {
            return bVar4;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f20780w;
    }
}
