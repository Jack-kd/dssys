package com.anythink.core.common.n.b;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.SSLSocket;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final l f6870a;

    /* renamed from: b, reason: collision with root package name */
    public static final l f6871b;

    /* renamed from: c, reason: collision with root package name */
    public static final l f6872c;

    /* renamed from: d, reason: collision with root package name */
    public static final l f6873d;

    /* renamed from: i, reason: collision with root package name */
    private static final i[] f6874i;

    /* renamed from: j, reason: collision with root package name */
    private static final i[] f6875j;

    /* renamed from: e, reason: collision with root package name */
    final boolean f6876e;

    /* renamed from: f, reason: collision with root package name */
    final boolean f6877f;

    /* renamed from: g, reason: collision with root package name */
    final String[] f6878g;

    /* renamed from: h, reason: collision with root package name */
    final String[] f6879h;

    static {
        i iVar = i.bl;
        i iVar2 = i.bm;
        i iVar3 = i.bn;
        i iVar4 = i.aX;
        i iVar5 = i.bb;
        i iVar6 = i.aY;
        i iVar7 = i.bc;
        i iVar8 = i.bi;
        i iVar9 = i.bh;
        i[] iVarArr = {iVar, iVar2, iVar3, iVar4, iVar5, iVar6, iVar7, iVar8, iVar9};
        f6874i = iVarArr;
        i[] iVarArr2 = {iVar, iVar2, iVar3, iVar4, iVar5, iVar6, iVar7, iVar8, iVar9, i.aI, i.aJ, i.ag, i.ah, i.f6821E, i.f6825I, i.f6851i};
        f6875j = iVarArr2;
        a aVarA = new a(true).a(iVarArr);
        ai aiVar = ai.TLS_1_3;
        ai aiVar2 = ai.TLS_1_2;
        f6870a = aVarA.a(aiVar, aiVar2).a().b();
        f6871b = new a(true).a(iVarArr2).a(aiVar, aiVar2).a().b();
        f6872c = new a(true).a(iVarArr2).a(aiVar, aiVar2, ai.TLS_1_1, ai.TLS_1_0).a().b();
        f6873d = new a(false).b();
    }

    public l(a aVar) {
        this.f6876e = aVar.f6880a;
        this.f6878g = aVar.f6881b;
        this.f6879h = aVar.f6882c;
        this.f6877f = aVar.f6883d;
    }

    private boolean b() {
        return this.f6876e;
    }

    private List<i> c() {
        String[] strArr = this.f6878g;
        if (strArr != null) {
            return i.a(strArr);
        }
        return null;
    }

    private List<ai> d() {
        String[] strArr = this.f6879h;
        if (strArr != null) {
            return ai.a(strArr);
        }
        return null;
    }

    public final boolean a() {
        return this.f6877f;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        l lVar = (l) obj;
        boolean z2 = this.f6876e;
        if (z2 != lVar.f6876e) {
            return false;
        }
        return !z2 || (Arrays.equals(this.f6878g, lVar.f6878g) && Arrays.equals(this.f6879h, lVar.f6879h) && this.f6877f == lVar.f6877f);
    }

    public final int hashCode() {
        if (this.f6876e) {
            return ((((Arrays.hashCode(this.f6878g) + 527) * 31) + Arrays.hashCode(this.f6879h)) * 31) + (!this.f6877f ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        if (!this.f6876e) {
            return "ConnectionSpec()";
        }
        StringBuilder sb = new StringBuilder("ConnectionSpec(cipherSuites=");
        String[] strArr = this.f6878g;
        sb.append(Objects.toString(strArr != null ? i.a(strArr) : null, "[all enabled]"));
        sb.append(", tlsVersions=");
        String[] strArr2 = this.f6879h;
        sb.append(Objects.toString(strArr2 != null ? ai.a(strArr2) : null, "[all enabled]"));
        sb.append(", supportsTlsExtensions=");
        sb.append(this.f6877f);
        sb.append(")");
        return sb.toString();
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        boolean f6880a;

        /* renamed from: b, reason: collision with root package name */
        String[] f6881b;

        /* renamed from: c, reason: collision with root package name */
        String[] f6882c;

        /* renamed from: d, reason: collision with root package name */
        boolean f6883d;

        public a(boolean z2) {
            this.f6880a = z2;
        }

        private a c() {
            if (!this.f6880a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            this.f6881b = null;
            return this;
        }

        private a d() {
            if (!this.f6880a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            this.f6882c = null;
            return this;
        }

        public final a a(i... iVarArr) {
            if (!this.f6880a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[iVarArr.length];
            for (int i2 = 0; i2 < iVarArr.length; i2++) {
                strArr[i2] = iVarArr[i2].bq;
            }
            return a(strArr);
        }

        public final a b(String... strArr) {
            if (!this.f6880a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f6882c = (String[]) strArr.clone();
            return this;
        }

        public a(l lVar) {
            this.f6880a = lVar.f6876e;
            this.f6881b = lVar.f6878g;
            this.f6882c = lVar.f6879h;
            this.f6883d = lVar.f6877f;
        }

        public final l b() {
            return new l(this);
        }

        public final a a(String... strArr) {
            if (this.f6880a) {
                if (strArr.length != 0) {
                    this.f6881b = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public final a a(ai... aiVarArr) {
            if (this.f6880a) {
                String[] strArr = new String[aiVarArr.length];
                for (int i2 = 0; i2 < aiVarArr.length; i2++) {
                    strArr[i2] = aiVarArr[i2].f6739f;
                }
                return b(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public final a a() {
            if (this.f6880a) {
                this.f6883d = true;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }
    }

    private l b(SSLSocket sSLSocket, boolean z2) {
        String[] strArrA = this.f6878g != null ? com.anythink.core.common.n.b.a.c.a(i.f6843a, sSLSocket.getEnabledCipherSuites(), this.f6878g) : sSLSocket.getEnabledCipherSuites();
        String[] strArrA2 = this.f6879h != null ? com.anythink.core.common.n.b.a.c.a(com.anythink.core.common.n.b.a.c.f6221g, sSLSocket.getEnabledProtocols(), this.f6879h) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = com.anythink.core.common.n.b.a.c.a(i.f6843a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z2 && iA != -1) {
            strArrA = com.anythink.core.common.n.b.a.c.a(strArrA, supportedCipherSuites[iA]);
        }
        return new a(this).a(strArrA).b(strArrA2).b();
    }

    public final boolean a(SSLSocket sSLSocket) {
        if (!this.f6876e) {
            return false;
        }
        String[] strArr = this.f6879h;
        if (strArr != null && !com.anythink.core.common.n.b.a.c.b(com.anythink.core.common.n.b.a.c.f6221g, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f6878g;
        return strArr2 == null || com.anythink.core.common.n.b.a.c.b(i.f6843a, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    private void a(SSLSocket sSLSocket, boolean z2) {
        String[] enabledCipherSuites;
        String[] enabledProtocols;
        if (this.f6878g != null) {
            enabledCipherSuites = com.anythink.core.common.n.b.a.c.a(i.f6843a, sSLSocket.getEnabledCipherSuites(), this.f6878g);
        } else {
            enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        }
        if (this.f6879h != null) {
            enabledProtocols = com.anythink.core.common.n.b.a.c.a(com.anythink.core.common.n.b.a.c.f6221g, sSLSocket.getEnabledProtocols(), this.f6879h);
        } else {
            enabledProtocols = sSLSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iA = com.anythink.core.common.n.b.a.c.a(i.f6843a, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z2 && iA != -1) {
            enabledCipherSuites = com.anythink.core.common.n.b.a.c.a(enabledCipherSuites, supportedCipherSuites[iA]);
        }
        l lVarB = new a(this).a(enabledCipherSuites).b(enabledProtocols).b();
        String[] strArr = lVarB.f6879h;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = lVarB.f6878g;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }
}
