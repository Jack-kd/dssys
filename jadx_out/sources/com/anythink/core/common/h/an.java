package com.anythink.core.common.h;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class an {

    /* renamed from: a, reason: collision with root package name */
    private final String f3772a;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, List<a>> f3773b;

    /* renamed from: c, reason: collision with root package name */
    private Map<String, Integer> f3774c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final String f3775a;

        /* renamed from: b, reason: collision with root package name */
        private final int f3776b;

        public a(String str, int i2) {
            this.f3775a = str;
            this.f3776b = i2;
        }

        public final String a() {
            return this.f3775a;
        }

        public final int b() {
            return this.f3776b;
        }
    }

    public an(String str) {
        this.f3772a = str;
    }

    private String c() {
        return this.f3772a;
    }

    public final Map<String, List<a>> a() {
        return this.f3773b;
    }

    public final Map<String, Integer> b() {
        return this.f3774c;
    }

    public final void a(Map<String, List<a>> map) {
        this.f3773b = map;
    }

    public final void b(Map<String, Integer> map) {
        this.f3774c = map;
    }
}
