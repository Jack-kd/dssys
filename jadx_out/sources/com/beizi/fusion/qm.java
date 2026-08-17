package com.beizi.fusion;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class qm {

    /* renamed from: b, reason: collision with root package name */
    private static qm f15825b;

    /* renamed from: c, reason: collision with root package name */
    private static Map f15826c = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private boolean f15827a = false;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                StringBuilder sb = new StringBuilder();
                for (Map.Entry entry : qm.f15826c.entrySet()) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    sb.append(str);
                    sb.append(":");
                    sb.append(str2);
                }
                if (sb.length() > 0) {
                    String strB = i3.b(sb.toString());
                    if (TextUtils.isEmpty(strB)) {
                        return;
                    }
                    d8.a(q1.i().n(), "sdk_version_control", strB);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static synchronized qm b() {
        try {
            if (f15825b == null) {
                synchronized (qm.class) {
                    f15825b = new qm();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f15825b;
    }

    public synchronized int a(String str) {
        String[] strArrSplit;
        String[] strArrSplit2;
        try {
            if (f15826c == null) {
                return 0;
            }
            try {
                if (!this.f15827a) {
                    String strA = d8.a(q1.i().n(), "sdk_version_control");
                    if (!TextUtils.isEmpty(strA)) {
                        String strA2 = i3.a(strA);
                        if (!TextUtils.isEmpty(strA2)) {
                            if (strA2.contains("&")) {
                                String[] strArrSplit3 = strA2.split("&");
                                if (strArrSplit3 != null && strArrSplit3.length > 0) {
                                    for (String str2 : strArrSplit3) {
                                        if (!TextUtils.isEmpty(str2) && str2.contains(":") && (strArrSplit2 = str2.split(":")) != null && strArrSplit2.length == 2) {
                                            f15826c.put(strArrSplit2[0], strArrSplit2[1]);
                                        }
                                    }
                                }
                            } else if (strA2.contains(":") && (strArrSplit = strA2.split(":")) != null && strArrSplit.length == 2) {
                                f15826c.put(strArrSplit[0], strArrSplit[1]);
                            }
                        }
                    }
                }
                this.f15827a = true;
                if (f15826c.containsKey(str)) {
                    String str3 = (String) f15826c.get(str);
                    if ("2".equals(str3)) {
                        return 2;
                    }
                    if ("1".equals(str3)) {
                        return 1;
                    }
                }
            } catch (Exception unused) {
                this.f15827a = true;
            }
            return 0;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(String str, int i2) {
        if (i2 == 0) {
            return;
        }
        try {
            Map map = f15826c;
            if (map != null) {
                if (map.containsKey(str)) {
                    if (String.valueOf(i2).equals((String) f15826c.get(str))) {
                        return;
                    }
                }
                f15826c.put(str, String.valueOf(i2));
                w3.b().f().execute(new a());
            }
        } catch (Exception unused) {
        }
    }
}
