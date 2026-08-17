package com.smartdigimkt.s4;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class b extends d {

    /* renamed from: c, reason: collision with root package name */
    public final String f43138c;

    /* renamed from: d, reason: collision with root package name */
    public final int f43139d;

    public b(String str, int i2) {
        this.f43139d = 8;
        this.f43138c = str;
        if (i2 == 1000) {
            this.f43139d = 8;
        } else if (i2 == 1001) {
            this.f43139d = 2;
        }
    }

    @Override // com.smartdigimkt.s4.d
    public final void a(int i2, String str, String str2) {
    }

    @Override // com.smartdigimkt.s4.d
    public final byte[] b() {
        return !TextUtils.isEmpty(this.f43138c) ? d.a(this.f43138c) : new byte[0];
    }

    @Override // com.smartdigimkt.s4.d
    public final int a() {
        return this.f43139d;
    }
}
