package com.smartdigimkt.y0;

import android.text.TextUtils;
import com.smartdigimkt.a1.t;
import com.smartdigimkt.j0.s;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class g extends j {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f45152a = new AtomicReference(d.f45130s);

    public static int a(int i2, int i3) {
        if (i2 > i3) {
            return 1;
        }
        return i3 > i2 ? -1 : 0;
    }

    public static boolean a(int i2, boolean z2) {
        int i3 = i2 & 7;
        if (i3 != 4) {
            return z2 && i3 == 3;
        }
        return true;
    }

    public static boolean a(s sVar, String str) {
        return str != null && TextUtils.equals(str, t.b(sVar.f41010y));
    }
}
