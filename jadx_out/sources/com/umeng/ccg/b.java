package com.umeng.ccg;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f49773a = true;

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f49774b = true;

    /* renamed from: c, reason: collision with root package name */
    private static volatile boolean f49775c = true;

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f49776d = true;

    /* renamed from: e, reason: collision with root package name */
    private static volatile boolean f49777e = true;

    /* renamed from: f, reason: collision with root package name */
    private static volatile boolean f49778f = true;

    /* renamed from: h, reason: collision with root package name */
    private static Map<String, Boolean> f49780h = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    private static Object f49779g = new Object();

    public static boolean a() {
        boolean z2;
        synchronized (f49779g) {
            z2 = f49773a;
        }
        return z2;
    }

    public static boolean b() {
        boolean z2;
        synchronized (f49779g) {
            z2 = f49774b;
        }
        return z2;
    }

    public static boolean c() {
        boolean z2;
        synchronized (f49779g) {
            z2 = f49775c;
        }
        return z2;
    }

    public static boolean d() {
        boolean z2;
        synchronized (f49779g) {
            z2 = f49776d;
        }
        return z2;
    }

    public static boolean e() {
        boolean z2;
        synchronized (f49779g) {
            z2 = f49778f;
        }
        return z2;
    }

    public static void a(boolean z2) {
        synchronized (f49779g) {
            f49776d = z2;
            f49780h.put(a.f49751e, Boolean.valueOf(z2));
        }
    }

    public static void b(boolean z2) {
        synchronized (f49779g) {
            f49777e = z2;
            f49780h.put(a.f49755i, Boolean.valueOf(z2));
        }
    }

    public static void c(boolean z2) {
        synchronized (f49779g) {
            f49778f = z2;
            f49780h.put(a.f49760n, Boolean.valueOf(z2));
        }
    }

    public static boolean a(String str) {
        boolean zBooleanValue;
        synchronized (f49779g) {
            try {
                zBooleanValue = f49780h.containsKey(str) ? f49780h.get(str).booleanValue() : true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zBooleanValue;
    }
}
