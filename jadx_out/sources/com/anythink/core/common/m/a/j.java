package com.anythink.core.common.m.a;

import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public i f5573a;

    /* renamed from: b, reason: collision with root package name */
    public int f5574b;

    /* renamed from: c, reason: collision with root package name */
    public String f5575c;

    /* renamed from: d, reason: collision with root package name */
    public Throwable f5576d;

    /* renamed from: e, reason: collision with root package name */
    public k f5577e;

    /* renamed from: f, reason: collision with root package name */
    public Map<String, List<String>> f5578f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private i f5579a;

        /* renamed from: b, reason: collision with root package name */
        private int f5580b;

        /* renamed from: c, reason: collision with root package name */
        private String f5581c;

        /* renamed from: d, reason: collision with root package name */
        private Throwable f5582d;

        /* renamed from: e, reason: collision with root package name */
        private k f5583e;

        /* renamed from: f, reason: collision with root package name */
        private Map<String, List<String>> f5584f;

        public final a a(i iVar) {
            this.f5579a = iVar;
            return this;
        }

        public final a a(int i2) {
            this.f5580b = i2;
            return this;
        }

        public final a a(String str) {
            this.f5581c = str;
            return this;
        }

        public final a a(Throwable th) {
            this.f5582d = th;
            return this;
        }

        public final a a(k kVar) {
            this.f5583e = kVar;
            return this;
        }

        public final a a(Map<String, List<String>> map) {
            this.f5584f = map;
            return this;
        }

        public final j a() {
            j jVar = new j((byte) 0);
            jVar.f5573a = this.f5579a;
            jVar.f5574b = this.f5580b;
            jVar.f5575c = this.f5581c;
            jVar.f5576d = this.f5582d;
            jVar.f5577e = this.f5583e;
            jVar.f5578f = this.f5584f;
            return jVar;
        }
    }

    public /* synthetic */ j(byte b3) {
        this();
    }

    private boolean a() {
        int i2 = this.f5574b;
        return i2 == 200 || i2 == 201 || i2 == 204;
    }

    public final String toString() {
        return "NetBridgeResponse{request=" + this.f5573a + ", code=" + this.f5574b + ", errorMsg='" + this.f5575c + "', exception=" + this.f5576d + ", responseBody=" + this.f5577e + ", responseHeader=" + this.f5578f + '}';
    }

    private j() {
    }
}
