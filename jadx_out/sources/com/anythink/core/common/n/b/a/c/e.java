package com.anythink.core.common.n.b.a.c;

import com.anythink.core.common.n.b.ad;
import com.anythink.core.common.n.b.af;
import com.anythink.core.common.n.b.m;
import com.anythink.core.common.n.b.n;
import com.anythink.core.common.n.b.u;
import com.anythink.core.common.n.b.v;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private static final com.anythink.core.common.n.c.f f6236a = com.anythink.core.common.n.c.f.a("\"\\");

    /* renamed from: b, reason: collision with root package name */
    private static final com.anythink.core.common.n.c.f f6237b = com.anythink.core.common.n.c.f.a("\t ,=");

    private e() {
    }

    public static long a(af afVar) {
        return a(afVar.f().a(com.sigmob.sdk.downloader.core.c.f37366e));
    }

    public static boolean b(af afVar) {
        return c(afVar.f()).contains("*");
    }

    private static Set<String> c(u uVar) {
        Set<String> treeSet = Collections.EMPTY_SET;
        int iA = uVar.a();
        for (int i2 = 0; i2 < iA; i2++) {
            if ("Vary".equalsIgnoreCase(uVar.a(i2))) {
                String strB = uVar.b(i2);
                if (treeSet.isEmpty()) {
                    treeSet = new TreeSet<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
                }
                for (String str : strB.split(",")) {
                    treeSet.add(str.trim());
                }
            }
        }
        return treeSet;
    }

    private static String d(com.anythink.core.common.n.c.c cVar) {
        try {
            long jC = cVar.c(f6237b);
            if (jC == -1) {
                jC = cVar.b();
            }
            if (jC != 0) {
                return cVar.e(jC);
            }
            return null;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    private static Set<String> e(af afVar) {
        return c(afVar.f());
    }

    private static long a(u uVar) {
        return a(uVar.a(com.sigmob.sdk.downloader.core.c.f37366e));
    }

    private static boolean b(u uVar) {
        return c(uVar).contains("*");
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    private static int b(com.anythink.core.common.n.c.c cVar) {
        int i2 = 0;
        while (!cVar.g() && cVar.c(0L) == 61) {
            i2++;
            cVar.k();
        }
        return i2;
    }

    private static u a(u uVar, u uVar2) {
        Set<String> setC = c(uVar2);
        if (setC.isEmpty()) {
            return com.anythink.core.common.n.b.a.c.f6217c;
        }
        u.a aVar = new u.a();
        int iA = uVar.a();
        for (int i2 = 0; i2 < iA; i2++) {
            String strA = uVar.a(i2);
            if (setC.contains(strA)) {
                aVar.a(strA, uVar.b(i2));
            }
        }
        return aVar.a();
    }

    public static boolean d(af afVar) {
        if (afVar.a().b().equals(com.sigmob.sdk.downloader.core.c.f37362a)) {
            return false;
        }
        int iC = afVar.c();
        return (((iC >= 100 && iC < 200) || iC == 204 || iC == 304) && a(afVar) == -1 && !"chunked".equalsIgnoreCase(afVar.a(com.sigmob.sdk.downloader.core.c.f37369h))) ? false : true;
    }

    public static int b(String str, int i2) {
        try {
            long j2 = Long.parseLong(str);
            if (j2 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j2 < 0) {
                return 0;
            }
            return (int) j2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    public static u c(af afVar) {
        u uVarC = afVar.i().a().c();
        Set<String> setC = c(afVar.f());
        if (setC.isEmpty()) {
            return com.anythink.core.common.n.b.a.c.f6217c;
        }
        u.a aVar = new u.a();
        int iA = uVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            String strA = uVarC.a(i2);
            if (setC.contains(strA)) {
                aVar.a(strA, uVarC.b(i2));
            }
        }
        return aVar.a();
    }

    public static List<com.anythink.core.common.n.b.h> a(u uVar, String str) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < uVar.a(); i2++) {
            if (str.equalsIgnoreCase(uVar.a(i2))) {
                a(arrayList, new com.anythink.core.common.n.c.c().b(uVar.b(i2)));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c1, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c1, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void a(java.util.List<com.anythink.core.common.n.b.h> r7, com.anythink.core.common.n.c.c r8) {
        /*
            r0 = 0
        L1:
            r1 = r0
        L2:
            if (r1 != 0) goto Lf
            a(r8)
            java.lang.String r1 = d(r8)
            if (r1 != 0) goto Lf
            goto Lbe
        Lf:
            boolean r2 = a(r8)
            java.lang.String r3 = d(r8)
            if (r3 != 0) goto L2c
            boolean r8 = r8.g()
            if (r8 != 0) goto L21
            goto Lbe
        L21:
            com.anythink.core.common.n.b.h r8 = new com.anythink.core.common.n.b.h
            java.util.Map r0 = java.util.Collections.EMPTY_MAP
            r8.<init>(r1, r0)
            r7.add(r8)
            return
        L2c:
            int r4 = b(r8)
            boolean r5 = a(r8)
            if (r2 != 0) goto L66
            if (r5 != 0) goto L3e
            boolean r2 = r8.g()
            if (r2 == 0) goto L66
        L3e:
            com.anythink.core.common.n.b.h r2 = new com.anythink.core.common.n.b.h
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r3)
            char[] r3 = new char[r4]
            r4 = 61
            java.util.Arrays.fill(r3, r4)
            java.lang.String r4 = new java.lang.String
            r4.<init>(r3)
            r5.append(r4)
            java.lang.String r3 = r5.toString()
            java.util.Map r3 = java.util.Collections.singletonMap(r0, r3)
            r2.<init>(r1, r3)
            r7.add(r2)
            goto L1
        L66:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>()
            int r5 = b(r8)
            int r4 = r4 + r5
        L70:
            if (r3 != 0) goto L80
            java.lang.String r3 = d(r8)
            boolean r4 = a(r8)
            if (r4 != 0) goto Lc1
            int r4 = b(r8)
        L80:
            if (r4 == 0) goto Lc1
            r5 = 1
            if (r4 <= r5) goto L86
            goto Lbe
        L86:
            boolean r5 = a(r8)
            if (r5 == 0) goto L8d
            goto Lbe
        L8d:
            boolean r5 = r8.g()
            if (r5 != 0) goto La2
            r5 = 0
            byte r5 = r8.c(r5)
            r6 = 34
            if (r5 != r6) goto La2
            java.lang.String r5 = c(r8)
            goto La6
        La2:
            java.lang.String r5 = d(r8)
        La6:
            if (r5 != 0) goto La9
            goto Lbe
        La9:
            java.lang.Object r3 = r2.put(r3, r5)
            java.lang.String r3 = (java.lang.String) r3
            if (r3 == 0) goto Lb2
            goto Lbe
        Lb2:
            boolean r3 = a(r8)
            if (r3 != 0) goto Lbf
            boolean r3 = r8.g()
            if (r3 != 0) goto Lbf
        Lbe:
            return
        Lbf:
            r3 = r0
            goto L70
        Lc1:
            com.anythink.core.common.n.b.h r4 = new com.anythink.core.common.n.b.h
            r4.<init>(r1, r2)
            r7.add(r4)
            r1 = r3
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.c.e.a(java.util.List, com.anythink.core.common.n.c.c):void");
    }

    private static String c(com.anythink.core.common.n.c.c cVar) {
        if (cVar.k() == 34) {
            com.anythink.core.common.n.c.c cVar2 = new com.anythink.core.common.n.c.c();
            while (true) {
                long jC = cVar.c(f6236a);
                if (jC == -1) {
                    return null;
                }
                if (cVar.c(jC) == 34) {
                    cVar2.a(cVar, jC);
                    cVar.k();
                    return cVar2.u();
                }
                if (cVar.b() == jC + 1) {
                    return null;
                }
                cVar2.a(cVar, jC);
                cVar.k();
                cVar2.a(cVar, 1L);
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    private static boolean a(com.anythink.core.common.n.c.c cVar) {
        boolean z2 = false;
        while (!cVar.g()) {
            byte bC = cVar.c(0L);
            if (bC != 44) {
                if (bC != 32 && bC != 9) {
                    break;
                }
                cVar.k();
            } else {
                cVar.k();
                z2 = true;
            }
        }
        return z2;
    }

    private static String a(int i2) {
        char[] cArr = new char[i2];
        Arrays.fill(cArr, '=');
        return new String(cArr);
    }

    public static void a(n nVar, v vVar, u uVar) {
        if (nVar == n.f6906a) {
            return;
        }
        m.a(vVar, uVar).isEmpty();
    }

    public static int a(String str, int i2, String str2) {
        while (i2 < str.length() && str2.indexOf(str.charAt(i2)) == -1) {
            i2++;
        }
        return i2;
    }

    public static int a(String str, int i2) {
        char cCharAt;
        while (i2 < str.length() && ((cCharAt = str.charAt(i2)) == ' ' || cCharAt == '\t')) {
            i2++;
        }
        return i2;
    }

    public static boolean a(af afVar, u uVar, ad adVar) {
        for (String str : c(afVar.f())) {
            if (!Objects.equals(uVar.b(str), adVar.b(str))) {
                return false;
            }
        }
        return true;
    }
}
