package com.meishu.sdk.core.utils;

import android.text.TextUtils;
import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.PackageBean;
import com.meishu.sdk.core.utils.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* loaded from: classes4.dex */
public class d {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ int f31854n = 0;

    /* renamed from: c, reason: collision with root package name */
    public PackageBean f31857c;

    /* renamed from: d, reason: collision with root package name */
    public PackageBean f31858d;

    /* renamed from: e, reason: collision with root package name */
    public int f31859e;

    /* renamed from: f, reason: collision with root package name */
    public long f31860f;

    /* renamed from: g, reason: collision with root package name */
    public int f31861g;

    /* renamed from: h, reason: collision with root package name */
    public int f31862h;

    /* renamed from: i, reason: collision with root package name */
    public int f31863i;

    /* renamed from: j, reason: collision with root package name */
    public int f31864j;

    /* renamed from: k, reason: collision with root package name */
    public int f31865k;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList<PackageBean.AppBean.PackBean> f31855a = new ArrayList<>();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<String, Boolean> f31856b = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public volatile boolean f31866l = false;

    /* renamed from: m, reason: collision with root package name */
    public final Object f31867m = new Object();

    public class a extends com.meishu.sdk.core.safe.l {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f31868a;

        public a(boolean z2) {
            this.f31868a = z2;
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            if (d.this.a(this.f31868a)) {
                r0.a(AdSdk.getContext(), d.this.f31857c);
            }
        }
    }

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public static final d f31870a = new d();
    }

    public void a(boolean z2, boolean z3) {
        if (z2) {
            ExecutorService executorService = h0.f31906a;
            h0.b.f31910a.a(new a(z3));
        } else if (a(z3)) {
            r0.a(AdSdk.getContext(), this.f31857c);
        }
    }

    public final boolean a(boolean z2) {
        try {
            if (this.f31855a.isEmpty()) {
                synchronized (this.f31867m) {
                    a((PackageBean) null);
                }
            }
            if (this.f31855a.isEmpty()) {
                LogUtil.d("d", "finalList is empty");
                this.f31866l = false;
                return false;
            }
            if (System.currentTimeMillis() - this.f31860f < this.f31863i) {
                LogUtil.d("d", "time interval too close");
                this.f31866l = false;
                return false;
            }
            int i2 = z2 ? this.f31862h : this.f31861g;
            if (i2 <= 0) {
                LogUtil.e("d", "no check PackBean. isInit:" + z2);
                this.f31866l = false;
                return false;
            }
            if (this.f31866l) {
                LogUtil.e("d", "isChecking. no check PackBean.");
                this.f31866l = false;
                return false;
            }
            this.f31866l = true;
            ArrayList<PackageBean.AppBean.PackBean> arrayList = this.f31855a;
            if (arrayList != null && !arrayList.isEmpty()) {
                Collections.sort(arrayList, new e(this));
            }
            ArrayList<PackageBean.AppBean.PackBean> arrayList2 = this.f31855a;
            int size = arrayList2.size();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    break;
                }
                PackageBean.AppBean.PackBean packBean = arrayList2.get(i4);
                i4++;
                PackageBean.AppBean.PackBean packBean2 = packBean;
                if (this.f31864j == 0 && !com.meishu.sdk.core.service.d.a()) {
                    LogUtil.d("d", "app background, no check PackBean");
                    break;
                }
                if (r0.a(AdSdk.getContext(), this.f31859e, packBean2)) {
                    try {
                        this.f31856b.put(packBean2.getId(), Boolean.valueOf(packBean2.getInstalled()));
                    } catch (Throwable unused) {
                    }
                    i3++;
                    if (i3 >= i2) {
                        break;
                    }
                    int i5 = this.f31865k;
                    if (i5 > 0) {
                        try {
                            Thread.sleep(i5);
                        } catch (Exception unused2) {
                        }
                    }
                }
            }
            if (i3 == 0) {
                LogUtil.d("d", "checkCount zero.");
                this.f31866l = false;
                return false;
            }
            this.f31860f = System.currentTimeMillis();
            synchronized (this.f31867m) {
                try {
                    AdSdk.getSharedPreferences().edit().putString("packageKey", v.f32031a.toJson(this.f31857c)).commit();
                } catch (Exception unused3) {
                }
            }
            this.f31866l = false;
            return true;
        } catch (Throwable unused4) {
            this.f31866l = false;
            return false;
        }
    }

    public final void a(PackageBean packageBean) {
        PackageBean packageBeanA;
        try {
            if (packageBean == null) {
                if (this.f31855a.isEmpty() && (packageBeanA = a()) != null) {
                    this.f31857c = packageBeanA;
                }
                return;
            }
            this.f31857c = packageBean;
            a(packageBean.getApp());
            PackageBean packageBean2 = this.f31857c;
            if (packageBean2 != null && packageBean2.getApp() != null) {
                Integer ttl = this.f31857c.getApp().getTtl();
                int i2 = 0;
                this.f31859e = ttl != null ? ttl.intValue() : 0;
                Integer a3 = this.f31857c.getApp().getA();
                this.f31862h = a3 != null ? a3.intValue() : 10;
                Integer b3 = this.f31857c.getApp().getB();
                this.f31861g = b3 != null ? b3.intValue() : 5;
                Integer c2 = this.f31857c.getApp().getC();
                this.f31865k = c2 != null ? c2.intValue() : 200;
                Integer d2 = this.f31857c.getApp().getD();
                this.f31863i = d2 != null ? d2.intValue() : 300000;
                Integer e2 = this.f31857c.getApp().getE();
                this.f31864j = e2 != null ? e2.intValue() : 0;
                List<PackageBean.AppBean.PackBean> required = this.f31857c.getApp().getRequired();
                List<PackageBean.AppBean.PackBean> others = this.f31857c.getApp().getOthers();
                this.f31855a.clear();
                this.f31856b.clear();
                if (required != null && !required.isEmpty()) {
                    this.f31855a.addAll(required);
                }
                if (others != null && !others.isEmpty()) {
                    this.f31855a.addAll(others);
                }
                ArrayList<PackageBean.AppBean.PackBean> arrayList = this.f31855a;
                int size = arrayList.size();
                while (i2 < size) {
                    PackageBean.AppBean.PackBean packBean = arrayList.get(i2);
                    i2++;
                    PackageBean.AppBean.PackBean packBean2 = packBean;
                    if (packBean2 != null && packBean2.getExpirationTime() == 0 && packBean2.getLastCheckTime() > 0) {
                        packBean2.setExpirationTime((this.f31859e * 1000) + packBean2.getLastCheckTime());
                    }
                    if (!TextUtils.isEmpty(packBean2.getId()) && (packBean2.getLastCheckTime() > 0 || packBean2.getExpirationTime() > 0)) {
                        try {
                            this.f31856b.put(packBean2.getId(), Boolean.valueOf(packBean2.getInstalled()));
                        } catch (Throwable unused) {
                        }
                    }
                }
                ArrayList<PackageBean.AppBean.PackBean> arrayList2 = this.f31855a;
                if (arrayList2 != null && !arrayList2.isEmpty()) {
                    Collections.sort(arrayList2, new e(this));
                    return;
                }
                return;
            }
            this.f31855a.clear();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public final void a(PackageBean.AppBean appBean) {
        HashMap map;
        if (appBean == null) {
            return;
        }
        PackageBean packageBeanA = a();
        if (packageBeanA == null || packageBeanA.getApp() == null) {
            map = null;
        } else {
            map = new HashMap();
            List<PackageBean.AppBean.PackBean> required = packageBeanA.getApp().getRequired();
            if (required != null && !required.isEmpty()) {
                for (PackageBean.AppBean.PackBean packBean : required) {
                    if (!TextUtils.isEmpty(packBean.getId())) {
                        map.put(packBean.getId(), packBean);
                    }
                }
            }
            List<PackageBean.AppBean.PackBean> others = packageBeanA.getApp().getOthers();
            if (others != null && !others.isEmpty()) {
                for (PackageBean.AppBean.PackBean packBean2 : others) {
                    if (!TextUtils.isEmpty(packBean2.getId())) {
                        map.put(packBean2.getId(), packBean2);
                    }
                }
            }
        }
        if (map == null || map.isEmpty()) {
            return;
        }
        List<PackageBean.AppBean.PackBean> required2 = appBean.getRequired();
        if (required2 != null) {
            for (PackageBean.AppBean.PackBean packBean3 : required2) {
                PackageBean.AppBean.PackBean packBean4 = (PackageBean.AppBean.PackBean) map.get(packBean3.getId());
                if (packBean4 != null) {
                    packBean3.setInstalled(packBean4.getInstalled());
                    packBean3.setLastCheckTime(packBean4.getLastCheckTime());
                    packBean3.setExpirationTime(packBean4.getExpirationTime());
                }
            }
        }
        List<PackageBean.AppBean.PackBean> others2 = appBean.getOthers();
        if (others2 != null) {
            for (PackageBean.AppBean.PackBean packBean5 : others2) {
                PackageBean.AppBean.PackBean packBean6 = (PackageBean.AppBean.PackBean) map.get(packBean5.getId());
                if (packBean6 != null) {
                    packBean5.setInstalled(packBean6.getInstalled());
                    packBean5.setLastCheckTime(packBean6.getLastCheckTime());
                    packBean5.setExpirationTime(packBean6.getExpirationTime());
                }
            }
        }
    }

    public final PackageBean a() {
        PackageBean packageBean = this.f31858d;
        if (packageBean != null) {
            return packageBean;
        }
        String string = AdSdk.getSharedPreferences().getString("packageKey", "");
        if (TextUtils.isEmpty(string)) {
            this.f31858d = null;
        } else {
            this.f31858d = (PackageBean) v.f32031a.fromJson(string, PackageBean.class);
        }
        return this.f31858d;
    }
}
