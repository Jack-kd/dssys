package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.be;
import com.umeng.analytics.pro.dh;
import com.umeng.analytics.pro.dn;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static final long f50298a = 86400000;

    /* renamed from: b, reason: collision with root package name */
    public static f f50299b;

    /* renamed from: c, reason: collision with root package name */
    private static final String f50300c = be.b().b("id");

    /* renamed from: j, reason: collision with root package name */
    private static Object f50301j = new Object();

    /* renamed from: d, reason: collision with root package name */
    private File f50302d;

    /* renamed from: f, reason: collision with root package name */
    private long f50304f;

    /* renamed from: i, reason: collision with root package name */
    private a f50307i;

    /* renamed from: e, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.c f50303e = null;

    /* renamed from: h, reason: collision with root package name */
    private Set<com.umeng.commonsdk.statistics.idtracking.a> f50306h = new HashSet();

    /* renamed from: g, reason: collision with root package name */
    private long f50305g = 86400000;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f50308a;

        /* renamed from: b, reason: collision with root package name */
        private Set<String> f50309b = new HashSet();

        public a(Context context) {
            this.f50308a = context;
        }

        public synchronized boolean a(String str) {
            return !this.f50309b.contains(str);
        }

        public synchronized void b(String str) {
            this.f50309b.add(str);
        }

        public void c(String str) {
            this.f50309b.remove(str);
        }

        public synchronized void a() {
            try {
                if (!this.f50309b.isEmpty()) {
                    StringBuilder sb = new StringBuilder();
                    Iterator<String> it = this.f50309b.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next());
                        sb.append(',');
                    }
                    sb.deleteCharAt(sb.length() - 1);
                    PreferenceWrapper.getDefault(this.f50308a).edit().putString("invld_id", sb.toString()).commit();
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void b() {
            String[] strArrSplit;
            String string = PreferenceWrapper.getDefault(this.f50308a).getString("invld_id", null);
            if (!TextUtils.isEmpty(string) && (strArrSplit = string.split(",")) != null) {
                for (String str : strArrSplit) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f50309b.add(str);
                    }
                }
            }
        }
    }

    public f(Context context) {
        this.f50307i = null;
        this.f50302d = new File(context.getFilesDir(), f50300c);
        a aVar = new a(context);
        this.f50307i = aVar;
        aVar.b();
    }

    public static synchronized void a() {
        f fVar = f50299b;
        if (fVar != null) {
            fVar.e();
            f50299b = null;
        }
    }

    private synchronized void h() {
        try {
            com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
            HashMap map = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f50306h) {
                if (aVar.c()) {
                    if (aVar.d() != null) {
                        map.put(aVar.b(), aVar.d());
                    }
                    if (aVar.e() != null && !aVar.e().isEmpty()) {
                        arrayList.addAll(aVar.e());
                    }
                }
            }
            cVar.a(arrayList);
            cVar.a(map);
            synchronized (this) {
                this.f50303e = cVar;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private com.umeng.commonsdk.statistics.proto.c i() {
        Throwable th;
        FileInputStream fileInputStream;
        synchronized (f50301j) {
            if (!this.f50302d.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(this.f50302d);
                try {
                    try {
                        byte[] streamToByteArray = HelperUtils.readStreamToByteArray(fileInputStream);
                        com.umeng.commonsdk.statistics.proto.c cVar = new com.umeng.commonsdk.statistics.proto.c();
                        new dh().a(cVar, streamToByteArray);
                        HelperUtils.safeClose(fileInputStream);
                        return cVar;
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        HelperUtils.safeClose(fileInputStream);
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    HelperUtils.safeClose(fileInputStream);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                fileInputStream = null;
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                HelperUtils.safeClose(fileInputStream);
                throw th;
            }
        }
    }

    public synchronized void b() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f50304f >= this.f50305g) {
                boolean z2 = false;
                for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f50306h) {
                    if (aVar.c() && aVar.a()) {
                        if (!aVar.c()) {
                            this.f50307i.b(aVar.b());
                        }
                        z2 = true;
                    }
                }
                if (z2) {
                    h();
                    this.f50307i.a();
                    g();
                }
                this.f50304f = jCurrentTimeMillis;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.c c() {
        return this.f50303e;
    }

    public String d() {
        return null;
    }

    public synchronized void e() {
        try {
            if (f50299b == null) {
                return;
            }
            boolean z2 = false;
            for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f50306h) {
                if (aVar.c() && aVar.e() != null && !aVar.e().isEmpty()) {
                    aVar.a((List<com.umeng.commonsdk.statistics.proto.a>) null);
                    z2 = true;
                }
            }
            if (z2) {
                com.umeng.commonsdk.statistics.proto.c cVar = this.f50303e;
                if (cVar != null) {
                    cVar.b(false);
                }
                g();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void f() {
        com.umeng.commonsdk.statistics.proto.c cVarI = i();
        if (cVarI == null) {
            return;
        }
        a(cVarI);
        ArrayList arrayList = new ArrayList(this.f50306h.size());
        synchronized (this) {
            try {
                this.f50303e = cVarI;
                for (com.umeng.commonsdk.statistics.idtracking.a aVar : this.f50306h) {
                    aVar.a(this.f50303e);
                    if (!aVar.c()) {
                        arrayList.add(aVar);
                    }
                }
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    this.f50306h.remove((com.umeng.commonsdk.statistics.idtracking.a) obj);
                }
                h();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void g() {
        com.umeng.commonsdk.statistics.proto.c cVar = this.f50303e;
        if (cVar != null) {
            b(cVar);
        }
    }

    public static synchronized f a(Context context) {
        try {
            if (f50299b == null) {
                f fVar = new f(context);
                f50299b = fVar;
                fVar.a(new g(context));
                f50299b.a(new b(context));
                f50299b.a(new k(context));
                f50299b.a(new e(context));
                f50299b.a(new d(context));
                f50299b.a(new h(context));
                f50299b.a(new j());
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
                    f50299b.a(new i(context));
                    if (DeviceConfig.isHonorDevice()) {
                        f50299b.a(new c(context));
                    }
                }
                f50299b.f();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f50299b;
    }

    private void b(com.umeng.commonsdk.statistics.proto.c cVar) {
        byte[] bArrA;
        synchronized (f50301j) {
            if (cVar != null) {
                try {
                    synchronized (this) {
                        a(cVar);
                        bArrA = new dn().a(cVar);
                    }
                    if (bArrA != null) {
                        HelperUtils.writeFile(this.f50302d, bArrA);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private boolean a(com.umeng.commonsdk.statistics.idtracking.a aVar) {
        if (this.f50307i.a(aVar.b())) {
            return this.f50306h.add(aVar);
        }
        if (!AnalyticsConstants.UM_DEBUG) {
            return false;
        }
        MLog.w("invalid domain: " + aVar.b());
        return false;
    }

    public void a(long j2) {
        this.f50305g = j2;
    }

    private void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.b> map;
        if (cVar == null || (map = cVar.f50392a) == null) {
            return;
        }
        if (map.containsKey("mac") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f50498h)) {
            cVar.f50392a.remove("mac");
        }
        if (cVar.f50392a.containsKey("imei") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f50497g)) {
            cVar.f50392a.remove("imei");
        }
        if (cVar.f50392a.containsKey("android_id") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f50499i)) {
            cVar.f50392a.remove("android_id");
        }
        if (cVar.f50392a.containsKey("serial") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f50500j)) {
            cVar.f50392a.remove("serial");
        }
        if (cVar.f50392a.containsKey("idfa") && !FieldManager.allow(com.umeng.commonsdk.utils.d.f50513w)) {
            cVar.f50392a.remove("idfa");
        }
        if (!cVar.f50392a.containsKey("oaid") || FieldManager.allow(com.umeng.commonsdk.utils.d.f50471G)) {
            return;
        }
        cVar.f50392a.remove("oaid");
    }
}
