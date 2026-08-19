package com.baidu.mobads.sdk.internal;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static volatile c f11275a;

    public interface a {

        /* renamed from: a, reason: collision with root package name */
        public static final String f11276a = "remote_adserv";

        /* renamed from: b, reason: collision with root package name */
        public static final String f11277b = "remote_novel";
    }

    private c() {
    }

    public static c a() {
        if (f11275a == null) {
            synchronized (c.class) {
                try {
                    if (f11275a == null) {
                        f11275a = new c();
                    }
                } finally {
                }
            }
        }
        return f11275a;
    }

    public as a(String str) {
        return new as(str);
    }
}
