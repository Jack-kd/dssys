package com.anythink.core.common.n.b;

import com.umeng.analytics.pro.ek;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    static final String f6930a = " \"':;<=>@[]^`{}|/\\?#";

    /* renamed from: b, reason: collision with root package name */
    static final String f6931b = " \"':;<=>@[]^`{}|/\\?#";

    /* renamed from: c, reason: collision with root package name */
    static final String f6932c = " \"<>^`{}|/\\?#";

    /* renamed from: d, reason: collision with root package name */
    static final String f6933d = "[]";

    /* renamed from: e, reason: collision with root package name */
    static final String f6934e = " \"'<>#";

    /* renamed from: f, reason: collision with root package name */
    static final String f6935f = " \"'<>#&=";

    /* renamed from: g, reason: collision with root package name */
    static final String f6936g = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";

    /* renamed from: h, reason: collision with root package name */
    static final String f6937h = "\\^`{|}";

    /* renamed from: i, reason: collision with root package name */
    static final String f6938i = " \"':;<=>@[]^`{}|/\\?#&!$(),~";

    /* renamed from: j, reason: collision with root package name */
    static final String f6939j = "";

    /* renamed from: k, reason: collision with root package name */
    static final String f6940k = " \"#<>\\^`{|}";

    /* renamed from: o, reason: collision with root package name */
    private static final char[] f6941o = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: l, reason: collision with root package name */
    final String f6942l;

    /* renamed from: m, reason: collision with root package name */
    final String f6943m;

    /* renamed from: n, reason: collision with root package name */
    final int f6944n;

    /* renamed from: p, reason: collision with root package name */
    private final String f6945p;

    /* renamed from: q, reason: collision with root package name */
    private final String f6946q;

    /* renamed from: r, reason: collision with root package name */
    private final List<String> f6947r;

    /* renamed from: s, reason: collision with root package name */
    private final List<String> f6948s;

    /* renamed from: t, reason: collision with root package name */
    private final String f6949t;

    /* renamed from: u, reason: collision with root package name */
    private final String f6950u;

    public static final class a {

        /* renamed from: i, reason: collision with root package name */
        static final String f6951i = "Invalid URL host";

        /* renamed from: a, reason: collision with root package name */
        String f6952a;

        /* renamed from: d, reason: collision with root package name */
        String f6955d;

        /* renamed from: f, reason: collision with root package name */
        final List<String> f6957f;

        /* renamed from: g, reason: collision with root package name */
        List<String> f6958g;

        /* renamed from: h, reason: collision with root package name */
        String f6959h;

        /* renamed from: b, reason: collision with root package name */
        String f6953b = "";

        /* renamed from: c, reason: collision with root package name */
        String f6954c = "";

        /* renamed from: e, reason: collision with root package name */
        int f6956e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f6957f = arrayList;
            arrayList.add("");
        }

        private a b(int i2, String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            String strA = v.a(str, 0, str.length(), " \"<>^`{}|/\\?#", true, false, false, true, null);
            this.f6957f.set(i2, strA);
            if (s(strA) || t(strA)) {
                throw new IllegalArgumentException("unexpected path segment: ".concat(str));
            }
            return this;
        }

        private a c(String str) {
            if (str.equalsIgnoreCase("http")) {
                this.f6952a = "http";
                return this;
            }
            if (!str.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str));
            }
            this.f6952a = "https";
            return this;
        }

        private a d(String str) {
            this.f6953b = v.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        private a e(String str) {
            if (str == null) {
                throw new NullPointerException("encodedUsername == null");
            }
            this.f6953b = v.a(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        private a f(String str) {
            this.f6954c = v.a(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        private a g(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPassword == null");
            }
            this.f6954c = v.a(str, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
            return this;
        }

        private a h(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegment == null");
            }
            a(str, 0, str.length(), false, false);
            return this;
        }

        private a i(String str) {
            if (str != null) {
                return a(str, false);
            }
            throw new NullPointerException("pathSegments == null");
        }

        private a j(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPathSegment == null");
            }
            a(str, 0, str.length(), false, true);
            return this;
        }

        private a k(String str) {
            if (str != null) {
                return a(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        private a l(String str) {
            if (str == null) {
                throw new NullPointerException("encodedPath == null");
            }
            if (!str.startsWith(ServiceReference.DELIMITER)) {
                throw new IllegalArgumentException("unexpected encodedPath: ".concat(str));
            }
            a(str, 0, str.length());
            return this;
        }

        private a m(String str) {
            this.f6958g = str != null ? v.b(v.a(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        private a n(String str) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.f6958g == null) {
                return this;
            }
            p(v.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
            return this;
        }

        private a o(String str) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.f6958g == null) {
                return this;
            }
            p(v.a(str, " \"'<>#&=", true, false, true, true));
            return this;
        }

        private void p(String str) {
            for (int size = this.f6958g.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.f6958g.get(size))) {
                    this.f6958g.remove(size + 1);
                    this.f6958g.remove(size);
                    if (this.f6958g.isEmpty()) {
                        this.f6958g = null;
                        return;
                    }
                }
            }
        }

        private a q(String str) {
            this.f6959h = str != null ? v.a(str, "", false, false, false, false) : null;
            return this;
        }

        private a r(String str) {
            this.f6959h = str != null ? v.a(str, "", true, false, false, false) : null;
            return this;
        }

        private static boolean s(String str) {
            return str.equals(com.anythink.core.common.d.i.f2495E) || str.equalsIgnoreCase("%2e");
        }

        private static boolean t(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public final a a(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strE = e(str, 0, str.length());
            if (strE == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.f6955d = strE;
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f6952a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f6953b.isEmpty() || !this.f6954c.isEmpty()) {
                sb.append(this.f6953b);
                if (!this.f6954c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f6954c);
                }
                sb.append('@');
            }
            String str2 = this.f6955d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f6955d);
                    sb.append(']');
                } else {
                    sb.append(this.f6955d);
                }
            }
            if (this.f6956e != -1 || this.f6952a != null) {
                int iA = a();
                String str3 = this.f6952a;
                if (str3 == null || iA != v.a(str3)) {
                    sb.append(':');
                    sb.append(iA);
                }
            }
            v.a(sb, this.f6957f);
            if (this.f6958g != null) {
                sb.append('?');
                v.b(sb, this.f6958g);
            }
            if (this.f6959h != null) {
                sb.append('#');
                sb.append(this.f6959h);
            }
            return sb.toString();
        }

        private void d() {
            if (!this.f6957f.remove(r0.size() - 1).isEmpty() || this.f6957f.isEmpty()) {
                this.f6957f.add("");
            } else {
                this.f6957f.set(r0.size() - 1, "");
            }
        }

        private static int f(String str, int i2, int i3) throws NumberFormatException {
            int i4;
            try {
                i4 = Integer.parseInt(v.a(str, i2, i3, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i4 <= 0 || i4 > 65535) {
                return -1;
            }
            return i4;
        }

        private static String e(String str, int i2, int i3) {
            return com.anythink.core.common.n.b.a.c.a(v.a(str, i2, i3, false));
        }

        private a a(int i2) {
            if (i2 > 0 && i2 <= 65535) {
                this.f6956e = i2;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: ".concat(String.valueOf(i2)));
        }

        private a b(int i2) {
            this.f6957f.remove(i2);
            if (this.f6957f.isEmpty()) {
                this.f6957f.add("");
            }
            return this;
        }

        private a c() {
            int size = this.f6957f.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f6957f.set(i2, v.a(this.f6957f.get(i2), "[]", true, true, false, true));
            }
            List<String> list = this.f6958g;
            if (list != null) {
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    String str = this.f6958g.get(i3);
                    if (str != null) {
                        this.f6958g.set(i3, v.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f6959h;
            if (str2 != null) {
                this.f6959h = v.a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        private static int d(String str, int i2, int i3) {
            while (i2 < i3) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == ':') {
                    return i2;
                }
                if (cCharAt == '[') {
                    do {
                        i2++;
                        if (i2 < i3) {
                        }
                    } while (str.charAt(i2) != ']');
                }
                i2++;
            }
            return i3;
        }

        public final int a() {
            int i2 = this.f6956e;
            return i2 != -1 ? i2 : v.a(this.f6952a);
        }

        private a a(String str, boolean z2) {
            boolean z3;
            a aVar;
            String str2;
            boolean z4;
            int i2 = 0;
            while (true) {
                int iA = com.anythink.core.common.n.b.a.c.a(str, i2, str.length(), "/\\");
                if (iA < str.length()) {
                    z3 = true;
                    str2 = str;
                    z4 = z2;
                    aVar = this;
                } else {
                    z3 = false;
                    aVar = this;
                    str2 = str;
                    z4 = z2;
                }
                aVar.a(str2, i2, iA, z3, z4);
                i2 = iA + 1;
                if (i2 > str2.length()) {
                    return aVar;
                }
                str = str2;
                z2 = z4;
            }
        }

        private a d(String str, String str2) {
            String str3;
            if (str != null) {
                if (this.f6958g != null) {
                    str3 = str;
                    p(v.a(str, " \"'<>#&=", true, false, true, true));
                } else {
                    str3 = str;
                }
                if (this.f6958g == null) {
                    this.f6958g = new ArrayList();
                }
                this.f6958g.add(v.a(str3, " \"'<>#&=", true, false, true, true));
                this.f6958g.add(str2 != null ? v.a(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public final a b(String str) {
            this.f6958g = str != null ? v.b(v.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        private a a(int i2, String str) {
            if (str != null) {
                String strA = v.a(str, 0, str.length(), " \"<>^`{}|/\\?#", false, false, false, true, null);
                if (!s(strA) && !t(strA)) {
                    this.f6957f.set(i2, strA);
                    return this;
                }
                throw new IllegalArgumentException("unexpected path segment: ".concat(str));
            }
            throw new NullPointerException("pathSegment == null");
        }

        private a b(String str, String str2) {
            if (str != null) {
                if (this.f6958g == null) {
                    this.f6958g = new ArrayList();
                }
                this.f6958g.add(v.a(str, " \"'<>#&=", true, false, true, true));
                this.f6958g.add(str2 != null ? v.a(str2, " \"'<>#&=", true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        private a a(String str, String str2) {
            if (str != null) {
                if (this.f6958g == null) {
                    this.f6958g = new ArrayList();
                }
                this.f6958g.add(v.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                this.f6958g.add(str2 != null ? v.a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("name == null");
        }

        private static int c(String str, int i2, int i3) {
            int i4 = 0;
            while (i2 < i3) {
                char cCharAt = str.charAt(i2);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i4++;
                i2++;
            }
            return i4;
        }

        private a c(String str, String str2) {
            String str3;
            if (str != null) {
                if (this.f6958g != null) {
                    str3 = str;
                    p(v.a(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                } else {
                    str3 = str;
                }
                if (this.f6958g == null) {
                    this.f6958g = new ArrayList();
                }
                this.f6958g.add(v.a(str3, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
                this.f6958g.add(str2 != null ? v.a(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("name == null");
        }

        public final v b() {
            if (this.f6952a != null) {
                if (this.f6955d != null) {
                    return new v(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        private static int b(String str, int i2, int i3) {
            if (i3 - i2 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i2);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i2++;
                    if (i2 >= i3) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i2;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        public final a a(v vVar, String str) throws NumberFormatException {
            int i2;
            int iA;
            String str2;
            int i3;
            String str3;
            char cCharAt;
            String str4 = str;
            int iA2 = com.anythink.core.common.n.b.a.c.a(str4, 0, str4.length());
            int iB = com.anythink.core.common.n.b.a.c.b(str4, iA2, str4.length());
            char c2 = ':';
            if (iB - iA2 < 2 || (((cCharAt = str4.charAt(iA2)) < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z'))) {
                i2 = -1;
            } else {
                int i4 = iA2 + 1;
                while (true) {
                    if (i4 >= iB) {
                        break;
                    }
                    char cCharAt2 = str4.charAt(i4);
                    if ((cCharAt2 >= 'a' && cCharAt2 <= 'z') || ((cCharAt2 >= 'A' && cCharAt2 <= 'Z') || ((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '+' || cCharAt2 == '-' || cCharAt2 == '.'))) {
                        i4++;
                    } else if (cCharAt2 == ':') {
                        i2 = i4;
                    }
                }
                i2 = -1;
            }
            if (i2 != -1) {
                if (str4.regionMatches(true, iA2, "https:", 0, 6)) {
                    this.f6952a = "https";
                    iA2 += 6;
                    str4 = str;
                } else {
                    str4 = str;
                    if (str4.regionMatches(true, iA2, "http:", 0, 5)) {
                        this.f6952a = "http";
                        iA2 += 5;
                    } else {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str4.substring(0, i2) + "'");
                    }
                }
            } else if (vVar != null) {
                this.f6952a = vVar.f6942l;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int iC = c(str4, iA2, iB);
            if (iC < 2 && vVar != null && vVar.f6942l.equals(this.f6952a)) {
                this.f6953b = vVar.d();
                this.f6954c = vVar.e();
                this.f6955d = vVar.f6943m;
                this.f6956e = vVar.f6944n;
                this.f6957f.clear();
                this.f6957f.addAll(vVar.i());
                if (iA2 == iB || str4.charAt(iA2) == '#') {
                    b(vVar.j());
                }
                str2 = str4;
            } else {
                int i5 = iA2 + iC;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    iA = com.anythink.core.common.n.b.a.c.a(str4, i5, iB, "@/\\?#");
                    char cCharAt3 = iA != iB ? str4.charAt(iA) : (char) 65535;
                    if (cCharAt3 == 65535 || cCharAt3 == '#' || cCharAt3 == '/' || cCharAt3 == '\\' || cCharAt3 == '?') {
                        break;
                    }
                    if (cCharAt3 == '@') {
                        if (!z2) {
                            int iA3 = com.anythink.core.common.n.b.a.c.a(str4, i5, iA, c2);
                            String strA = v.a(str, i5, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z3) {
                                strA = this.f6953b + "%40" + strA;
                            }
                            this.f6953b = strA;
                            if (iA3 != iA) {
                                int i6 = iA3 + 1;
                                i3 = iA;
                                this.f6954c = v.a(str, i6, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z2 = true;
                            } else {
                                i3 = iA;
                            }
                            str3 = str;
                            z3 = true;
                        } else {
                            i3 = iA;
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.f6954c);
                            sb.append("%40");
                            str3 = str;
                            sb.append(v.a(str3, i5, i3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null));
                            this.f6954c = sb.toString();
                        }
                        i5 = i3 + 1;
                        str4 = str3;
                        c2 = ':';
                    }
                }
                str2 = str4;
                int i7 = i5;
                int iD = d(str2, i7, iA);
                int i8 = iD + 1;
                if (i8 < iA) {
                    this.f6955d = e(str2, i7, iD);
                    int iF = f(str2, i8, iA);
                    this.f6956e = iF;
                    if (iF == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str2.substring(i8, iA) + '\"');
                    }
                } else {
                    this.f6955d = e(str2, i7, iD);
                    this.f6956e = v.a(this.f6952a);
                }
                if (this.f6955d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str2.substring(i7, iD) + '\"');
                }
                iA2 = iA;
            }
            int iA4 = com.anythink.core.common.n.b.a.c.a(str2, iA2, iB, "?#");
            a(str2, iA2, iA4);
            if (iA4 < iB && str2.charAt(iA4) == '?') {
                int iA5 = com.anythink.core.common.n.b.a.c.a(str2, iA4, iB, '#');
                this.f6958g = v.b(v.a(str2, iA4 + 1, iA5, " \"'<>#", true, false, true, true, null));
                iA4 = iA5;
            }
            if (iA4 < iB && str2.charAt(iA4) == '#') {
                this.f6959h = v.a(str2, iA4 + 1, iB, "", true, false, false, false, null);
            }
            return this;
        }

        private void a(String str, int i2, int i3) {
            if (i2 == i3) {
                return;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f6957f;
                list.set(list.size() - 1, "");
            } else {
                this.f6957f.clear();
                this.f6957f.add("");
                i2++;
            }
            int i4 = i2;
            while (i4 < i3) {
                int iA = com.anythink.core.common.n.b.a.c.a(str, i4, i3, "/\\");
                boolean z2 = iA < i3;
                String str2 = str;
                a(str2, i4, iA, z2, true);
                if (z2) {
                    iA++;
                }
                i4 = iA;
                str = str2;
            }
        }

        private void a(String str, int i2, int i3, boolean z2, boolean z3) {
            String strA = v.a(str, i2, i3, " \"<>^`{}|/\\?#", z3, false, false, true, null);
            if (s(strA)) {
                return;
            }
            if (t(strA)) {
                d();
                return;
            }
            if (this.f6957f.get(r11.size() - 1).isEmpty()) {
                this.f6957f.set(r11.size() - 1, strA);
            } else {
                this.f6957f.add(strA);
            }
            if (z2) {
                this.f6957f.add("");
            }
        }
    }

    public v(a aVar) {
        this.f6942l = aVar.f6952a;
        this.f6945p = a(aVar.f6953b, false);
        this.f6946q = a(aVar.f6954c, false);
        this.f6943m = aVar.f6955d;
        this.f6944n = aVar.a();
        this.f6947r = a(aVar.f6957f, false);
        List<String> list = aVar.f6958g;
        this.f6948s = list != null ? a(list, true) : null;
        String str = aVar.f6959h;
        this.f6949t = str != null ? a(str, false) : null;
        this.f6950u = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    private URL m() {
        try {
            return new URL(this.f6950u);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    private String n() {
        return this.f6945p;
    }

    private String o() {
        return this.f6946q;
    }

    private int p() {
        return this.f6947r.size();
    }

    private List<String> q() {
        return this.f6947r;
    }

    private int r() {
        List<String> list = this.f6948s;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    private Set<String> s() {
        if (this.f6948s == null) {
            return Collections.EMPTY_SET;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.f6948s.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            linkedHashSet.add(this.f6948s.get(i2));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    private String t() {
        if (this.f6949t == null) {
            return null;
        }
        return this.f6950u.substring(this.f6950u.indexOf(35) + 1);
    }

    private String u() {
        return this.f6949t;
    }

    private a v() {
        a aVar = new a();
        aVar.f6952a = this.f6942l;
        aVar.f6953b = d();
        aVar.f6954c = e();
        aVar.f6955d = this.f6943m;
        aVar.f6956e = this.f6944n != a(this.f6942l) ? this.f6944n : -1;
        aVar.f6957f.clear();
        aVar.f6957f.addAll(i());
        aVar.b(j());
        aVar.f6959h = this.f6949t == null ? null : this.f6950u.substring(this.f6950u.indexOf(35) + 1);
        return aVar;
    }

    private String w() {
        if (com.anythink.core.common.n.b.a.c.c(this.f6943m)) {
            return null;
        }
        return com.anythink.core.common.n.b.a.i.a.a().a(this.f6943m);
    }

    public final String b() {
        return this.f6942l;
    }

    public final boolean c() {
        return this.f6942l.equals("https");
    }

    public final String d() {
        if (this.f6945p.isEmpty()) {
            return "";
        }
        int length = this.f6942l.length() + 3;
        String str = this.f6950u;
        return this.f6950u.substring(length, com.anythink.core.common.n.b.a.c.a(str, length, str.length(), ":@"));
    }

    public final String e() {
        if (this.f6946q.isEmpty()) {
            return "";
        }
        return this.f6950u.substring(this.f6950u.indexOf(58, this.f6942l.length() + 3) + 1, this.f6950u.indexOf(64));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof v) && ((v) obj).f6950u.equals(this.f6950u);
    }

    public final String f() {
        return this.f6943m;
    }

    public final int g() {
        return this.f6944n;
    }

    public final String h() {
        int iIndexOf = this.f6950u.indexOf(47, this.f6942l.length() + 3);
        String str = this.f6950u;
        return this.f6950u.substring(iIndexOf, com.anythink.core.common.n.b.a.c.a(str, iIndexOf, str.length(), "?#"));
    }

    public final int hashCode() {
        return this.f6950u.hashCode();
    }

    public final List<String> i() {
        int iIndexOf = this.f6950u.indexOf(47, this.f6942l.length() + 3);
        String str = this.f6950u;
        int iA = com.anythink.core.common.n.b.a.c.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i2 = iIndexOf + 1;
            int iA2 = com.anythink.core.common.n.b.a.c.a(this.f6950u, i2, iA, '/');
            arrayList.add(this.f6950u.substring(i2, iA2));
            iIndexOf = iA2;
        }
        return arrayList;
    }

    public final String j() {
        if (this.f6948s == null) {
            return null;
        }
        int iIndexOf = this.f6950u.indexOf(63) + 1;
        String str = this.f6950u;
        return this.f6950u.substring(iIndexOf, com.anythink.core.common.n.b.a.c.a(str, iIndexOf, str.length(), '#'));
    }

    public final String k() {
        if (this.f6948s == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, this.f6948s);
        return sb.toString();
    }

    public final String l() {
        a aVarG = g("/...");
        aVarG.f6953b = a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        aVarG.f6954c = a("", " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
        return aVarG.b().toString();
    }

    public final String toString() {
        return this.f6950u;
    }

    public static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            String str = list.get(i2);
            String str2 = list.get(i2 + 1);
            if (i2 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    private List<String> f(String str) {
        if (this.f6948s == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f6948s.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            if (str.equals(this.f6948s.get(i2))) {
                arrayList.add(this.f6948s.get(i2 + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private a g(String str) {
        try {
            return new a().a(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public final v c(String str) {
        a aVarG = g(str);
        if (aVarG != null) {
            return aVarG.b();
        }
        return null;
    }

    public static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append('/');
            sb.append(list.get(i2));
        }
    }

    private static v h(String str) {
        try {
            return d(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public static v d(String str) {
        return new a().a((v) null, str).b();
    }

    private String e(String str) {
        List<String> list = this.f6948s;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i2 = 0; i2 < size; i2 += 2) {
            if (str.equals(this.f6948s.get(i2))) {
                return this.f6948s.get(i2 + 1);
            }
        }
        return null;
    }

    private String a(int i2) {
        List<String> list = this.f6948s;
        if (list != null) {
            return list.get(i2 * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    private static v a(URL url) {
        return h(url.toString());
    }

    public static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 <= str.length()) {
            int iIndexOf = str.indexOf(38, i2);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i2);
            if (iIndexOf2 != -1 && iIndexOf2 <= iIndexOf) {
                arrayList.add(str.substring(i2, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            } else {
                arrayList.add(str.substring(i2, iIndexOf));
                arrayList.add(null);
            }
            i2 = iIndexOf + 1;
        }
        return arrayList;
    }

    private static v a(URI uri) {
        return h(uri.toString());
    }

    public static String a(String str, boolean z2) {
        return a(str, 0, str.length(), z2);
    }

    private static List<String> a(List<String> list, boolean z2) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? a(str, z2) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static String a(String str, int i2, int i3, boolean z2) {
        for (int i4 = i2; i4 < i3; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '%' || (cCharAt == '+' && z2)) {
                com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
                cVar.b(str, i2, i4);
                a(cVar, str, i4, i3, z2);
                return cVar.u();
            }
        }
        return str.substring(i2, i3);
    }

    private String b(int i2) {
        List<String> list = this.f6948s;
        if (list != null) {
            return list.get((i2 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(com.anythink.core.common.n.c.c r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
        L0:
            if (r7 >= r8) goto L42
            int r0 = r6.codePointAt(r7)
            r1 = 37
            if (r0 != r1) goto L2d
            int r1 = r7 + 2
            if (r1 >= r8) goto L2d
            int r2 = r7 + 1
            char r2 = r6.charAt(r2)
            int r2 = com.anythink.core.common.n.b.a.c.a(r2)
            char r3 = r6.charAt(r1)
            int r3 = com.anythink.core.common.n.b.a.c.a(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.l(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.l(r1)
            goto L3c
        L39:
            r5.m(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.v.a(com.anythink.core.common.n.c.c, java.lang.String, int, int, boolean):void");
    }

    private static boolean a(String str, int i2, int i3) {
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && com.anythink.core.common.n.b.a.c.a(str.charAt(i2 + 1)) != -1 && com.anythink.core.common.n.b.a.c.a(str.charAt(i4)) != -1;
    }

    public static String a(String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        int iCharCount = i2;
        while (iCharCount < i3) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z2 && (!z3 || a(str, iCharCount, i3)))) && (iCodePointAt != 43 || !z4)))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                com.anythink.core.common.n.c.c cVar = new com.anythink.core.common.n.c.c();
                cVar.b(str, i2, iCharCount);
                com.anythink.core.common.n.c.c cVar2 = null;
                while (iCharCount < i3) {
                    int iCodePointAt2 = str.codePointAt(iCharCount);
                    if (!z2 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                        if (iCodePointAt2 == 43 && z4) {
                            cVar.b(z2 ? "+" : "%2B");
                        } else if (iCodePointAt2 >= 32 && iCodePointAt2 != 127 && ((iCodePointAt2 < 128 || !z5) && str2.indexOf(iCodePointAt2) == -1 && (iCodePointAt2 != 37 || (z2 && (!z3 || a(str, iCharCount, i3)))))) {
                            cVar.m(iCodePointAt2);
                        } else {
                            if (cVar2 == null) {
                                cVar2 = new com.anythink.core.common.n.c.c();
                            }
                            if (charset != null && !charset.equals(StandardCharsets.UTF_8)) {
                                cVar2.b(str, iCharCount, Character.charCount(iCodePointAt2) + iCharCount, charset);
                            } else {
                                cVar2.m(iCodePointAt2);
                            }
                            while (!cVar2.g()) {
                                byte bK = cVar2.k();
                                cVar.l(37);
                                char[] cArr = f6941o;
                                cVar.l((int) cArr[((bK & 255) >> 4) & 15]);
                                cVar.l((int) cArr[bK & ek.f49295m]);
                            }
                        }
                    }
                    iCharCount += Character.charCount(iCodePointAt2);
                }
                return cVar.u();
            }
        }
        return str.substring(i2, i3);
    }

    private static void a(com.anythink.core.common.n.c.c cVar, String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        com.anythink.core.common.n.c.c cVar2 = null;
        while (i2 < i3) {
            int iCodePointAt = str.codePointAt(i2);
            if (!z2 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z4) {
                    cVar.b(z2 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z2 && (!z3 || a(str, i2, i3)))))) {
                    cVar.m(iCodePointAt);
                } else {
                    if (cVar2 == null) {
                        cVar2 = new com.anythink.core.common.n.c.c();
                    }
                    if (charset != null && !charset.equals(StandardCharsets.UTF_8)) {
                        cVar2.b(str, i2, Character.charCount(iCodePointAt) + i2, charset);
                    } else {
                        cVar2.m(iCodePointAt);
                    }
                    while (!cVar2.g()) {
                        byte bK = cVar2.k();
                        cVar.l(37);
                        char[] cArr = f6941o;
                        cVar.l((int) cArr[((bK & 255) >> 4) & 15]);
                        cVar.l((int) cArr[bK & ek.f49295m]);
                    }
                }
            }
            i2 += Character.charCount(iCodePointAt);
        }
    }

    public static String a(String str, String str2, boolean z2, Charset charset) {
        return a(str, 0, str.length(), str2, z2, false, true, true, charset);
    }

    public static String a(String str, String str2, boolean z2, boolean z3, boolean z4, boolean z5) {
        return a(str, 0, str.length(), str2, z2, z3, z4, z5, null);
    }

    public final URI a() {
        a aVar = new a();
        aVar.f6952a = this.f6942l;
        aVar.f6953b = d();
        aVar.f6954c = e();
        aVar.f6955d = this.f6943m;
        aVar.f6956e = this.f6944n != a(this.f6942l) ? this.f6944n : -1;
        aVar.f6957f.clear();
        aVar.f6957f.addAll(i());
        aVar.b(j());
        aVar.f6959h = this.f6949t == null ? null : this.f6950u.substring(this.f6950u.indexOf(35) + 1);
        int size = aVar.f6957f.size();
        for (int i2 = 0; i2 < size; i2++) {
            aVar.f6957f.set(i2, a(aVar.f6957f.get(i2), "[]", true, true, false, true));
        }
        List<String> list = aVar.f6958g;
        if (list != null) {
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str = aVar.f6958g.get(i3);
                if (str != null) {
                    aVar.f6958g.set(i3, a(str, "\\^`{|}", true, true, true, true));
                }
            }
        }
        String str2 = aVar.f6959h;
        if (str2 != null) {
            aVar.f6959h = a(str2, " \"#<>\\^`{|}", true, true, false, false);
        }
        String string = aVar.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }
}
