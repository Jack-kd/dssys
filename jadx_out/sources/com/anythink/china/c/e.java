package com.anythink.china.c;

import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.china.c.d;
import com.anythink.core.api.AdError;
import com.anythink.core.common.d.s;
import com.anythink.core.common.d.t;
import com.anythink.core.common.f.g;
import com.anythink.core.common.v.ad;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import java.io.File;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static long f1445a = 1800000;

    /* renamed from: b, reason: collision with root package name */
    private static volatile e f1446b = null;

    /* renamed from: c, reason: collision with root package name */
    private static long f1447c = 1800000;

    /* renamed from: d, reason: collision with root package name */
    private Long f1448d = 0L;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1449e = false;

    private e() {
    }

    private synchronized void d() {
        try {
            if (f.a().b().isEmpty()) {
                return;
            }
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f1449e) {
                return;
            }
            this.f1449e = true;
            new b(s.b().g(), s.b().p(), s.b().q(), null).a(0, new com.anythink.core.common.m.s() { // from class: com.anythink.china.c.e.1
                @Override // com.anythink.core.common.m.s
                public final void onLoadCanceled(int i2) {
                    e.this.f1449e = false;
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadError(int i2, String str, AdError adError) {
                    e.this.f1449e = false;
                    if (adError != null) {
                        str = adError.getFullErrorInfo();
                    }
                    com.anythink.core.common.u.f.a("1", "", "", "2", str, String.valueOf(e.f1447c), jElapsedRealtime);
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadFinish(int i2, Object obj) {
                    JSONObject jSONObjectOptJSONObject;
                    JSONObject jSONObjectOptJSONObject2;
                    try {
                        e.this.f1449e = false;
                        e.this.f1448d = Long.valueOf(System.currentTimeMillis());
                        ad.a(s.b().g(), t.b.f3058a, t.a.f3024H, System.currentTimeMillis());
                        com.anythink.core.common.u.f.a("1", "", "", "1", "", String.valueOf(e.f1447c), jElapsedRealtime);
                        if (obj == null || (jSONObjectOptJSONObject = ((JSONObject) obj).optJSONObject("items")) == null) {
                            return;
                        }
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            if (!TextUtils.isEmpty(next) && (jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(next)) != null) {
                                e.a(next, jSONObjectOptJSONObject2);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }

                @Override // com.anythink.core.common.m.s
                public final void onLoadStart(int i2) {
                    e.this.f1449e = true;
                }
            });
        } catch (Throwable unused) {
        }
    }

    public final void b() {
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.anythink.core.e.b bVarB = com.anythink.core.e.d.a(s.b().g()).b(s.b().p());
            if (bVarB != null) {
                long jA = bVarB.a();
                f1447c = jA;
                if (jA > 0) {
                    b(jA);
                    com.anythink.core.common.u.f.a("1", "0", "", "", "", String.valueOf(f1447c), jElapsedRealtime);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private String f1453a;

        /* renamed from: b, reason: collision with root package name */
        private String f1454b;

        /* renamed from: c, reason: collision with root package name */
        private String f1455c;

        /* renamed from: d, reason: collision with root package name */
        private long f1456d;

        /* renamed from: e, reason: collision with root package name */
        private long f1457e;

        /* renamed from: f, reason: collision with root package name */
        private int f1458f;

        /* renamed from: g, reason: collision with root package name */
        private int f1459g;

        /* renamed from: h, reason: collision with root package name */
        private JSONObject f1460h;

        private a(Integer num, JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f1460h = jSONObject;
                this.f1458f = num.intValue();
                this.f1459g = jSONObject.optInt("forbid", 2);
                this.f1453a = jSONObject.optString("update_ver");
                this.f1454b = jSONObject.optString("dl_url");
                this.f1455c = jSONObject.optString(TKDownloadReason.KSAD_TK_MD5);
                this.f1456d = jSONObject.optLong("update_ts");
                this.f1457e = jSONObject.optLong(g.a.f3252D, 0L);
            }
        }

        private long g() {
            return this.f1456d;
        }

        private int h() {
            return this.f1459g;
        }

        public final String a() {
            JSONObject jSONObject = this.f1460h;
            return jSONObject != null ? jSONObject.toString() : "";
        }

        public final String b() {
            return this.f1453a;
        }

        public final String c() {
            return this.f1454b;
        }

        public final String d() {
            return this.f1455c;
        }

        public final long e() {
            return this.f1457e;
        }

        public final int f() {
            return this.f1458f;
        }

        public final String toString() {
            return "{pl_update_ver='" + this.f1453a + "', pl_url='" + this.f1454b + "', pl_md5='" + this.f1455c + "', pl_update_time=" + this.f1456d + ", pl_file_size=" + this.f1457e + ", pl_id=" + this.f1458f + ", pl_forbid=" + this.f1459g + '}';
        }

        public static a a(String str, JSONObject jSONObject) {
            Integer numValueOf;
            try {
                numValueOf = Integer.valueOf(Integer.parseInt(str));
            } catch (Exception e2) {
                e2.printStackTrace();
                numValueOf = null;
            }
            if (numValueOf == null) {
                return null;
            }
            a aVar = new a(numValueOf, jSONObject);
            ad.a(s.b().g(), t.b.f3058a, t.a.f3023G + aVar.f1458f, aVar.f1459g);
            if (TextUtils.isEmpty(aVar.f1454b) || TextUtils.isEmpty(aVar.f1453a) || TextUtils.isEmpty(aVar.f1455c)) {
                return null;
            }
            return aVar;
        }
    }

    public static e a() {
        if (f1446b == null) {
            synchronized (e.class) {
                try {
                    if (f1446b == null) {
                        f1446b = new e();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f1446b;
    }

    /* renamed from: com.anythink.china.c.e$2, reason: invalid class name */
    public class AnonymousClass2 implements d.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f1452a;

        public AnonymousClass2(long j2) {
            this.f1452a = j2;
        }

        @Override // com.anythink.china.c.d.a
        public final void a(File file, a aVar) {
            if (file == null || aVar == null) {
                return;
            }
            if (file.exists() && aVar.e() == file.length() && aVar.d().equals(com.anythink.china.c.a.a(file.getAbsolutePath()))) {
                file.renameTo(new File(file.getAbsolutePath().replace(".tmp", ".jar")));
            }
            com.anythink.core.common.u.f.a("2", "", aVar.a(), "1", "", String.valueOf(e.f1447c), this.f1452a);
        }

        @Override // com.anythink.china.c.d.a
        public final void a(File file, a aVar, String str) {
            if (file == null || aVar == null) {
                return;
            }
            if (file.exists()) {
                file.delete();
            }
            com.anythink.core.common.u.f.a("2", "", aVar.a(), "2", str, String.valueOf(e.f1447c), this.f1452a);
        }
    }

    private void b(long j2) {
        try {
            if (this.f1448d.longValue() == 0) {
                this.f1448d = Long.valueOf(ad.b(s.b().g(), t.b.f3058a, t.a.f3024H, 0L));
            }
            if (System.currentTimeMillis() - this.f1448d.longValue() > j2) {
                d();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(long j2) {
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            f1447c = j2;
            if (j2 > 0) {
                b(j2);
                com.anythink.core.common.u.f.a("1", "1", "", "", "", String.valueOf(f1447c), jElapsedRealtime);
            } else {
                com.anythink.core.common.u.f.a("1", "2", "", "", "", String.valueOf(j2), jElapsedRealtime);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(String str, JSONObject jSONObject) {
        File fileA;
        try {
            a aVarA = a.a(str, jSONObject);
            if (aVarA == null || (fileA = com.anythink.china.c.a.a(s.b().g(), String.valueOf(aVarA.f()))) == null) {
                return;
            }
            if (new File(fileA.getAbsolutePath(), aVarA.b() + ".jar").exists()) {
                return;
            }
            File file = new File(fileA.getAbsolutePath(), aVarA.b() + ".tmp");
            if (file.exists()) {
                file.delete();
            }
            try {
                if (TextUtils.isEmpty(aVarA.c())) {
                    return;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                d dVar = new d(aVarA.c(), file, aVarA);
                dVar.a(new AnonymousClass2(jElapsedRealtime));
                dVar.d();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    private static void a(a aVar, File file) {
        try {
            if (TextUtils.isEmpty(aVar.c())) {
                return;
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            d dVar = new d(aVar.c(), file, aVar);
            dVar.a(new AnonymousClass2(jElapsedRealtime));
            dVar.d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
