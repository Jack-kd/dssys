package com.czhj.volley;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public final class Header {

    /* renamed from: a, reason: collision with root package name */
    private final String f29587a;

    /* renamed from: b, reason: collision with root package name */
    private final String f29588b;

    public Header(String str, String str2) {
        this.f29587a = str;
        this.f29588b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Header.class == obj.getClass()) {
            Header header = (Header) obj;
            if (TextUtils.equals(this.f29587a, header.f29587a) && TextUtils.equals(this.f29588b, header.f29588b)) {
                return true;
            }
        }
        return false;
    }

    public final String getName() {
        return this.f29587a;
    }

    public final String getValue() {
        return this.f29588b;
    }

    public int hashCode() {
        return (this.f29587a.hashCode() * 31) + this.f29588b.hashCode();
    }

    public String toString() {
        return "Header[name=" + this.f29587a + ",value=" + this.f29588b + "]";
    }
}
