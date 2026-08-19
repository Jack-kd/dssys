package com.meishu.sdk.core.utils;

import com.meishu.sdk.core.AdSdk;
import com.meishu.sdk.core.utils.h0;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* loaded from: classes4.dex */
public class r {

    /* renamed from: d, reason: collision with root package name */
    public static volatile r f31963d;

    /* renamed from: e, reason: collision with root package name */
    public static long f31964e;

    /* renamed from: f, reason: collision with root package name */
    public static long f31965f;

    /* renamed from: a, reason: collision with root package name */
    public File f31966a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap<String, Object> f31967b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    public final o1 f31968c = new o1();

    public class a extends com.meishu.sdk.core.safe.l {
        public a() {
        }

        @Override // com.meishu.sdk.core.safe.l
        public void safeRun() {
            r.this.b();
        }
    }

    public r() {
        try {
            f31964e = System.currentTimeMillis();
            this.f31966a = new File(AdSdk.getContext().getFilesDir(), "file_preferences.json");
            c();
            f31965f = System.currentTimeMillis();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static r a() {
        if (f31963d == null) {
            synchronized (r.class) {
                try {
                    if (f31963d == null) {
                        AdSdk.getContext();
                        f31963d = new r();
                    }
                } finally {
                }
            }
        }
        return f31963d;
    }

    public final synchronized void b() {
        try {
            FileWriter fileWriter = new FileWriter(this.f31966a);
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, Object> entry : this.f31967b.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                fileWriter.write(jSONObject.toString());
                fileWriter.close();
            } finally {
            }
        } finally {
        }
    }

    public final synchronized void c() {
        if (!this.f31966a.exists()) {
            try {
                this.f31966a.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            return;
        }
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f31966a));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            bufferedReader.close();
            if (sb.length() > 0) {
                try {
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        this.f31967b.put(next, jSONObject.get(next));
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            return;
        }
    }

    public final void d() {
        int size;
        if (r0.f31987r != 0) {
            b();
            return;
        }
        o1 o1Var = this.f31968c;
        a aVar = new a();
        o1Var.getClass();
        try {
            size = o1Var.f31944a.size();
        } catch (Exception unused) {
            size = 0;
        }
        if (size >= o1Var.f31946c) {
            return;
        }
        o1Var.f31944a.add(aVar);
        if (o1Var.f31947d) {
            return;
        }
        o1Var.f31947d = true;
        ExecutorService executorService = h0.f31906a;
        if (h0.b.f31910a.a(new n1(o1Var))) {
            return;
        }
        o1Var.f31947d = false;
        o1Var.a();
    }

    public String a(String str, String str2) {
        try {
            Object obj = this.f31967b.get(str);
            return obj instanceof String ? (String) obj : str2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str2;
        }
    }

    public void b(String str, String str2) {
        try {
            this.f31967b.put(str, str2);
            d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public int a(String str, int i2) {
        try {
            Object obj = this.f31967b.get(str);
            return obj instanceof Number ? ((Number) obj).intValue() : i2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return i2;
        }
    }

    public void b(String str, int i2) {
        try {
            this.f31967b.put(str, Integer.valueOf(i2));
            d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public long a(String str, long j2) {
        try {
            Object obj = this.f31967b.get(str);
            return obj instanceof Number ? ((Number) obj).longValue() : j2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return j2;
        }
    }

    public void b(String str, long j2) {
        try {
            this.f31967b.put(str, Long.valueOf(j2));
            d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public boolean a(String str) {
        try {
            return this.f31967b.containsKey(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
