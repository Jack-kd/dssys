package com.ubix.ssp.ad.e.a0.e0;

import android.text.TextUtils;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.x.a;
import com.ubix.ssp.ad.e.x.d;
import com.ubix.ssp.open.AdError;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    g f46237a;

    /* renamed from: c, reason: collision with root package name */
    private String f46239c;

    /* renamed from: b, reason: collision with root package name */
    private c f46238b = null;

    /* renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f46240d = new AtomicBoolean(false);

    /* renamed from: com.ubix.ssp.ad.e.a0.e0.a$a, reason: collision with other inner class name */
    public class C0811a implements g.b {
        public C0811a() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a() {
            if (a.this.f46240d.getAndSet(true) || a.this.f46238b == null) {
                return;
            }
            a.this.f46238b.a(com.ubix.ssp.ad.e.a0.a0.a.a(1, "奖励下发超时"), "timeout", "");
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
        }
    }

    public class b extends a.c {
        public b() {
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void b(d dVar) {
            String string;
            StringBuilder sb;
            String strA;
            if (!a.this.f46240d.getAndSet(true) && a.this.f46238b != null) {
                if (dVar != null) {
                    try {
                        if (dVar.f47413e != null) {
                            sb = new StringBuilder();
                            sb.append("exception:");
                            strA = dVar.f47413e.toString();
                        } else if (dVar.f47410b != null) {
                            sb = new StringBuilder();
                            sb.append("error:");
                            strA = com.ubix.ssp.ad.e.x.a.a(dVar.f47410b);
                        } else {
                            sb = new StringBuilder();
                            sb.append("responseCode:");
                            sb.append(dVar.f47411c);
                            string = sb.toString();
                        }
                        sb.append(strA);
                        string = sb.toString();
                    } catch (Throwable unused) {
                        string = "unknown";
                    }
                } else {
                    string = "response is null";
                }
                a.this.f46238b.a(com.ubix.ssp.ad.e.a0.a0.a.a(2, "奖励返回异常"), string, "");
            }
            g gVar = a.this.f46237a;
            if (gVar != null) {
                gVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.x.a
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(d dVar) {
            try {
                JSONObject jSONObject = new JSONObject(new String(dVar.f47414f));
                int iOptInt = jSONObject.optInt("code");
                String strOptString = jSONObject.optString("extra");
                if (iOptInt == 200) {
                    if (!a.this.f46240d.getAndSet(true) && a.this.f46238b != null) {
                        a.this.f46238b.a(strOptString);
                    }
                } else if (!a.this.f46240d.getAndSet(true) && a.this.f46238b != null) {
                    a.this.f46238b.a(com.ubix.ssp.ad.e.a0.a0.a.a(3, "奖励无效"), iOptInt + "", strOptString);
                }
                g gVar = a.this.f46237a;
                if (gVar == null) {
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    if (!a.this.f46240d.getAndSet(true) && a.this.f46238b != null) {
                        a.this.f46238b.a(com.ubix.ssp.ad.e.a0.a0.a.a(2, "奖励返回异常"), th.getMessage(), "");
                    }
                } finally {
                    g gVar2 = a.this.f46237a;
                    if (gVar2 != null) {
                        gVar2.a();
                    }
                }
            }
        }
    }

    public interface c {
        void a(AdError adError, String str, String str2);

        void a(String str);
    }

    public a(String str, int i2) {
        this.f46237a = null;
        this.f46239c = "";
        this.f46237a = new g(i2);
        this.f46239c = str;
    }

    public void a() {
        if (!TextUtils.isEmpty(this.f46239c)) {
            this.f46237a.a(new C0811a());
            this.f46237a.e();
            com.ubix.ssp.ad.e.x.g.b().b(this.f46239c, new b());
        } else {
            c cVar = this.f46238b;
            if (cVar != null) {
                cVar.a(com.ubix.ssp.ad.e.a0.a0.a.a(2, "奖励返回异常"), "url is null", "");
            }
        }
    }

    public void a(c cVar) {
        this.f46238b = cVar;
    }
}
