package com.anythink.core.common.m.a;

import java.util.Map;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public String f5563a;

    /* renamed from: b, reason: collision with root package name */
    public String f5564b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f5565c;

    /* renamed from: d, reason: collision with root package name */
    public String f5566d;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, String> f5567e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f5568a;

        /* renamed from: b, reason: collision with root package name */
        private String f5569b;

        /* renamed from: c, reason: collision with root package name */
        private byte[] f5570c;

        /* renamed from: d, reason: collision with root package name */
        private String f5571d;

        /* renamed from: e, reason: collision with root package name */
        private Map<String, String> f5572e;

        public final a a(String str) {
            this.f5568a = str;
            return this;
        }

        public final a b(String str) {
            this.f5569b = str;
            return this;
        }

        public final a c(String str) {
            this.f5571d = str;
            return this;
        }

        public final a a(byte[] bArr) {
            this.f5570c = bArr;
            return this;
        }

        public final a a(Map<String, String> map) {
            this.f5572e = map;
            return this;
        }

        public final i a() {
            return new i(this, (byte) 0);
        }
    }

    public /* synthetic */ i(a aVar, byte b3) {
        this(aVar);
    }

    private i(a aVar) {
        this.f5563a = aVar.f5568a;
        this.f5564b = aVar.f5569b;
        this.f5565c = aVar.f5570c;
        this.f5566d = aVar.f5571d;
        this.f5567e = aVar.f5572e;
    }
}
