package com.czhj.devicehelper.cnoaid;

/* loaded from: classes3.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private static final String f29121a = "OAID";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f29122b = false;

    private g() {
    }

    public static void a() {
        f29122b = true;
    }

    public static void a(Object obj) {
        if (f29122b) {
            if (obj == null) {
                obj = "<null>";
            }
            obj.toString();
        }
    }
}
