package com.byazt.hq;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

@com.byazt.kj.hp(hp = {0, 1, 158, 65})
/* loaded from: classes2.dex */
public final class vv {
    public final String[] hp;

    public vv(hp hpVar) {
        List<String> list = hpVar.hp;
        this.hp = (String[]) list.toArray(new String[list.size()]);
    }

    public boolean equals(Object obj) {
        return (obj instanceof vv) && Arrays.equals(((vv) obj).hp, this.hp);
    }

    public int hashCode() {
        return Arrays.hashCode(this.hp);
    }

    public String hp(String str) {
        return hp(this.hp, str);
    }

    public Map<String, List<String>> jx() {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int iHp = hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            String lowerCase = hp(i2).toLowerCase(Locale.US);
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(l(i2));
        }
        return treeMap;
    }

    public String l(int i2) {
        return this.hp[(i2 * 2) + 1];
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iHp = hp();
        for (int i2 = 0; i2 < iHp; i2++) {
            sb.append(hp(i2));
            sb.append(": ");
            sb.append(l(i2));
            sb.append("\n");
        }
        return sb.toString();
    }

    @com.byazt.kj.hp(hp = {0, 1, 158, 1544})
    public static final class hp {
        public final List<String> hp = new ArrayList(20);

        private void j(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt <= ' ' || cCharAt >= 127) {
                    throw new IllegalArgumentException(com.byazt.ru.jx.hp("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value for name " + str + " == null");
            }
            int length2 = str2.length();
            for (int i3 = 0; i3 < length2; i3++) {
                char cCharAt2 = str2.charAt(i3);
                if ((cCharAt2 <= 31 && cCharAt2 != '\t') || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(com.byazt.ru.jx.hp("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i3), str, str2));
                }
            }
        }

        public hp hp(String str) {
            int iIndexOf = str.indexOf(":", 1);
            return iIndexOf != -1 ? l(str.substring(0, iIndexOf), str.substring(iIndexOf + 1)) : str.startsWith(":") ? l("", str.substring(1)) : l("", str);
        }

        public hp jx(String str, String str2) {
            try {
                j(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        int length = str2.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            char cCharAt = str2.charAt(i2);
                            if ((cCharAt > 31 || cCharAt == '\t') && cCharAt < 127) {
                                sb.append(cCharAt);
                            } else {
                                sb.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            }
                        }
                        str2 = sb.toString();
                    } catch (UnsupportedEncodingException unused2) {
                    }
                }
            }
            l(str);
            l(str, str2);
            return this;
        }

        public hp l(String str, String str2) {
            this.hp.add(str);
            this.hp.add(str2.trim());
            return this;
        }

        public hp l(String str) {
            int i2 = 0;
            while (i2 < this.hp.size()) {
                if (str.equalsIgnoreCase(this.hp.get(i2))) {
                    this.hp.remove(i2);
                    this.hp.remove(i2);
                    i2 -= 2;
                }
                i2 += 2;
            }
            return this;
        }

        public hp hp(String str, String str2) {
            try {
                j(str, str2);
            } catch (Throwable unused) {
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                    try {
                        StringBuilder sb = new StringBuilder();
                        int length = str2.length();
                        for (int i2 = 0; i2 < length; i2++) {
                            char cCharAt = str2.charAt(i2);
                            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                                sb.append(URLEncoder.encode(String.valueOf(cCharAt), "UTF-8"));
                            } else {
                                sb.append(cCharAt);
                            }
                        }
                        str2 = sb.toString();
                    } catch (UnsupportedEncodingException unused2) {
                        return this;
                    }
                }
                return this;
            }
            return l(str, str2);
        }

        public vv hp() {
            return new vv(this);
        }
    }

    public int hp() {
        return this.hp.length / 2;
    }

    public List<String> l(String str) {
        int iHp = hp();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < iHp; i2++) {
            if (str.equalsIgnoreCase(hp(i2))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(l(i2));
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.EMPTY_LIST;
    }

    private vv(String[] strArr) {
        this.hp = strArr;
    }

    public String hp(int i2) {
        return this.hp[i2 * 2];
    }

    private static String hp(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static vv hp(String... strArr) {
        if (strArr != null) {
            if (strArr.length % 2 == 0) {
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
                    if (str2.length() == 0 || str2.indexOf(0) != -1 || str3.indexOf(0) != -1) {
                        throw new IllegalArgumentException("Unexpected header: " + str2 + ": " + str3);
                    }
                }
                return new vv(strArr2);
            }
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        throw new NullPointerException("namesAndValues == null");
    }

    public hp l() {
        hp hpVar = new hp();
        Collections.addAll(hpVar.hp, this.hp);
        return hpVar;
    }
}
