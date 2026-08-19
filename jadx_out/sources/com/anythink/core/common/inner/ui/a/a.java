package com.anythink.core.common.inner.ui.a;

import android.view.View;
import com.anythink.core.common.inner.ui.a.a.c;
import com.anythink.core.common.inner.ui.a.a.d;
import com.anythink.core.common.inner.ui.a.a.e;
import com.anythink.core.common.inner.ui.a.a.f;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final int f5075a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f5076b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f5077c = 3;

    /* renamed from: d, reason: collision with root package name */
    public static final int f5078d = 4;

    /* renamed from: e, reason: collision with root package name */
    public static final int f5079e = 5;

    private static b a(int i2, View view) {
        return i2 != 2 ? i2 != 3 ? i2 != 4 ? i2 != 5 ? new e(view) : new com.anythink.core.common.inner.ui.a.a.b(view) : new c(view) : new d(view) : new f(view);
    }
}
