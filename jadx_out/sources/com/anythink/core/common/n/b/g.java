package com.anythink.core.common.n.b;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final g f6806a = new a().a();

    /* renamed from: b, reason: collision with root package name */
    private final Set<b> f6807b;

    /* renamed from: c, reason: collision with root package name */
    private final com.anythink.core.common.n.b.a.j.c f6808c;

    public static final class b {

        /* renamed from: e, reason: collision with root package name */
        private static final String f6810e = "*.";

        /* renamed from: a, reason: collision with root package name */
        final String f6811a;

        /* renamed from: b, reason: collision with root package name */
        final String f6812b;

        /* renamed from: c, reason: collision with root package name */
        final String f6813c;

        /* renamed from: d, reason: collision with root package name */
        final com.anythink.core.common.n.c.f f6814d;

        public b(String str, String str2) {
            String str3;
            this.f6811a = str;
            if (str.startsWith(f6810e)) {
                str3 = v.d("http://" + str.substring(2)).f6943m;
            } else {
                str3 = v.d("http://".concat(str)).f6943m;
            }
            this.f6812b = str3;
            if (str2.startsWith("sha1/")) {
                this.f6813c = "sha1/";
                this.f6814d = com.anythink.core.common.n.c.f.b(str2.substring(5));
            } else {
                if (!str2.startsWith("sha256/")) {
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': ".concat(str2));
                }
                this.f6813c = "sha256/";
                this.f6814d = com.anythink.core.common.n.c.f.b(str2.substring(7));
            }
            if (this.f6814d == null) {
                throw new IllegalArgumentException("pins must be base64: ".concat(str2));
            }
        }

        private boolean a(String str) {
            if (!this.f6811a.startsWith(f6810e)) {
                return str.equals(this.f6812b);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 != this.f6812b.length()) {
                return false;
            }
            String str2 = this.f6812b;
            return str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length());
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f6811a.equals(bVar.f6811a) && this.f6813c.equals(bVar.f6813c) && this.f6814d.equals(bVar.f6814d);
        }

        public final int hashCode() {
            return ((((this.f6811a.hashCode() + 527) * 31) + this.f6813c.hashCode()) * 31) + this.f6814d.hashCode();
        }

        public final String toString() {
            return this.f6813c + this.f6814d.b();
        }
    }

    public g(Set<b> set, com.anythink.core.common.n.b.a.j.c cVar) {
        this.f6807b = set;
        this.f6808c = cVar;
    }

    private void a(String str, Certificate... certificateArr) {
        a(str, Arrays.asList(certificateArr));
    }

    private static com.anythink.core.common.n.c.f b(X509Certificate x509Certificate) {
        return com.anythink.core.common.n.c.f.a(x509Certificate.getPublicKey().getEncoded()).e();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Objects.equals(this.f6808c, gVar.f6808c) && this.f6807b.equals(gVar.f6807b);
    }

    public final int hashCode() {
        return (Objects.hashCode(this.f6808c) * 31) + this.f6807b.hashCode();
    }

    private List<b> a(String str) {
        String str2;
        boolean zEquals;
        List<b> arrayList = Collections.EMPTY_LIST;
        for (b bVar : this.f6807b) {
            if (bVar.f6811a.startsWith("*.")) {
                int iIndexOf = str.indexOf(46);
                zEquals = true;
                if ((str.length() - iIndexOf) - 1 == bVar.f6812b.length()) {
                    String str3 = bVar.f6812b;
                    str2 = str;
                    if (!str2.regionMatches(false, iIndexOf + 1, str3, 0, str3.length())) {
                    }
                } else {
                    str2 = str;
                }
                zEquals = false;
            } else {
                str2 = str;
                zEquals = str2.equals(bVar.f6812b);
            }
            if (zEquals) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(bVar);
            }
            str = str2;
        }
        return arrayList;
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final List<b> f6809a = new ArrayList();

        private a a(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException("pattern == null");
            }
            for (String str2 : strArr) {
                this.f6809a.add(new b(str, str2));
            }
            return this;
        }

        public final g a() {
            return new g(new LinkedHashSet(this.f6809a), null);
        }
    }

    public final g a(com.anythink.core.common.n.b.a.j.c cVar) {
        return Objects.equals(this.f6808c, cVar) ? this : new g(this.f6807b, cVar);
    }

    public static String a(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + b((X509Certificate) certificate).b();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    private static com.anythink.core.common.n.c.f a(X509Certificate x509Certificate) {
        return com.anythink.core.common.n.c.f.a(x509Certificate.getPublicKey().getEncoded()).d();
    }

    public final void a(String str, List<Certificate> list) {
        int i2;
        List arrayList = Collections.EMPTY_LIST;
        Iterator<b> it = this.f6807b.iterator();
        while (true) {
            zEquals = false;
            boolean zEquals = false;
            if (!it.hasNext()) {
                break;
            }
            b next = it.next();
            if (next.f6811a.startsWith("*.")) {
                int iIndexOf = str.indexOf(46);
                if ((str.length() - iIndexOf) - 1 == next.f6812b.length()) {
                    String str2 = next.f6812b;
                    if (str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length())) {
                        zEquals = true;
                    }
                }
            } else {
                zEquals = str.equals(next.f6812b);
            }
            if (zEquals) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        com.anythink.core.common.n.b.a.j.c cVar = this.f6808c;
        List<Certificate> listA = cVar != null ? cVar.a(list, str) : list;
        int size = listA.size();
        for (int i3 = 0; i3 < size; i3++) {
            X509Certificate x509Certificate = (X509Certificate) listA.get(i3);
            int size2 = arrayList.size();
            com.anythink.core.common.n.c.f fVarB = null;
            com.anythink.core.common.n.c.f fVarD = null;
            for (int i4 = 0; i4 < size2; i4++) {
                b bVar = (b) arrayList.get(i4);
                if (bVar.f6813c.equals("sha256/")) {
                    if (fVarB == null) {
                        fVarB = b(x509Certificate);
                    }
                    if (bVar.f6814d.equals(fVarB)) {
                        return;
                    }
                } else if (bVar.f6813c.equals("sha1/")) {
                    if (fVarD == null) {
                        fVarD = com.anythink.core.common.n.c.f.a(x509Certificate.getPublicKey().getEncoded()).d();
                    }
                    if (bVar.f6814d.equals(fVarD)) {
                        return;
                    }
                } else {
                    throw new AssertionError("unsupported hashAlgorithm: " + bVar.f6813c);
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size3 = listA.size();
        for (int i5 = 0; i5 < size3; i5++) {
            X509Certificate x509Certificate2 = (X509Certificate) listA.get(i5);
            sb.append("\n    ");
            sb.append(a((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = arrayList.size();
        for (i2 = 0; i2 < size4; i2++) {
            b bVar2 = (b) arrayList.get(i2);
            sb.append("\n    ");
            sb.append(bVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }
}
