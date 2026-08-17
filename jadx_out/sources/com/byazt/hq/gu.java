package com.byazt.hq;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;

@com.byazt.kj.hp(hp = {0, 1, 158, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes2.dex */
public final class gu {
    public static final gu hp;
    public static final gu jx;

    /* renamed from: l, reason: collision with root package name */
    public static final gu f20845l;

    /* renamed from: s, reason: collision with root package name */
    public static final s[] f20846s;

    /* renamed from: a, reason: collision with root package name */
    public final String[] f20847a;
    public final String[] eb;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f20848j;

    /* renamed from: w, reason: collision with root package name */
    public final boolean f20849w;

    static {
        s[] sVarArr = {s.gu, s.zy, s.jl, s.f20934k, s.f20938u, s.f20939v, s.eb, s.f20936q, s.f20937s, s.f20932e, s.f20940w, s.f20931a, s.jx, s.f20933j, s.f20935l};
        f20846s = sVarArr;
        hp hpVarHp = new hp(true).hp(sVarArr);
        dy dyVar = dy.TLS_1_3;
        dy dyVar2 = dy.TLS_1_2;
        dy dyVar3 = dy.TLS_1_1;
        dy dyVar4 = dy.TLS_1_0;
        gu guVarHp = hpVarHp.hp(dyVar, dyVar2, dyVar3, dyVar4).hp(true).hp();
        hp = guVarHp;
        f20845l = new hp(guVarHp).hp(dyVar4).hp(true).hp();
        jx = new hp(false).hp();
    }

    public gu(hp hpVar) {
        this.f20848j = hpVar.hp;
        this.f20847a = hpVar.f20851l;
        this.eb = hpVar.jx;
        this.f20849w = hpVar.f20850j;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof gu)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        gu guVar = (gu) obj;
        boolean z2 = this.f20848j;
        if (z2 != guVar.f20848j) {
            return false;
        }
        return !z2 || (Arrays.equals(this.f20847a, guVar.f20847a) && Arrays.equals(this.eb, guVar.eb) && this.f20849w == guVar.f20849w);
    }

    public int hashCode() {
        if (this.f20848j) {
            return ((((Arrays.hashCode(this.f20847a) + 527) * 31) + Arrays.hashCode(this.eb)) * 31) + (!this.f20849w ? 1 : 0);
        }
        return 17;
    }

    public boolean hp() {
        return this.f20848j;
    }

    public boolean j() {
        return this.f20849w;
    }

    public List<dy> jx() {
        String[] strArr = this.eb;
        if (strArr != null) {
            return dy.hp(strArr);
        }
        return null;
    }

    public List<s> l() {
        String[] strArr = this.f20847a;
        if (strArr != null) {
            return s.hp(strArr);
        }
        return null;
    }

    public String toString() {
        if (!this.f20848j) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f20847a != null ? l().toString() : "[all enabled]") + ", tlsVersions=" + (this.eb != null ? jx().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f20849w + ")";
    }

    @com.byazt.kj.hp(hp = {0, 1, 158, 1132})
    public static final class hp {
        public boolean hp;

        /* renamed from: j, reason: collision with root package name */
        public boolean f20850j;
        public String[] jx;

        /* renamed from: l, reason: collision with root package name */
        public String[] f20851l;

        public hp(boolean z2) {
            this.hp = z2;
        }

        public hp hp(s... sVarArr) {
            if (!this.hp) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[sVarArr.length];
            for (int i2 = 0; i2 < sVarArr.length; i2++) {
                strArr[i2] = sVarArr[i2].xs;
            }
            return hp(strArr);
        }

        public hp l(String... strArr) {
            if (!this.hp) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.jx = (String[]) strArr.clone();
            return this;
        }

        public hp(gu guVar) {
            this.hp = guVar.f20848j;
            this.f20851l = guVar.f20847a;
            this.jx = guVar.eb;
            this.f20850j = guVar.f20849w;
        }

        public hp hp(String... strArr) {
            if (this.hp) {
                if (strArr.length != 0) {
                    this.f20851l = (String[]) strArr.clone();
                    return this;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalStateException("no cipher suites for cleartext connections");
        }

        public hp hp(dy... dyVarArr) {
            if (this.hp) {
                String[] strArr = new String[dyVarArr.length];
                for (int i2 = 0; i2 < dyVarArr.length; i2++) {
                    strArr[i2] = dyVarArr[i2].f20818a;
                }
                return l(strArr);
            }
            throw new IllegalStateException("no TLS versions for cleartext connections");
        }

        public hp hp(boolean z2) {
            if (this.hp) {
                this.f20850j = z2;
                return this;
            }
            throw new IllegalStateException("no TLS extensions for cleartext connections");
        }

        public gu hp() {
            return new gu(this);
        }
    }

    private gu l(SSLSocket sSLSocket, boolean z2) {
        String[] strArrHp = this.f20847a != null ? com.byazt.ru.jx.hp(s.hp, sSLSocket.getEnabledCipherSuites(), this.f20847a) : sSLSocket.getEnabledCipherSuites();
        String[] strArrHp2 = this.eb != null ? com.byazt.ru.jx.hp(com.byazt.ru.jx.f25379s, sSLSocket.getEnabledProtocols(), this.eb) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iHp = com.byazt.ru.jx.hp(s.hp, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z2 && iHp != -1) {
            strArrHp = com.byazt.ru.jx.hp(strArrHp, supportedCipherSuites[iHp]);
        }
        return new hp(this).hp(strArrHp).l(strArrHp2).hp();
    }

    public void hp(SSLSocket sSLSocket, boolean z2) {
        gu guVarL = l(sSLSocket, z2);
        String[] strArr = guVarL.eb;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = guVarL.f20847a;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    public boolean hp(SSLSocket sSLSocket) {
        if (!this.f20848j) {
            return false;
        }
        String[] strArr = this.eb;
        if (strArr != null && !com.byazt.ru.jx.l(com.byazt.ru.jx.f25379s, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f20847a;
        return strArr2 == null || com.byazt.ru.jx.l(s.hp, strArr2, sSLSocket.getEnabledCipherSuites());
    }
}
