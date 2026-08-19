package com.anythink.core.common.inner.ui.e;

import android.content.Context;
import com.anythink.core.common.h.w;
import com.anythink.core.common.v.p;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f5188a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static final int f5189b = 2;

    /* renamed from: c, reason: collision with root package name */
    public static final int f5190c = 3;

    /* renamed from: d, reason: collision with root package name */
    public static final int f5191d = 4;

    /* renamed from: e, reason: collision with root package name */
    public static final int f5192e = 6;

    /* renamed from: f, reason: collision with root package name */
    public static final int f5193f = 7;

    public static int a(Context context, w wVar) {
        int iV = wVar.v();
        return (iV == 1 || iV == 4) ? p.a(context, "myoffer_cta_install_now", "string") : p.a(context, "myoffer_cta_learn_more", "string");
    }

    private static int a(Context context, int i2) {
        return (i2 == 1 || i2 == 4) ? p.a(context, "myoffer_shake_full_title_download_type", "string") : p.a(context, "myoffer_shake_full_title", "string");
    }
}
