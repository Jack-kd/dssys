package com.byazt.uhg;

import com.anythink.core.common.d.i;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.umeng.analytics.pro.ek;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 94})
/* loaded from: classes3.dex */
public final class eb {

    /* renamed from: j, reason: collision with root package name */
    public static final char[] f26180j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a, reason: collision with root package name */
    public final String f26181a;

    /* renamed from: e, reason: collision with root package name */
    public final String f26182e;
    public final List<String> eb;
    public final String hp;
    public final int jx;

    /* renamed from: l, reason: collision with root package name */
    public final String f26183l;

    /* renamed from: q, reason: collision with root package name */
    public final String f26184q;

    /* renamed from: s, reason: collision with root package name */
    public final List<String> f26185s;

    /* renamed from: w, reason: collision with root package name */
    public final String f26186w;

    @com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME, 131})
    public static final class hp {

        /* renamed from: a, reason: collision with root package name */
        public final List<String> f26187a;
        public List<String> eb;
        public String hp;

        /* renamed from: j, reason: collision with root package name */
        public String f26188j;

        /* renamed from: s, reason: collision with root package name */
        public String f26190s;

        /* renamed from: l, reason: collision with root package name */
        public String f26189l = "";
        public String jx = "";

        /* renamed from: w, reason: collision with root package name */
        public int f26191w = -1;

        /* renamed from: com.byazt.uhg.eb$hp$hp, reason: collision with other inner class name */
        public enum EnumC0385hp {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public hp() {
            ArrayList arrayList = new ArrayList();
            this.f26187a = arrayList;
            arrayList.add("");
        }

        private boolean a(String str) {
            return "..".equals(str) || "%2e.".equalsIgnoreCase(str) || ".%2e".equalsIgnoreCase(str) || "%2e%2e".equalsIgnoreCase(str);
        }

        private boolean w(String str) {
            return i.f2495E.equals(str) || "%2e".equalsIgnoreCase(str);
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
            this.eb = str != null ? eb.l(eb.hp(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public hp jx(String str) {
            if (str != null) {
                return hp(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public hp l(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strW = w(str, 0, str.length());
            if (strW != null) {
                this.f26188j = strW;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public hp query(String str) {
            this.eb = str != null ? eb.l(eb.hp(str, HttpUrl.QUERY_ENCODE_SET, false, false, true, true)) : null;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.hp);
            sb.append("://");
            if (!this.f26189l.isEmpty() || !this.jx.isEmpty()) {
                sb.append(this.f26189l);
                if (!this.jx.isEmpty()) {
                    sb.append(':');
                    sb.append(this.jx);
                }
                sb.append('@');
            }
            if (this.f26188j.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f26188j);
                sb.append(']');
            } else {
                sb.append(this.f26188j);
            }
            int iHp = hp();
            if (iHp != eb.hp(this.hp)) {
                sb.append(':');
                sb.append(iHp);
            }
            eb.hp(sb, this.f26187a);
            if (this.eb != null) {
                sb.append('?');
                eb.l(sb, this.eb);
            }
            if (this.f26190s != null) {
                sb.append('#');
                sb.append(this.f26190s);
            }
            return sb.toString();
        }

        private static String w(String str, int i2, int i3) {
            return com.byazt.ndb.e.hp(eb.hp(str, i2, i3, false));
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

        private void jx() {
            if (this.f26187a.remove(r0.size() - 1).isEmpty() && !this.f26187a.isEmpty()) {
                this.f26187a.set(r0.size() - 1, "");
            } else {
                this.f26187a.add("");
            }
        }

        private static int a(String str, int i2, int i3) throws NumberFormatException {
            int i4;
            try {
                i4 = Integer.parseInt(eb.hp(str, i2, i3, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i4 <= 0 || i4 > 65535) {
                return -1;
            }
            return i4;
        }

        public eb l() {
            if (this.hp != null) {
                if (this.f26188j != null) {
                    return new eb(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
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

        public int hp() {
            int i2 = this.f26191w;
            return i2 != -1 ? i2 : eb.hp(this.hp);
        }

        private hp hp(String str, boolean z2) {
            boolean z3;
            hp hpVar;
            String str2;
            boolean z4;
            int i2 = 0;
            while (true) {
                int iHp = com.byazt.ndb.e.hp(str, i2, str.length(), "/\\");
                if (iHp < str.length()) {
                    z3 = true;
                    str2 = str;
                    z4 = z2;
                    hpVar = this;
                } else {
                    z3 = false;
                    hpVar = this;
                    str2 = str;
                    z4 = z2;
                }
                hpVar.hp(str2, i2, iHp, z3, z4);
                i2 = iHp + 1;
                if (i2 > str2.length()) {
                    return hpVar;
                }
                str = str2;
                z2 = z4;
            }
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

        public hp hp(String str, String str2) {
            if (str != null) {
                if (this.eb == null) {
                    this.eb = new ArrayList();
                }
                this.eb.add(eb.hp(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
                this.eb.add(str2 != null ? eb.hp(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        public EnumC0385hp hp(eb ebVar, String str) throws NumberFormatException {
            int iHp;
            String str2;
            int i2;
            String str3;
            String str4 = str;
            int iHp2 = com.byazt.ndb.e.hp(str4, 0, str4.length());
            int iL = com.byazt.ndb.e.l(str4, iHp2, str4.length());
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
                        return EnumC0385hp.UNSUPPORTED_SCHEME;
                    }
                }
            } else if (ebVar != null) {
                this.hp = ebVar.hp;
            } else {
                return EnumC0385hp.MISSING_SCHEME;
            }
            int iJx = jx(str4, iHp2, iL);
            char c2 = '#';
            if (iJx < 2 && ebVar != null && ebVar.hp.equals(this.hp)) {
                this.f26189l = ebVar.l();
                this.jx = ebVar.jx();
                this.f26188j = ebVar.f26183l;
                this.f26191w = ebVar.jx;
                this.f26187a.clear();
                this.f26187a.addAll(ebVar.j());
                if (iHp2 == iL || str4.charAt(iHp2) == '#') {
                    j(ebVar.w());
                }
                str2 = str4;
            } else {
                int i3 = iHp2 + iJx;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    iHp = com.byazt.ndb.e.hp(str4, i3, iL, "@/\\?#");
                    char cCharAt = iHp != iL ? str4.charAt(iHp) : (char) 65535;
                    if (cCharAt == 65535 || cCharAt == c2 || cCharAt == '/' || cCharAt == '\\' || cCharAt == '?') {
                        break;
                    }
                    if (cCharAt == '@') {
                        if (!z2) {
                            int iHp3 = com.byazt.ndb.e.hp(str4, i3, iHp, ':');
                            String strHp = eb.hp(str, i3, iHp3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z3) {
                                strHp = this.f26189l + "%40" + strHp;
                            }
                            this.f26189l = strHp;
                            if (iHp3 != iHp) {
                                i2 = iHp;
                                this.jx = eb.hp(str, iHp3 + 1, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
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
                            sb.append(eb.hp(str3, i3, i2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null));
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
                    this.f26188j = w(str2, i4, iJ);
                    int iA = a(str2, i5, iHp);
                    this.f26191w = iA;
                    if (iA == -1) {
                        return EnumC0385hp.INVALID_PORT;
                    }
                } else {
                    this.f26188j = w(str2, i4, iJ);
                    this.f26191w = eb.hp(this.hp);
                }
                if (this.f26188j == null) {
                    return EnumC0385hp.INVALID_HOST;
                }
                iHp2 = iHp;
            }
            int iHp4 = com.byazt.ndb.e.hp(str2, iHp2, iL, "?#");
            hp(str2, iHp2, iHp4);
            if (iHp4 < iL && str2.charAt(iHp4) == '?') {
                int iHp5 = com.byazt.ndb.e.hp(str2, iHp4, iL, '#');
                this.eb = eb.l(eb.hp(str2, iHp4 + 1, iHp5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iHp4 = iHp5;
            }
            if (iHp4 < iL && str2.charAt(iHp4) == '#') {
                this.f26190s = eb.hp(str2, iHp4 + 1, iL, "", true, false, false, false, null);
            }
            return EnumC0385hp.SUCCESS;
        }

        private void hp(String str, int i2, int i3) {
            if (i2 == i3) {
                return;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f26187a;
                list.set(list.size() - 1, "");
            } else {
                this.f26187a.clear();
                this.f26187a.add("");
                i2++;
            }
            int i4 = i2;
            while (i4 < i3) {
                int iHp = com.byazt.ndb.e.hp(str, i4, i3, "/\\");
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
            String strHp = eb.hp(str, i2, i3, HttpUrl.PATH_SEGMENT_ENCODE_SET, z3, false, false, true, null);
            if (w(strHp)) {
                return;
            }
            if (a(strHp)) {
                jx();
                return;
            }
            if (this.f26187a.get(r11.size() - 1).isEmpty()) {
                this.f26187a.set(r11.size() - 1, strHp);
            } else {
                this.f26187a.add(strHp);
            }
            if (z2) {
                this.f26187a.add("");
            }
        }
    }

    public eb(hp hpVar) {
        this.hp = hpVar.hp;
        this.f26186w = hp(hpVar.f26189l, false);
        this.f26181a = hp(hpVar.jx, false);
        this.f26183l = hpVar.f26188j;
        this.jx = hpVar.hp();
        this.eb = hp(hpVar.f26187a, false);
        List<String> list = hpVar.eb;
        this.f26185s = list != null ? hp(list, true) : null;
        String str = hpVar.f26190s;
        this.f26184q = str != null ? hp(str, false) : null;
        this.f26182e = hpVar.toString();
    }

    public String a() {
        if (this.f26184q == null) {
            return null;
        }
        return this.f26182e.substring(this.f26182e.indexOf(35) + 1);
    }

    public hp eb() {
        hp hpVar = new hp();
        hpVar.hp = this.hp;
        hpVar.f26189l = l();
        hpVar.jx = jx();
        hpVar.f26188j = this.f26183l;
        hpVar.f26191w = this.jx != hp(this.hp) ? this.jx : -1;
        hpVar.f26187a.clear();
        hpVar.f26187a.addAll(j());
        hpVar.j(w());
        hpVar.f26190s = a();
        return hpVar;
    }

    public boolean equals(Object obj) {
        return (obj instanceof eb) && ((eb) obj).f26182e.equals(this.f26182e);
    }

    public int hashCode() {
        return this.f26182e.hashCode();
    }

    public URL hp() {
        try {
            return new URL(this.f26182e);
        } catch (MalformedURLException e2) {
            throw new RuntimeException(e2);
        }
    }

    public List<String> j() {
        int iIndexOf = this.f26182e.indexOf(47, this.hp.length() + 3);
        String str = this.f26182e;
        int iHp = com.byazt.ndb.e.hp(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iHp) {
            int i2 = iIndexOf + 1;
            int iHp2 = com.byazt.ndb.e.hp(this.f26182e, i2, iHp, '/');
            arrayList.add(this.f26182e.substring(i2, iHp2));
            iIndexOf = iHp2;
        }
        return arrayList;
    }

    public String jx() {
        if (this.f26181a.isEmpty()) {
            return "";
        }
        return this.f26182e.substring(this.f26182e.indexOf(58, this.hp.length() + 3) + 1, this.f26182e.indexOf(64));
    }

    public String l() {
        if (this.f26186w.isEmpty()) {
            return "";
        }
        int length = this.hp.length() + 3;
        String str = this.f26182e;
        return this.f26182e.substring(length, com.byazt.ndb.e.hp(str, length, str.length(), ":@"));
    }

    public String query() {
        if (this.f26185s == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        l(sb, this.f26185s);
        return sb.toString();
    }

    public String toString() {
        return this.f26182e;
    }

    public String w() {
        if (this.f26185s == null) {
            return null;
        }
        int iIndexOf = this.f26182e.indexOf(63) + 1;
        String str = this.f26182e;
        return this.f26182e.substring(iIndexOf, com.byazt.ndb.e.hp(str, iIndexOf, str.length(), '#'));
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

    public static eb jx(String str) {
        hp hpVar = new hp();
        if (hpVar.hp((eb) null, str) == hp.EnumC0385hp.SUCCESS) {
            return hpVar.l();
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
                com.byazt.ndb.hp hpVar = new com.byazt.ndb.hp();
                hpVar.hp(str, i2, i4);
                hp(hpVar, str, i4, i3, z2);
                return hpVar.jx();
            }
        }
        return str.substring(i2, i3);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(com.byazt.ndb.hp r5, java.lang.String r6, int r7, int r8, boolean r9) {
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
            int r2 = com.byazt.ndb.e.hp(r2)
            char r3 = r6.charAt(r1)
            int r3 = com.byazt.ndb.e.hp(r3)
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
            r5.hp(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.uhg.eb.hp(com.byazt.ndb.hp, java.lang.String, int, int, boolean):void");
    }

    public static boolean hp(String str, int i2, int i3) {
        int i4 = i2 + 2;
        return i4 < i3 && str.charAt(i2) == '%' && com.byazt.ndb.e.hp(str.charAt(i2 + 1)) != -1 && com.byazt.ndb.e.hp(str.charAt(i4)) != -1;
    }

    public static String hp(String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        int iCharCount = i2;
        while (iCharCount < i3) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z2 && (!z3 || hp(str, iCharCount, i3)))) && (iCodePointAt != 43 || !z4)))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                com.byazt.ndb.hp hpVar = new com.byazt.ndb.hp();
                hpVar.hp(str, i2, iCharCount);
                hp(hpVar, str, iCharCount, i3, str2, z2, z3, z4, z5, charset);
                return hpVar.jx();
            }
        }
        return str.substring(i2, i3);
    }

    public static void hp(com.byazt.ndb.hp hpVar, String str, int i2, int i3, String str2, boolean z2, boolean z3, boolean z4, boolean z5, Charset charset) {
        com.byazt.ndb.hp hpVar2 = null;
        while (i2 < i3) {
            int iCodePointAt = str.codePointAt(i2);
            if (!z2 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z4) {
                    hpVar.hp(z2 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z5) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z2 && (!z3 || hp(str, i2, i3)))))) {
                    hpVar.hp(iCodePointAt);
                } else {
                    if (hpVar2 == null) {
                        hpVar2 = new com.byazt.ndb.hp();
                    }
                    if (charset != null && !charset.equals(com.byazt.ndb.e.hp)) {
                        hpVar2.hp(str, i2, Character.charCount(iCodePointAt) + i2, charset);
                    } else {
                        hpVar2.hp(iCodePointAt);
                    }
                    while (!hpVar2.hp()) {
                        byte bL = hpVar2.l();
                        hpVar.l(37);
                        char[] cArr = f26180j;
                        hpVar.l((int) cArr[((bL & 255) >> 4) & 15]);
                        hpVar.l((int) cArr[bL & ek.f49295m]);
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
