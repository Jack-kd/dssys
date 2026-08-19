package com.byazt.bg;

import com.anythink.core.common.d.i;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

@com.byazt.kj.hp(hp = {0, 1, 1230, 28})
/* loaded from: classes2.dex */
public final class hp implements HostnameVerifier {
    public static final hp hp = new hp();

    /* renamed from: l, reason: collision with root package name */
    public static final Pattern f18539l = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private hp() {
    }

    private boolean hp(String str, X509Certificate x509Certificate) {
        return hp(str) ? l(str, x509Certificate) : jx(str, x509Certificate);
    }

    private boolean jx(String str, X509Certificate x509Certificate) throws CertificateParsingException {
        String strHp;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> listHp = hp(x509Certificate, 2);
        int size = listHp.size();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            if (hp(lowerCase, listHp.get(i2))) {
                return true;
            }
            i2++;
            z2 = true;
        }
        if (z2 || (strHp = new l(x509Certificate.getSubjectX500Principal()).hp("cn")) == null) {
            return false;
        }
        return hp(lowerCase, strHp);
    }

    private boolean l(String str, X509Certificate x509Certificate) throws CertificateParsingException {
        List<String> listHp = hp(x509Certificate, 7);
        int size = listHp.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equalsIgnoreCase(listHp.get(i2))) {
                return true;
            }
        }
        return false;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return hp(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }

    private static boolean hp(String str) {
        return f18539l.matcher(str).matches();
    }

    private static List<String> hp(X509Certificate x509Certificate, int i2) throws CertificateParsingException {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i2 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    private boolean hp(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(i.f2495E) && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(i.f2495E) && !str2.endsWith("..")) {
            if (!str.endsWith(i.f2495E)) {
                str = str + '.';
            }
            if (!str2.endsWith(i.f2495E)) {
                str2 = str2 + '.';
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains("*")) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            String strSubstring = lowerCase.substring(1);
            if (!str.endsWith(strSubstring)) {
                return false;
            }
            int length = str.length() - strSubstring.length();
            return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
        }
        return false;
    }
}
