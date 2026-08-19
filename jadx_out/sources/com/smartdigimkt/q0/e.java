package com.smartdigimkt.q0;

import android.text.TextUtils;

/* loaded from: classes5.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f42663a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f42664b;

    public e(String str, boolean z2) {
        this.f42663a = str;
        this.f42664b = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == e.class) {
            e eVar = (e) obj;
            if (TextUtils.equals(this.f42663a, eVar.f42663a) && this.f42664b == eVar.f42664b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f42663a;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + (this.f42664b ? 1231 : 1237);
    }
}
