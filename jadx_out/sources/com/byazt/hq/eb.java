package com.byazt.hq;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;

@com.byazt.kj.hp(hp = {0, 1, 158, 94})
/* loaded from: classes2.dex */
public final class eb {
    public static final eb hp = new hp().hp();
    public final com.byazt.cmb.jx jx;

    /* renamed from: l, reason: collision with root package name */
    public final Set<l> f20826l;

    @com.byazt.kj.hp(hp = {0, 1, 158, 131})
    public static final class hp {
        public final List<l> hp = new ArrayList();

        public eb hp() {
            return new eb(new LinkedHashSet(this.hp), null);
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 158, 846})
    public static final class l {
        public final String hp;

        /* renamed from: j, reason: collision with root package name */
        public final com.byazt.raq.a f20827j;
        public final String jx;

        /* renamed from: l, reason: collision with root package name */
        public final String f20828l;

        public boolean equals(Object obj) {
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.hp.equals(lVar.hp) && this.jx.equals(lVar.jx) && this.f20827j.equals(lVar.f20827j);
        }

        public int hashCode() {
            return ((((this.hp.hashCode() + 527) * 31) + this.jx.hashCode()) * 31) + this.f20827j.hashCode();
        }

        public boolean hp(String str) {
            if (!this.hp.startsWith("*.")) {
                return str.equals(this.f20828l);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 != this.f20828l.length()) {
                return false;
            }
            String str2 = this.f20828l;
            return str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length());
        }

        public String toString() {
            return this.jx + this.f20827j.l();
        }
    }

    public eb(Set<l> set, com.byazt.cmb.jx jxVar) {
        this.f20826l = set;
        this.jx = jxVar;
    }

    public static com.byazt.raq.a l(X509Certificate x509Certificate) {
        return com.byazt.raq.a.hp(x509Certificate.getPublicKey().getEncoded()).j();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof eb)) {
            return false;
        }
        eb ebVar = (eb) obj;
        return com.byazt.ru.jx.hp(this.jx, ebVar.jx) && this.f20826l.equals(ebVar.f20826l);
    }

    public int hashCode() {
        com.byazt.cmb.jx jxVar = this.jx;
        return ((jxVar != null ? jxVar.hashCode() : 0) * 31) + this.f20826l.hashCode();
    }

    public void hp(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<l> listHp = hp(str);
        if (listHp.isEmpty()) {
            return;
        }
        com.byazt.cmb.jx jxVar = this.jx;
        if (jxVar != null) {
            list = jxVar.hp(list, str);
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i2);
            int size2 = listHp.size();
            com.byazt.raq.a aVarL = null;
            com.byazt.raq.a aVarHp = null;
            for (int i3 = 0; i3 < size2; i3++) {
                l lVar = listHp.get(i3);
                if (lVar.jx.equals("sha256/")) {
                    if (aVarL == null) {
                        aVarL = l(x509Certificate);
                    }
                    if (lVar.f20827j.equals(aVarL)) {
                        return;
                    }
                } else {
                    if (!lVar.jx.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + lVar.jx);
                    }
                    if (aVarHp == null) {
                        aVarHp = hp(x509Certificate);
                    }
                    if (lVar.f20827j.equals(aVarHp)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i4 = 0; i4 < size3; i4++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i4);
            sb.append("\n    ");
            sb.append(hp((Certificate) x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(":");
        int size4 = listHp.size();
        for (int i5 = 0; i5 < size4; i5++) {
            l lVar2 = listHp.get(i5);
            sb.append("\n    ");
            sb.append(lVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    public List<l> hp(String str) {
        List<l> arrayList = Collections.EMPTY_LIST;
        for (l lVar : this.f20826l) {
            if (lVar.hp(str)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(lVar);
            }
        }
        return arrayList;
    }

    public eb hp(com.byazt.cmb.jx jxVar) {
        return com.byazt.ru.jx.hp(this.jx, jxVar) ? this : new eb(this.f20826l, jxVar);
    }

    public static String hp(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha256/" + l((X509Certificate) certificate).l();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    public static com.byazt.raq.a hp(X509Certificate x509Certificate) {
        return com.byazt.raq.a.hp(x509Certificate.getPublicKey().getEncoded()).jx();
    }
}
