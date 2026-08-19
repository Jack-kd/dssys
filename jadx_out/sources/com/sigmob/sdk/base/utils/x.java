package com.sigmob.sdk.base.utils;

/* loaded from: classes4.dex */
public class x {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36654a = "WebUtils";

    public static boolean a(String str) {
        if (s.a((CharSequence) str)) {
            return true;
        }
        try {
        } catch (Exception e2) {
            k.f(f36654a, "isUnsafeUrl: error = " + e2.getMessage(), new Object[0]);
        }
        if (!str.contains("../") && !str.contains("..%2F") && !str.contains("..\\")) {
            if (!str.contains("..%5C")) {
                return false;
            }
        }
        return true;
    }
}
