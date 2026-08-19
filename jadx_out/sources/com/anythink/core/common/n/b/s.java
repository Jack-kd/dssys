package com.anythink.core.common.n.b;

import androidx.browser.trusted.sharing.ShareTarget;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public final class s extends ae {

    /* renamed from: a, reason: collision with root package name */
    private static final x f6918a = x.a(ShareTarget.ENCODING_TYPE_URL_ENCODED);

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f6919b;

    /* renamed from: c, reason: collision with root package name */
    private final List<String> f6920c;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<String> f6921a;

        /* renamed from: b, reason: collision with root package name */
        private final List<String> f6922b;

        /* renamed from: c, reason: collision with root package name */
        private final Charset f6923c;

        public a() {
            this(null);
        }

        private a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f6921a.add(v.a(str, HttpUrl.FORM_ENCODE_SET, false, this.f6923c));
            this.f6922b.add(v.a(str2, HttpUrl.FORM_ENCODE_SET, false, this.f6923c));
            return this;
        }

        private a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            this.f6921a.add(v.a(str, HttpUrl.FORM_ENCODE_SET, true, this.f6923c));
            this.f6922b.add(v.a(str2, HttpUrl.FORM_ENCODE_SET, true, this.f6923c));
            return this;
        }

        private a(Charset charset) {
            this.f6921a = new ArrayList();
            this.f6922b = new ArrayList();
            this.f6923c = charset;
        }

        private s a() {
            return new s(this.f6921a, this.f6922b);
        }
    }

    public s(List<String> list, List<String> list2) {
        this.f6919b = com.anythink.core.common.n.b.a.c.a(list);
        this.f6920c = com.anythink.core.common.n.b.a.c.a(list2);
    }

    private String a(int i2) {
        return this.f6919b.get(i2);
    }

    private int c() {
        return this.f6919b.size();
    }

    private String d(int i2) {
        return v.a(this.f6920c.get(i2), true);
    }

    @Override // com.anythink.core.common.n.b.ae
    public final long b() {
        return a((com.anythink.core.common.n.c.d) null, true);
    }

    private String b(int i2) {
        return v.a(this.f6919b.get(i2), true);
    }

    private String c(int i2) {
        return this.f6920c.get(i2);
    }

    @Override // com.anythink.core.common.n.b.ae
    public final x a() {
        return f6918a;
    }

    @Override // com.anythink.core.common.n.b.ae
    public final void a(com.anythink.core.common.n.c.d dVar) {
        a(dVar, false);
    }

    private long a(com.anythink.core.common.n.c.d dVar, boolean z2) {
        com.anythink.core.common.n.c.c cVarC;
        if (z2) {
            cVarC = new com.anythink.core.common.n.c.c();
        } else {
            cVarC = dVar.c();
        }
        int size = this.f6919b.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                cVarC.l(38);
            }
            cVarC.b(this.f6919b.get(i2));
            cVarC.l(61);
            cVarC.b(this.f6920c.get(i2));
        }
        if (!z2) {
            return 0L;
        }
        long jB = cVarC.b();
        cVarC.z();
        return jB;
    }
}
