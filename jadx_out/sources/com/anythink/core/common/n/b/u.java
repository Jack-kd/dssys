package com.anythink.core.common.n.b;

import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    private final String[] f6928a;

    public u(a aVar) {
        List<String> list = aVar.f6929a;
        this.f6928a = (String[]) list.toArray(new String[list.size()]);
    }

    private Set<String> c() {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int length = this.f6928a.length / 2;
        for (int i2 = 0; i2 < length; i2++) {
            treeSet.add(a(i2));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    private Date d(String str) {
        String strA = a(str);
        if (strA != null) {
            return com.anythink.core.common.n.b.a.c.d.a(strA);
        }
        return null;
    }

    private Map<String, List<String>> e() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int length = this.f6928a.length / 2;
        for (int i2 = 0; i2 < length; i2++) {
            String lowerCase = a(i2).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(b(i2));
        }
        return treeMap;
    }

    public final String a(String str) {
        String[] strArr = this.f6928a;
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public final String b(int i2) {
        return this.f6928a[(i2 * 2) + 1];
    }

    public final boolean equals(Object obj) {
        return (obj instanceof u) && Arrays.equals(((u) obj).f6928a, this.f6928a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f6928a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int length = this.f6928a.length / 2;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(a(i2));
            sb.append(": ");
            sb.append(b(i2));
            sb.append("\n");
        }
        return sb.toString();
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        final List<String> f6929a = new ArrayList(20);

        private a d(String str) {
            int iIndexOf = str.indexOf(":");
            if (iIndexOf != -1) {
                return a(str.substring(0, iIndexOf).trim(), str.substring(iIndexOf + 1));
            }
            throw new IllegalArgumentException("Unexpected header: ".concat(str));
        }

        public final a a(String str) {
            int iIndexOf = str.indexOf(":", 1);
            return iIndexOf != -1 ? c(str.substring(0, iIndexOf), str.substring(iIndexOf + 1)) : str.startsWith(":") ? c("", str.substring(1)) : c("", str);
        }

        public final a b(String str, String str2) {
            u.c(str);
            return c(str, str2);
        }

        public final a c(String str, String str2) {
            this.f6929a.add(str);
            this.f6929a.add(str2.trim());
            return this;
        }

        private a b(String str, Date date) {
            d(str, com.anythink.core.common.n.b.a.c.d.a(date));
            return this;
        }

        public final String c(String str) {
            for (int size = this.f6929a.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase(this.f6929a.get(size))) {
                    return this.f6929a.get(size + 1);
                }
            }
            return null;
        }

        private a b(String str, Instant instant) {
            if (instant != null) {
                d(str, com.anythink.core.common.n.b.a.c.d.a(new Date(instant.toEpochMilli())));
                return this;
            }
            throw new NullPointerException("value for name " + str + " == null");
        }

        public final a d(String str, String str2) {
            u.c(str);
            u.a(str2, str);
            b(str);
            c(str, str2);
            return this;
        }

        public final a a(String str, String str2) {
            u.c(str);
            u.a(str2, str);
            return c(str, str2);
        }

        public final a b(String str) {
            int i2 = 0;
            while (i2 < this.f6929a.size()) {
                if (str.equalsIgnoreCase(this.f6929a.get(i2))) {
                    this.f6929a.remove(i2);
                    this.f6929a.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        private a a(u uVar) {
            int iA = uVar.a();
            for (int i2 = 0; i2 < iA; i2++) {
                c(uVar.a(i2), uVar.b(i2));
            }
            return this;
        }

        private a a(String str, Date date) {
            a(str, com.anythink.core.common.n.b.a.c.d.a(date));
            return this;
        }

        private a a(String str, Instant instant) {
            if (instant != null) {
                return a(str, new Date(instant.toEpochMilli()));
            }
            throw new NullPointerException("value for name " + str + " == null");
        }

        public final u a() {
            return new u(this);
        }
    }

    public final a b() {
        a aVar = new a();
        Collections.addAll(aVar.f6929a, this.f6928a);
        return aVar;
    }

    private u(String[] strArr) {
        this.f6928a = strArr;
    }

    private long d() {
        String[] strArr = this.f6928a;
        long length = strArr.length * 2;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            length += this.f6928a[i2].length();
        }
        return length;
    }

    public final List<String> b(String str) {
        int length = this.f6928a.length / 2;
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equalsIgnoreCase(a(i2))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i2));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.EMPTY_LIST;
    }

    public static void c(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                int length = str.length();
                for (int i2 = 0; i2 < length; i2++) {
                    char cCharAt = str.charAt(i2);
                    if (cCharAt <= ' ' || cCharAt >= 127) {
                        throw new IllegalArgumentException(com.anythink.core.common.n.b.a.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                    }
                }
                return;
            }
            throw new IllegalArgumentException("name is empty");
        }
        throw new NullPointerException("name == null");
    }

    public final int a() {
        return this.f6928a.length / 2;
    }

    public final String a(int i2) {
        return this.f6928a[i2 * 2];
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    private Instant e(String str) {
        String strA = a(str);
        Date dateA = strA != null ? com.anythink.core.common.n.b.a.c.d.a(strA) : null;
        if (dateA != null) {
            return dateA.toInstant();
        }
        return null;
    }

    public static u a(String... strArr) {
        String[] strArr2 = (String[]) strArr.clone();
        for (int i2 = 0; i2 < strArr2.length; i2++) {
            String str = strArr2[i2];
            if (str != null) {
                strArr2[i2] = str.trim();
            } else {
                throw new IllegalArgumentException("Headers cannot be null");
            }
        }
        for (int i3 = 0; i3 < strArr2.length; i3 += 2) {
            String str2 = strArr2[i3];
            String str3 = strArr2[i3 + 1];
            c(str2);
            a(str3, str2);
        }
        return new u(strArr2);
    }

    private static u a(Map<String, String> map) {
        if (map != null) {
            String[] strArr = new String[map.size() * 2];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (entry.getKey() != null && entry.getValue() != null) {
                    String strTrim = entry.getKey().trim();
                    String strTrim2 = entry.getValue().trim();
                    c(strTrim);
                    a(strTrim2, strTrim);
                    strArr[i2] = strTrim;
                    strArr[i2 + 1] = strTrim2;
                    i2 += 2;
                } else {
                    throw new IllegalArgumentException("Headers cannot be null");
                }
            }
            return new u(strArr);
        }
        throw new NullPointerException("headers == null");
    }

    public static void a(String str, String str2) {
        if (str != null) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                    throw new IllegalArgumentException(com.anythink.core.common.n.b.a.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str2, str));
                }
            }
            return;
        }
        throw new NullPointerException("value for name " + str2 + " == null");
    }
}
