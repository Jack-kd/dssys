package com.beizi.fusion;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArrayMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class no {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15384a;

    /* renamed from: b, reason: collision with root package name */
    private final Map f15385b = new ArrayMap();

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15386a;

        static {
            int[] iArr = new int[EnumC1130d.values().length];
            f15386a = iArr;
            try {
                iArr[EnumC1130d.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15386a[EnumC1130d.SPLASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15386a[EnumC1130d.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15386a[EnumC1130d.BANNER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15386a[EnumC1130d.VIDEO.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public no(Context context) {
        this.f15384a = context.getApplicationContext();
    }

    private void c() {
        long jA = a("UPT", 0L);
        if (jA == 0) {
            jA = System.currentTimeMillis();
            b("UPT", jA);
        }
        this.f15385b.put("UPT", Long.valueOf(jA));
    }

    public boolean a(long j2) {
        Map map = this.f15385b;
        if (map != null && map.containsKey("UPT")) {
            Long l2 = (Long) this.f15385b.get("UPT");
            if (System.currentTimeMillis() - (l2 != null ? l2.longValue() : 0L) < j2) {
                return true;
            }
        }
        return false;
    }

    public void b(EnumC1130d enumC1130d) {
        String strA = a(enumC1130d);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f15385b.put(strA, Long.valueOf(jCurrentTimeMillis));
        b(strA, jCurrentTimeMillis);
    }

    public void d() {
        c();
        b();
    }

    public boolean a(EnumC1130d enumC1130d, long j2) {
        Map map;
        String strA = a(enumC1130d);
        if (!TextUtils.isEmpty(strA) && (map = this.f15385b) != null && map.containsKey(strA)) {
            Long l2 = (Long) this.f15385b.get(strA);
            if (System.currentTimeMillis() - (l2 != null ? l2.longValue() : 0L) < j2) {
                return true;
            }
        }
        return false;
    }

    private void b() {
        String[] strArr = {"SCD", "BCD", "NCD", "ICD", "VCD"};
        for (int i2 = 0; i2 < 5; i2++) {
            String str = strArr[i2];
            long jA = a(str, 0L);
            if (jA != 0) {
                this.f15385b.put(str, Long.valueOf(jA));
            }
        }
    }

    private String a(EnumC1130d enumC1130d) {
        int i2 = a.f15386a[enumC1130d.ordinal()];
        if (i2 == 1) {
            return "ICD";
        }
        if (i2 == 2) {
            return "SCD";
        }
        if (i2 == 3) {
            return "NCD";
        }
        if (i2 == 4) {
            return "BCD";
        }
        if (i2 != 5) {
            return null;
        }
        return "VCD";
    }

    private void b(String str, long j2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p0.b(this.f15384a, a(), str, j2);
    }

    private long a(String str, long j2) {
        return (TextUtils.isEmpty(str) || !p0.a(this.f15384a, a(), str)) ? j2 : p0.a(this.f15384a, a(), str, j2);
    }

    private String a() {
        return String.format("asnp_user_%s", m0.a());
    }
}
