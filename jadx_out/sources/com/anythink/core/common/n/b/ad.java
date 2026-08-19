package com.anythink.core.common.n.b;

import com.anythink.core.common.n.b.u;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ad {

    /* renamed from: a, reason: collision with root package name */
    final v f6676a;

    /* renamed from: b, reason: collision with root package name */
    final String f6677b;

    /* renamed from: c, reason: collision with root package name */
    final u f6678c;

    /* renamed from: d, reason: collision with root package name */
    final ae f6679d;

    /* renamed from: e, reason: collision with root package name */
    final Map<Class<?>, Object> f6680e;

    /* renamed from: f, reason: collision with root package name */
    private volatile d f6681f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        v f6682a;

        /* renamed from: b, reason: collision with root package name */
        String f6683b;

        /* renamed from: c, reason: collision with root package name */
        u.a f6684c;

        /* renamed from: d, reason: collision with root package name */
        ae f6685d;

        /* renamed from: e, reason: collision with root package name */
        Map<Class<?>, Object> f6686e;

        public a() {
            this.f6686e = Collections.EMPTY_MAP;
            this.f6683b = "GET";
            this.f6684c = new u.a();
        }

        private a b(String str, String str2) {
            this.f6684c.a(str, str2);
            return this;
        }

        private a c() {
            return a(com.sigmob.sdk.downloader.core.c.f37362a, (ae) null);
        }

        private a d() {
            return a("DELETE", com.anythink.core.common.n.b.a.c.f6219e);
        }

        public final a a(v vVar) {
            if (vVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f6682a = vVar;
            return this;
        }

        private a c(ae aeVar) {
            return a("PUT", aeVar);
        }

        public final a b(String str) {
            this.f6684c.b(str);
            return this;
        }

        private a b(ae aeVar) {
            return a("DELETE", aeVar);
        }

        private a d(ae aeVar) {
            return a("PATCH", aeVar);
        }

        public final a a(String str) {
            String str2;
            if (str != null) {
                if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                    str2 = "http:" + str.substring(3);
                } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                    str2 = "https:" + str.substring(4);
                } else {
                    str2 = str;
                }
                return a(v.d(str2));
            }
            throw new NullPointerException("url == null");
        }

        public final ad b() {
            if (this.f6682a != null) {
                return new ad(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a(ad adVar) {
            Map<Class<?>, Object> map = Collections.EMPTY_MAP;
            this.f6686e = map;
            this.f6682a = adVar.f6676a;
            this.f6683b = adVar.f6677b;
            this.f6685d = adVar.f6679d;
            this.f6686e = adVar.f6680e.isEmpty() ? map : new LinkedHashMap<>(adVar.f6680e);
            this.f6684c = adVar.f6678c.b();
        }

        private a a(URL url) {
            if (url != null) {
                return a(v.d(url.toString()));
            }
            throw new NullPointerException("url == null");
        }

        public final a a(String str, String str2) {
            this.f6684c.d(str, str2);
            return this;
        }

        public final a a(u uVar) {
            this.f6684c = uVar.b();
            return this;
        }

        private a a(d dVar) {
            String string = dVar.toString();
            return string.isEmpty() ? b("Cache-Control") : a("Cache-Control", string);
        }

        public final a a() {
            return a("GET", (ae) null);
        }

        private a a(ae aeVar) {
            return a("POST", aeVar);
        }

        public final a a(String str, ae aeVar) {
            if (str != null) {
                if (str.length() == 0) {
                    throw new IllegalArgumentException("method.length() == 0");
                }
                if (aeVar != null && !com.anythink.core.common.n.b.a.c.f.c(str)) {
                    throw new IllegalArgumentException("method " + str + " must not have a request body.");
                }
                if (aeVar == null && com.anythink.core.common.n.b.a.c.f.b(str)) {
                    throw new IllegalArgumentException("method " + str + " must have a request body.");
                }
                this.f6683b = str;
                this.f6685d = aeVar;
                return this;
            }
            throw new NullPointerException("method == null");
        }

        private <T> a a(Class<? super T> cls, T t2) {
            if (t2 == null) {
                this.f6686e.remove(cls);
                return this;
            }
            if (this.f6686e.isEmpty()) {
                this.f6686e = new LinkedHashMap();
            }
            this.f6686e.put(cls, cls.cast(t2));
            return this;
        }

        private a a(Object obj) {
            if (obj == null) {
                this.f6686e.remove(Object.class);
                return this;
            }
            if (this.f6686e.isEmpty()) {
                this.f6686e = new LinkedHashMap();
            }
            this.f6686e.put(Object.class, Object.class.cast(obj));
            return this;
        }
    }

    public ad(a aVar) {
        this.f6676a = aVar.f6682a;
        this.f6677b = aVar.f6683b;
        this.f6678c = aVar.f6684c.a();
        this.f6679d = aVar.f6685d;
        this.f6680e = com.anythink.core.common.n.b.a.c.a(aVar.f6686e);
    }

    private Object h() {
        return Object.class.cast(this.f6680e.get(Object.class));
    }

    public final v a() {
        return this.f6676a;
    }

    public final String b() {
        return this.f6677b;
    }

    public final u c() {
        return this.f6678c;
    }

    public final ae d() {
        return this.f6679d;
    }

    public final a e() {
        return new a(this);
    }

    public final d f() {
        d dVar = this.f6681f;
        if (dVar != null) {
            return dVar;
        }
        d dVarA = d.a(this.f6678c);
        this.f6681f = dVarA;
        return dVarA;
    }

    public final boolean g() {
        return this.f6676a.c();
    }

    public final String toString() {
        return "Request{method=" + this.f6677b + ", url=" + this.f6676a + ", tags=" + this.f6680e + '}';
    }

    public final String a(String str) {
        return this.f6678c.a(str);
    }

    public final List<String> b(String str) {
        return this.f6678c.b(str);
    }

    private <T> T a(Class<? extends T> cls) {
        return cls.cast(this.f6680e.get(cls));
    }
}
