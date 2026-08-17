package com.smartdigimkt.k2;

import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class s {

    /* renamed from: m, reason: collision with root package name */
    public static volatile s f41339m;

    /* renamed from: a, reason: collision with root package name */
    public final String f41340a = s.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public final Object f41341b = new Object();

    /* renamed from: d, reason: collision with root package name */
    public boolean f41343d = true;

    /* renamed from: e, reason: collision with root package name */
    public int f41344e = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f41345f = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f41346g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f41347h = 0;

    /* renamed from: i, reason: collision with root package name */
    public float f41348i = 0.0f;

    /* renamed from: j, reason: collision with root package name */
    public float f41349j = 0.0f;

    /* renamed from: k, reason: collision with root package name */
    public float f41350k = 0.0f;

    /* renamed from: l, reason: collision with root package name */
    public final q f41351l = new q(this);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f41342c = new ArrayList();

    public static s a() {
        if (f41339m == null) {
            synchronized (s.class) {
                try {
                    if (f41339m == null) {
                        f41339m = new s();
                    }
                } finally {
                }
            }
        }
        return f41339m;
    }
}
