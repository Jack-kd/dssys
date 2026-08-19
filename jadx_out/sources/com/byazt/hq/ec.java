package com.byazt.hq;

import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

@com.byazt.kj.hp(hp = {0, 1, 158, MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS})
/* loaded from: classes2.dex */
public final class ec {

    /* renamed from: j, reason: collision with root package name */
    public static final char[] f20829j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a, reason: collision with root package name */
    public final String f20830a;

    /* renamed from: e, reason: collision with root package name */
    public final String f20831e;
    public final List<String> eb;
    public final String hp;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f20832l;

    /* renamed from: q, reason: collision with root package name */
    public final String f20833q;

    /* renamed from: s, reason: collision with root package name */
    public final List<String> f20834s;

    /* renamed from: w, reason: collision with root package name */
    public final String f20835w;

    @com.byazt.kj.hp(hp = {0, 1, 158, 1354})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final List<String> f20836a;
        public List<String> eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f20837j;

        /* renamed from: s, reason: collision with root package name */
        public String f20839s;

        /* renamed from: l, reason: collision with root package name */
        public String f20838l = "";
        public String jx = "";

        /* renamed from: w, reason: collision with root package name */
        public int f20840w = -1;

        /* renamed from: com.byazt.hq.ec$hp$hp, reason: collision with other inner class name */
        public enum EnumC0268hp {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public hp() {
            ArrayList arrayList = new ArrayList();
            this.f20836a = arrayList;
            arrayList.add("");
        }

        private boolean a(String str) {
            return i.f2495E.equals(str) || "%2e".equalsIgnoreCase(str);
        }

        private boolean eb(String str) {
            return "..".equals(str) || "%2e. ".equalsIgnoreCase(str) || ".%2e".equalsIgnoreCase(str) || "%2e%2e".equalsIgnoreCase(str);
        }

        public hp hp(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if ("http".equalsIgnoreCase(str)) {
                this.hp = "http";
                return this;
            }
            if ("https".equalsIgnoreCase(str)) {
                this.hp = "https";
                return this;
            }
            throw new IllegalArgumentException("unexpected scheme: " + str);
        }

        public hp j(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strW = w(str, 0, str.length());
            if (strW != null) {
                this.f20837j = strW;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public hp jx(String str) {
            if (str == null) {
                throw new NullPointerException("password == null");
            }
            this.jx = ec.hp(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public hp l(String str) {
            if (str == null) {
                throw new NullPointerException("username == null");
            }
            this.f20838l = ec.hp(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public hp query(String str) {
            this.eb = str != null ? ec.l(ec.hp(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.hp);
            sb.append("://");
            if (!this.f20838l.isEmpty() || !this.jx.isEmpty()) {
                sb.append(this.f20838l);
                if (!this.jx.isEmpty()) {
                    sb.append(':');
                    sb.append(this.jx);
                }
                sb.append('@');
            }
            if (this.f20837j.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f20837j);
                sb.append(']');
            } else {
                sb.append(this.f20837j);
            }
            int iHp = hp();
            if (iHp != ec.hp(this.hp)) {
                sb.append(':');
                sb.append(iHp);
            }
            ec.hp(sb, this.f20836a);
            if (this.eb != null) {
                sb.append('?');
                ec.l(sb, this.eb);
            }
            if (this.f20839s != null) {
                sb.append('#');
                sb.append(this.f20839s);
            }
            return sb.toString();
        }

        public hp w(String str) {
            this.eb = str != null ? ec.l(ec.hp(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        private static int a(String str, int i2, int i3) throws NumberFormatException {
            int i4;
            try {
                i4 = Integer.parseInt(ec.hp(str, i2, i3, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i4 <= 0 || i4 > 65535) {
                return -1;
            }
            return i4;
        }

        private static String w(String str, int i2, int i3) {
            return com.byazt.ru.jx.hp(ec.hp(str, i2, i3, false));
        }

        public ec jx() {
            if (this.hp != null) {
                if (this.f20837j != null) {
                    return new ec(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        public hp l() {
            int size = this.f20836a.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.f20836a.set(i2, ec.hp(this.f20836a.get(i2), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, true));
            }
            List<String> list = this.eb;
            if (list != null) {
                int size2 = list.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    String str = this.eb.get(i3);
                    if (str != null) {
                        this.eb.set(i3, ec.hp(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f20839s;
            if (str2 != null) {
                this.f20839s = ec.hp(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        private void j() {
            if (this.f20836a.remove(r0.size() - 1).isEmpty() && !this.f20836a.isEmpty()) {
                this.f20836a.set(r0.size() - 1, "");
            } else {
                this.f20836a.add("");
            }
        }

        public hp hp(int i2) {
            if (i2 > 0 && i2 <= 65535) {
                this.f20840w = i2;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i2);
        }

        private static int jx(String str, int i2, int i3) {
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

        private static int j(String str, int i2, int i3) {
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

        public int hp() {
            int i2 = this.f20840w;
            return i2 != -1 ? i2 : ec.hp(this.hp);
        }

        public EnumC0268hp hp(ec ecVar, String str) throws NumberFormatException {
            int iHp;
            String str2;
            int i2;
            String str3;
            String str4 = str;
            int iHp2 = com.byazt.ru.jx.hp(str4, 0, str4.length());
            int iL = com.byazt.ru.jx.l(str4, iHp2, str4.length());
            if (l(str4, iHp2, iL) != -1) {
                if (str4.regionMatches(true, iHp2, "https:", 0, 6)) {
                    this.hp = "https";
                    iHp2 += 6;
                    str4 = str;
                } else {
                    str4 = str;
                    if (str4.regionMatches(true, iHp2, "http:", 0, 5)) {
                        this.hp = "http";
                        iHp2 += 5;
                    } else {
                        return EnumC0268hp.UNSUPPORTED_SCHEME;
                    }
                }
            } else if (ecVar != null) {
                this.hp = ecVar.hp;
            } else {
                return EnumC0268hp.MISSING_SCHEME;
            }
            int iJx = jx(str4, iHp2, iL);
            char c2 = '#';
            if (iJx < 2 && ecVar != null && ecVar.hp.equals(this.hp)) {
                this.f20838l = ecVar.w();
                this.jx = ecVar.a();
                this.f20837j = ecVar.f20832l;
                this.f20840w = ecVar.jx;
                this.f20836a.clear();
                this.f20836a.addAll(ecVar.e());
                if (iHp2 == iL || str4.charAt(iHp2) == '#') {
                    w(ecVar.gu());
                }
                str2 = str4;
            } else {
                int i3 = iHp2 + iJx;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    iHp = com.byazt.ru.jx.hp(str4, i3, iL, "@/\\?#");
                    char cCharAt = iHp != iL ? str4.charAt(iHp) : (char) 65535;
                    if (cCharAt == 65535 || cCharAt == c2 || cCharAt == '/' || cCharAt == '\\' || cCharAt == '?') {
                        break;
                    }
                    if (cCharAt == '@') {
                        if (!z2) {
                            int iHp3 = com.byazt.ru.jx.hp(str4, i3, iHp, ':');
                            String strHp = ec.hp(str, i3, iHp3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z3) {
                                strHp = this.f20838l + "%40" + strHp;
                            }
                            this.f20838l = strHp;
                            if (iHp3 != iHp) {
                                i2 = iHp;
                                this.jx = ec.hp(str, iHp3 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z2 = true;
                            } else {
                                i2 = iHp;
                            }
                            str3 = str;
                            z3 = true;
                        } else {
                            i2 = iHp;
                            StringBuilder sb = new StringBuilder();
                            sb.append(this.jx);
                            sb.append("%40");
                            str3 = str;
                            sb.append(ec.hp(str3, i3, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null));
                            this.jx = sb.toString();
                        }
                        i3 = i2 + 1;
                        str4 = str3;
                        c2 = '#';
                    }
                }
                str2 = str4;
                int i4 = i3;
                int iJ = j(str2, i4, iHp);
                int i5 = iJ + 1;
                if (i5 < iHp) {
                    this.f20837j = w(str2, i4, iJ);
                    int iA = a(str2, i5, iHp);
                    this.f20840w = iA;
                    if (iA == -1) {
                        return EnumC0268hp.INVALID_PORT;
                    }
                } else {
                    this.f20837j = w(str2, i4, iJ);
                    this.f20840w = ec.hp(this.hp);
                }
                if (this.f20837j == null) {
                    return EnumC0268hp.INVALID_HOST;
                }
                iHp2 = iHp;
            }
            int iHp4 = com.byazt.ru.jx.hp(str2, iHp2, iL, "?#");
            hp(str2, iHp2, iHp4);
            if (iHp4 < iL && str2.charAt(iHp4) == '?') {
                int iHp5 = com.byazt.ru.jx.hp(str2, iHp4, iL, '#');
                this.eb = ec.l(ec.hp(str2, iHp4 + 1, iHp5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iHp4 = iHp5;
            }
            if (iHp4 < iL && str2.charAt(iHp4) == '#') {
                this.f20839s = ec.hp(str2, iHp4 + 1, iL, "", true, false, false, false, null);
            }
            return EnumC0268hp.SUCCESS;
        }

        private static int l(String str, int i2, int i3) {
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

        private void hp(String str, int i2, int i3) {
            if (i2 == i3) {
                return;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f20836a;
                list.set(list.size() - 1, "");
            } else {
                this.f20836a.clear();
                this.f20836a.add("");
                i2++;
            }
            int i4 = i2;
            while (i4 < i3) {
                int iHp = com.byazt.ru.jx.hp(str, i4, i3, "/\\");
                boolean z2 = iHp < i3;
                String str2 = str;
                hp(str2, i4, iHp, z2, true);
                if (z2) {
                    iHp++;
                }
                i4 = iHp;
                str = str2;
            }
        }

        private void hp(String str, int i2, int i3, boolean z2, boolean z3) {
            String strHp = ec.hp(str, i2, i3, HttpUrl.PATH_SEGMENT_ENCODE_SET, z3, false, false, true, null);
            if (a(strHp)) {
                return;
            }
            if (eb(strHp)) {
                j();
                return;
            }
            if (this.f20836a.get(r11.size() - 1).isEmpty()) {
                this.f20836a.set(r11.size() - 1, strHp);
            } else {
                this.f20836a.add(strHp);
            }
            if (z2) {
                this.f20836a.add("");
            }
        }
    }

    public ec(hp hpVar) {
        this.hp = hpVar.hp;
        this.f20835w = hp(hpVar.f20838l, false);
        this.f20830a = hp(hpVar.jx, false);
        this.f20832l = hpVar.f20837j;
        this.jx = hpVar.hp();
        this.eb = hp(hpVar.f20836a, false);
        List<String> list = hpVar.eb;
        this.f20834s = list != null ? hp(list, true) : null;
        String str = hpVar.f20839s;
        this.f20833q = str != null ? hp(str, false) : null;
        this.f20831e = hpVar.toString();
    }

    public String a() {
        if (this.f20830a.isEmpty()) {
            return "";
        }
        return this.f20831e.substring(this.f20831e.indexOf(58, this.hp.length() + 3) + 1, this.f20831e.indexOf(64));
    }

    public List<String> e() {
        int iIndexOf = this.f20831e.indexOf(47, this.hp.length() + 3);
        String str = this.f20831e;
        int iHp = com.byazt.ru.jx.hp(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iHp) {
            int i2 = iIndexOf + 1;
            int iHp2 = com.byazt.ru.jx.hp(this.f20831e, i2, iHp, '/');
            arrayList.add(this.f20831e.substring(i2, iHp2));
            iIndexOf = iHp2;
        }
        return arrayList;
    }

    public String eb() {
        return this.f20832l;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ec) && ((ec) obj).f20831e.equals(this.f20831e);
    }

    public String gu() {
        if (this.f20834s == null) {
            return null;
        }
        int iIndexOf = this.f20831e.indexOf(63) + 1;
        String str = this.f20831e;
        return this.f20831e.substring(iIndexOf, com.byazt.ru.jx.hp(str, iIndexOf, str.length(), '#'));
    }

    public int hashCode() {
        return this.f20831e.hashCode();
    }

    public URL hp() {
        try {
            return new URL(this.f20831e);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    public boolean j() {
        return "https".equals(this.hp);
    }

    public String jl() {
        if (this.f20833q == null) {
            return null;
        }
        return this.f20831e.substring(this.f20831e.indexOf(35) + 1);
    }

    public String jx() {
        return this.hp;
    }

    public hp k() {
        hp hpVar = new hp();
        hpVar.hp = this.hp;
        hpVar.f20838l = w();
        hpVar.jx = a();
        hpVar.f20837j = this.f20832l;
        hpVar.f20840w = this.jx != hp(this.hp) ? this.jx : -1;
        hpVar.f20836a.clear();
        hpVar.f20836a.addAll(e());
        hpVar.w(gu());
        hpVar.f20839s = jl();
        return hpVar;
    }

    public URI l() {
        String string = k().l().toString();
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

    public String q() {
        int iIndexOf = this.f20831e.indexOf(47, this.hp.length() + 3);
        String str = this.f20831e;
        return this.f20831e.substring(iIndexOf, com.byazt.ru.jx.hp(str, iIndexOf, str.length(), "?#"));
    }

    public String query() {
        if (this.f20834s == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        l(sb, this.f20834s);
        return sb.toString();
    }

    public int s() {
        return this.jx;
    }

    public String toString() {
        return this.f20831e;
    }

    public String w() {
        if (this.f20835w.isEmpty()) {
            return "";
        }
        int length = this.hp.length() + 3;
        String str = this.f20831e;
        return this.f20831e.substring(length, com.byazt.ru.jx.hp(str, length, str.length(), ":@"));
    }

    public String zy() {
        return j("/...").l("").jx("").jx().toString();
    }

    public hp j(String str) {
        hp hpVar = new hp();
        if (hpVar.hp(this, str) == hp.EnumC0268hp.SUCCESS) {
            return hpVar;
        }
        return null;
    }

    public ec jx(String str) {
        hp hpVarJ = j(str);
        if (hpVarJ != null) {
            return hpVarJ.jx();
        }
        return null;
    }

    public static int hp(String str) {
        if ("http".equals(str)) {
            return 80;
        }
        return "https".equals(str) ? 443 : -1;
    }

    public static void hp(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            sb.append('/');
            sb.append(list.get(i2));
        }
    }

    public static ec w(String str) {
        hp hpVar = new hp();
        if (hpVar.hp(null, str) == hp.EnumC0268hp.SUCCESS) {
            return hpVar.jx();
        }
        return null;
    }

    public static void l(StringBuilder sb, List<String> list) {
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

    public static ec hp(URL url) {
        return w(url.toString());
    }

    public static String hp(String str, boolean z2) {
        return hp(str, 0, str.length(), z2);
    }

    private List<String> hp(List<String> list, boolean z2) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            String str = list.get(i2);
            arrayList.add(str != null ? hp(str, z2) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static List<String> l(String str) {
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

    public static String hp(String str, int i2, int i3, boolean z2) {
        for (int i4 = i2; i4 < i3; i4++) {
            char cCharAt = str.charAt(i4);
            if (cCharAt == '%' || (cCharAt == '+' && z2)) {
                com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
                jxVar.hp(str, i2, i4);
                hp(jxVar, str, i4, i3, z2);
                return jxVar.v();
            }
        }
        return str.substring(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(com.byazt.raq.jx r5, java.lang.String r6, int r7, int r8, boolean r9) {
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
            int r2 = com.byazt.ru.jx.hp(r2)
            char r3 = r6.charAt(r1)
            int r3 = com.byazt.ru.jx.hp(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.q(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.q(r1)
            goto L3c
        L39:
            r5.hp(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.hq.ec.hp(com.byazt.raq.jx, java.lang.String, int, int, boolean):void");
    }

    public static boolean hp(String str, int i2, int i3) {
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && com.byazt.ru.jx.hp(str.charAt(i2 + 1)) != -1 && com.byazt.ru.jx.hp(str.charAt(i4)) != -1;
    }

    public static String hp(String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        int iCharCount = i2;
        while (iCharCount < i3) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z2 && (!z3 || hp(str, iCharCount, i3)))) && (iCodePointAt != 43 || !z4)))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                com.byazt.raq.jx jxVar = new com.byazt.raq.jx();
                jxVar.hp(str, i2, iCharCount);
                hp(jxVar, str, iCharCount, i3, str2, z2, z3, z4, z5, charset);
                return jxVar.v();
            }
        }
        return str.substring(i2, i3);
    }

    public static void hp(com.byazt.raq.jx jxVar, String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        com.byazt.raq.jx jxVar2 = null;
        while (i2 < i3) {
            int iCodePointAt = str.codePointAt(i2);
            if (!z2 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z4) {
                    jxVar.l(z2 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z2 && (!z3 || hp(str, i2, i3)))))) {
                    jxVar.hp(iCodePointAt);
                } else {
                    if (jxVar2 == null) {
                        jxVar2 = new com.byazt.raq.jx();
                    }
                    if (charset != null && !charset.equals(com.byazt.ru.jx.f25382w)) {
                        jxVar2.hp(str, i2, Character.charCount(iCodePointAt) + i2, charset);
                    } else {
                        jxVar2.hp(iCodePointAt);
                    }
                    while (!jxVar2.w()) {
                        byte bS = jxVar2.s();
                        jxVar.q(37);
                        char[] cArr = f20829j;
                        jxVar.q((int) cArr[((bS & 255) >> 4) & 15]);
                        jxVar.q((int) cArr[bS & ek.f49295m]);
                    }
                }
            }
            i2 += Character.charCount(iCodePointAt);
        }
    }

    public static String hp(String str, String str2, boolean z2, boolean z3, boolean z4, boolean z5) {
        return hp(str, 0, str.length(), str2, z2, z3, z4, z5, null);
    }
}
