package com.fl.saas;

import android.text.TextUtils;
import android.util.Pair;
import com.fl.saas.C1188j;
import com.fl.saas.adx.util.DeviceUtil;
import com.fl.saas.adx.util.LogcatUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.fl.saas.x, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C1230x {

    /* renamed from: a, reason: collision with root package name */
    private static C1230x f30697a;

    /* renamed from: com.fl.saas.x$a */
    public class a implements T {
        public a() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("");
        }

        @Override // com.fl.saas.T
        public void b(String str) {
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("");
        }
    }

    /* renamed from: com.fl.saas.x$b */
    public class b implements T {
        public b() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink requset onSuccess");
        }

        @Override // com.fl.saas.T
        public void b(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink requset 302");
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDK-S2S", "deeplink requset onError:" + exc.getMessage());
        }
    }

    /* renamed from: com.fl.saas.x$c */
    public class c implements T {
        public c() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink installed requset onSuccess");
        }

        @Override // com.fl.saas.T
        public void b(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink installed requset 302");
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDK-S2S", "deeplink installed requset onError:" + exc.getMessage());
        }
    }

    /* renamed from: com.fl.saas.x$d */
    public class d implements T {
        public d() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink attempt requset onSuccess");
        }

        @Override // com.fl.saas.T
        public void b(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink attempt requset 302");
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDK-S2S", "deeplink attempt requset onError:" + exc.getMessage());
        }
    }

    /* renamed from: com.fl.saas.x$e */
    public class e implements T {
        public e() {
        }

        @Override // com.fl.saas.T
        public void a(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink fail requset onSuccess");
        }

        @Override // com.fl.saas.T
        public void b(String str) {
            LogcatUtil.d("FLSDK-S2S", "deeplink fail requset 302");
        }

        @Override // com.fl.saas.T
        public void onError(Exception exc) {
            LogcatUtil.d("FLSDK-S2S", "deeplink fail requset onError:" + exc.getMessage());
        }
    }

    /* renamed from: com.fl.saas.x$f */
    public static /* synthetic */ class f {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30703a;

        static {
            int[] iArr = new int[C1188j.b.values().length];
            f30703a = iArr;
            try {
                iArr[C1188j.b.SHAKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30703a[C1188j.b.SLIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f30703a[C1188j.b.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean a(String str, String str2, int i2) {
        try {
            String str3 = str + "showId";
            String str4 = str + "lastAdShowDay";
            String str5 = str + "lastDayAdShowNumber";
            String strC = S0.a().c(str4);
            String date = DeviceUtil.getDate();
            if (!date.equals(strC)) {
                S0.a().b(str5, 0);
                S0.a().b(str3, "");
            } else if (S0.a().a(str3, "").contains(str2)) {
                return true;
            }
            int iA = S0.a().a(str5);
            if (i2 > 0) {
                if (date.equals(strC) && iA >= i2) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            LogcatUtil.debug(th);
            return false;
        }
    }

    public void b(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        a(c1188j.f30519k1, c1188j);
    }

    public void c(C1188j c1188j) {
        if (c1188j == null || "5".equals(c1188j.f30554w0) || "6".equals(c1188j.f30554w0)) {
            return;
        }
        if (c1188j.s()) {
            AbstractC1236z.a("click", c1188j);
        }
        a(a(c1188j.f30459R0, Pair.create("__X_MAX_ACC__", String.valueOf(c1188j.f30445M1)), Pair.create("__Y_MAX_ACC__", String.valueOf(c1188j.f30448N1)), Pair.create("__Z_MAX_ACC__", String.valueOf(c1188j.f30451O1))), c1188j);
    }

    public void d(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        Iterator it = c1188j.f30462S0.iterator();
        while (it.hasNext()) {
            C1166c.c().a(a((String) it.next(), c1188j), new b());
        }
    }

    public void e(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        Iterator it = c1188j.f30528n1.iterator();
        while (it.hasNext()) {
            C1166c.c().a(a((String) it.next(), c1188j), new d());
        }
    }

    public void f(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        Iterator it = c1188j.f30531o1.iterator();
        while (it.hasNext()) {
            C1166c.c().a(a((String) it.next(), c1188j), new e());
        }
    }

    public void g(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        Iterator it = c1188j.f30525m1.iterator();
        while (it.hasNext()) {
            C1166c.c().a(a((String) it.next(), c1188j), new c());
        }
    }

    public void h(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30510h1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30510h1, c1188j);
    }

    public void i(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30495c1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30495c1, c1188j);
    }

    public void j(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30483Z0) == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = c1188j.f30483Z0.iterator();
        while (it.hasNext()) {
            arrayList.add(b((String) it.next(), c1188j));
        }
        a(arrayList, c1188j);
    }

    public void k(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30516j1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30516j1, c1188j);
    }

    public void l(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30504f1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30504f1, c1188j);
    }

    public void m(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30501e1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30501e1, c1188j);
    }

    public void n(C1188j c1188j) {
        List list;
        if (c1188j == null || (list = c1188j.f30498d1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30498d1, c1188j);
    }

    private void a(List list, C1188j c1188j) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            C1166c.c().a(a((String) list.get(i2), c1188j), new a());
        }
    }

    public void b(C1188j c1188j, int i2) {
        List list;
        if (c1188j == null || (list = c1188j.f30465T0) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30465T0, c1188j);
    }

    public void c(C1188j c1188j, int i2) {
        List list;
        if (c1188j == null || (list = c1188j.f30513i1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30513i1, c1188j);
    }

    public void d(C1188j c1188j, int i2) {
        List list;
        if (c1188j == null || (list = c1188j.f30491b1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30491b1, c1188j);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x02a4 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x034a A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03ba A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x03c9 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03d8 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03e7 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03f6 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0405 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0414 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0423 A[Catch: all -> 0x04ea, TryCatch #2 {all -> 0x04ea, blocks: (B:40:0x010e, B:41:0x0112, B:46:0x0126, B:48:0x02a4, B:49:0x02bb, B:51:0x034a, B:60:0x0365, B:57:0x035d, B:58:0x0360, B:59:0x0363, B:61:0x036b, B:63:0x03ba, B:64:0x03c3, B:66:0x03c9, B:67:0x03d2, B:69:0x03d8, B:70:0x03e1, B:72:0x03e7, B:73:0x03f0, B:75:0x03f6, B:76:0x03ff, B:78:0x0405, B:79:0x040e, B:81:0x0414, B:82:0x041d, B:84:0x0423, B:85:0x042c, B:45:0x0121), top: B:94:0x00df }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r20, com.fl.saas.C1188j r21) {
        /*
            Method dump skipped, instructions count: 1259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fl.saas.C1230x.a(java.lang.String, com.fl.saas.j):java.lang.String");
    }

    public String b(String str, C1188j c1188j) {
        try {
            return str.replaceAll("__BEGIN_TIME__", c1188j.f30481Y1 + "").replaceAll("__END_TIME__", c1188j.f30484Z1 + "").replaceAll("__PLAY_FIRST_FRAME__", c1188j.f30488a2 + "").replaceAll("__PLAY_LAST_FRAME__", c1188j.f30492b2 + "").replaceAll("__SCENE__", c1188j.c2 + "").replaceAll("__TYPE__", c1188j.d2 + "").replaceAll("__BEHAVIOR__", c1188j.e2 + "").replaceAll("__STATUS__", c1188j.f2 + "");
        } catch (Throwable unused) {
            return str;
        }
    }

    public static C1230x a() {
        if (f30697a == null) {
            synchronized (C1230x.class) {
                f30697a = new C1230x();
            }
        }
        return f30697a;
    }

    private static String a(String str, String str2, String str3) {
        return TextUtils.isEmpty(str) ? str : str.replaceAll(str2, str3);
    }

    private static List a(List list, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((String) it.next(), str, str2));
        }
        return arrayList;
    }

    private static String a(String str, Pair... pairArr) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        for (Pair pair : pairArr) {
            str = a(str, (String) pair.first, (String) pair.second);
        }
        return str;
    }

    private static List a(List list, Pair... pairArr) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a((String) it.next(), pairArr));
        }
        return arrayList;
    }

    public void a(C1188j c1188j) {
        if (c1188j == null) {
            return;
        }
        a(c1188j.f30522l1, c1188j);
    }

    public void a(C1188j c1188j, boolean z2) {
        if (c1188j == null) {
            return;
        }
        if (c1188j.s()) {
            AbstractC1236z.a("mit", c1188j);
        }
        a(a(c1188j.f30456Q0, "__IS_CACHED__", String.valueOf(z2 ? 1 : 0)), c1188j);
    }

    public void a(C1188j c1188j, int i2) {
        List list;
        if (c1188j == null || (list = c1188j.f30487a1) == null || list.isEmpty()) {
            return;
        }
        a(c1188j.f30487a1, c1188j);
    }
}
