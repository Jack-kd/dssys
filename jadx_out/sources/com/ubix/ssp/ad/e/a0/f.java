package com.ubix.ssp.ad.e.a0;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import com.ubix.ssp.ad.e.a0.c;
import com.ubix.ssp.ad.e.a0.d;
import com.ubix.ssp.ad.e.a0.n;
import com.ubix.ssp.ad.e.x.a;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.ad.e.z.h;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f46243a = false;

    /* renamed from: b, reason: collision with root package name */
    private static Timer f46244b = null;

    /* renamed from: c, reason: collision with root package name */
    private static TimerTask f46245c = null;

    /* renamed from: d, reason: collision with root package name */
    private static volatile boolean f46246d = false;

    /* renamed from: e, reason: collision with root package name */
    private static boolean f46247e = false;

    /* renamed from: f, reason: collision with root package name */
    private HashMap<String, String> f46248f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f46249g;

    /* renamed from: h, reason: collision with root package name */
    private boolean f46250h;

    /* renamed from: i, reason: collision with root package name */
    private com.ubix.ssp.ad.d.l f46251i;

    /* renamed from: j, reason: collision with root package name */
    volatile boolean f46252j = false;

    public class a implements d.f {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f46253a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Timer f46254b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ a.b f46255c;

        public a(com.ubix.ssp.ad.e.a0.d dVar, Timer timer, a.b bVar) {
            this.f46253a = dVar;
            this.f46254b = timer;
            this.f46255c = bVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.f
        public void a() {
            u.b("new deeplink 目标app已安装 ", "调起成功");
            f.this.f46252j = true;
            this.f46253a.c();
            this.f46253a.a((d.InterfaceC0810d) null);
            Timer timer = this.f46254b;
            if (timer != null) {
                timer.cancel();
            }
            com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46255c, f.this.f46248f, 403);
        }

        @Override // com.ubix.ssp.ad.e.a0.d.f
        public void b() {
        }
    }

    public class b implements d.InterfaceC0810d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f46257a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Timer f46258b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ a.b f46259c;

        public b(com.ubix.ssp.ad.e.a0.d dVar, Timer timer, a.b bVar) {
            this.f46257a = dVar;
            this.f46258b = timer;
            this.f46259c = bVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void a(int i2) {
            u.b("new deeplink 目标app已安装 ", "调起失败onDenied");
            f.this.f46252j = true;
            this.f46257a.a((d.InterfaceC0810d) null);
            this.f46257a.c();
            Timer timer = this.f46258b;
            if (timer != null) {
                timer.cancel();
            }
            com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46259c, f.this.f46248f, 404);
        }

        @Override // com.ubix.ssp.ad.e.a0.d.InterfaceC0810d
        public void b(int i2) {
        }
    }

    public class c extends TimerTask {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ a.b f46261a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.a0.d f46262b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Timer f46263c;

        public c(a.b bVar, com.ubix.ssp.ad.e.a0.d dVar, Timer timer) {
            this.f46261a = bVar;
            this.f46262b = dVar;
            this.f46263c = timer;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                if (!f.this.f46252j) {
                    u.b("new deeplink 目标app已安装 ", "但是调起失败");
                    com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46261a, f.this.f46248f, 404);
                    com.ubix.ssp.ad.e.a0.d dVar = this.f46262b;
                    if (dVar != null) {
                        dVar.c();
                        this.f46262b.a((d.InterfaceC0810d) null);
                    }
                }
                boolean unused = f.f46247e = true;
                Timer timer = this.f46263c;
                if (timer != null) {
                    timer.cancel();
                }
                cancel();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class d extends TimerTask {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ int[] f46265a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ a.b f46266b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Timer f46267c;

        public d(int[] iArr, a.b bVar, Timer timer) {
            this.f46265a = iArr;
            this.f46266b = bVar;
            this.f46267c = timer;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                boolean zC = com.ubix.ssp.ad.e.a0.c.C();
                int[] iArr = this.f46265a;
                int i2 = iArr[0];
                if (i2 > 100) {
                    if (zC) {
                        u.b("deeplink 目标app已安装 ", "但是调起失败" + this.f46265a[0]);
                        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46266b, f.this.f46248f, 404);
                    } else {
                        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46266b, f.this.f46248f, 403);
                    }
                    boolean unused = f.f46247e = true;
                    Timer timer = this.f46267c;
                    if (timer != null) {
                        timer.cancel();
                    }
                    cancel();
                    return;
                }
                iArr[0] = i2 + 1;
                if (zC) {
                    return;
                }
                if (!f.f46243a) {
                    boolean unused2 = f.f46243a = true;
                    com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46266b, f.this.f46248f, 403);
                }
                Timer timer2 = this.f46267c;
                if (timer2 != null) {
                    timer2.cancel();
                }
                cancel();
                if (f.f46244b != null) {
                    f.f46244b.cancel();
                }
                if (f.f46245c != null) {
                    f.f46245c.cancel();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class e implements h.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f46269a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46270b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ n f46271c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ o f46272d;

        public e(p pVar, com.ubix.ssp.ad.d.a aVar, n nVar, o oVar) {
            this.f46269a = pVar;
            this.f46270b = aVar;
            this.f46271c = nVar;
            this.f46272d = oVar;
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(com.ubix.ssp.ad.e.z.h hVar) {
            o oVar = this.f46272d;
            if (oVar != null) {
                oVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(com.ubix.ssp.ad.e.z.h hVar) {
            p pVar = this.f46269a;
            if (pVar != null) {
                pVar.a(hVar);
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar, HashMap<String, String> map) {
            n nVar;
            int iD = f.this.d(this.f46270b.f45759a);
            if ((iD == 2 || iD == 22) && (nVar = this.f46271c) != null) {
                nVar.a();
            }
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.a0.f$f, reason: collision with other inner class name */
    public class C0812f implements h.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46274a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f46275b;

        public C0812f(com.ubix.ssp.ad.d.a aVar, String str) {
            this.f46274a = aVar;
            this.f46275b = str;
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void a() {
            com.ubix.ssp.ad.d.a aVar = this.f46274a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46274a.f45759a.f47442d.f47454B, 0, f.this.f46251i, this.f46275b, null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void b() {
            com.ubix.ssp.ad.d.a aVar = this.f46274a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46274a.f45759a.f47442d.f47458F, 0, f.this.f46251i, this.f46275b, null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void c() {
            com.ubix.ssp.ad.d.a aVar = this.f46274a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46274a.f45759a.f47442d.f47455C, 0, f.this.f46251i, this.f46275b, null);
        }
    }

    public class g implements com.ubix.ssp.ad.g.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ r f46277a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46278b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46279c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ s f46280d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ q f46281e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ o f46282f;

        public g(r rVar, int i2, com.ubix.ssp.ad.d.a aVar, s sVar, q qVar, o oVar) {
            this.f46277a = rVar;
            this.f46278b = i2;
            this.f46279c = aVar;
            this.f46280d = sVar;
            this.f46281e = qVar;
            this.f46282f = oVar;
        }

        @Override // com.ubix.ssp.ad.g.b
        public void onCancel() {
            q qVar = this.f46281e;
            if (qVar != null) {
                qVar.a();
            }
            try {
                com.ubix.ssp.ad.e.s.b.c().a(com.ubix.ssp.ad.e.a0.c.e(), this.f46278b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }

        @Override // com.ubix.ssp.ad.g.b
        public void onClose() {
            o oVar = this.f46282f;
            if (oVar != null) {
                oVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.g.b
        public void onConfirm() {
            s sVar;
            r rVar = this.f46277a;
            if (rVar != null) {
                rVar.a();
            }
            try {
                boolean zA = false;
                if (com.ubix.ssp.ad.e.s.b.c().b(this.f46278b) == 46) {
                    if (TextUtils.isEmpty(this.f46279c.f45759a.f47442d.f47485o)) {
                        com.ubix.ssp.ad.e.y.a.a aVar = this.f46279c.f45759a;
                        zA = com.ubix.ssp.ad.e.a0.c.a(aVar.f47442d.f47478h, com.ubix.ssp.ad.e.a0.c.a(aVar.f47444f));
                    } else {
                        int iD = f.this.d(this.f46279c.f45759a);
                        if (iD == 2 || iD == 22) {
                            zA = true;
                        }
                    }
                    if (zA && (sVar = this.f46280d) != null) {
                        sVar.a();
                    }
                }
                if (com.ubix.ssp.ad.e.s.b.c().b(this.f46278b) == 44 || zA) {
                    return;
                }
                f.a(f.this.f46251i, this.f46279c, this.f46278b);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public class h implements h.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f46284a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ r f46285b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46286c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f46287d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ q f46288e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ o f46289f;

        public h(p pVar, r rVar, com.ubix.ssp.ad.d.a aVar, int i2, q qVar, o oVar) {
            this.f46284a = pVar;
            this.f46285b = rVar;
            this.f46286c = aVar;
            this.f46287d = i2;
            this.f46288e = qVar;
            this.f46289f = oVar;
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
            q qVar = this.f46288e;
            if (qVar != null) {
                qVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(com.ubix.ssp.ad.e.z.h hVar) {
            o oVar = this.f46289f;
            if (oVar != null) {
                oVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(com.ubix.ssp.ad.e.z.h hVar) {
            p pVar = this.f46284a;
            if (pVar != null) {
                pVar.a(hVar);
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar, HashMap<String, String> map) {
            r rVar = this.f46285b;
            if (rVar == null || rVar.a()) {
                f.a(f.this.f46251i, this.f46286c, this.f46287d);
            }
        }
    }

    public class i implements h.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46291a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f46292b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f46293c;

        public i(com.ubix.ssp.ad.d.a aVar, int i2, String str) {
            this.f46291a = aVar;
            this.f46292b = i2;
            this.f46293c = str;
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void a() {
            com.ubix.ssp.ad.d.a aVar = this.f46291a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            if (this.f46292b != 1) {
                f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46291a.f45759a.f47442d.f47454B, 0, f.this.f46251i, this.f46293c, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("TYPE", 6);
            bundle.putString("TITLE", "隐私");
            bundle.putString("TARGET_URL", this.f46291a.f45759a.f47442d.f47454B);
            com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.a(), bundle, (h.c) null, (h.b) null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void b() {
            com.ubix.ssp.ad.d.a aVar = this.f46291a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            if (this.f46292b != 1) {
                f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46291a.f45759a.f47442d.f47458F, 0, f.this.f46251i, this.f46293c, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("TYPE", 6);
            bundle.putString("TITLE", "应用介绍");
            bundle.putString("TARGET_URL", this.f46291a.f45759a.f47442d.f47458F);
            com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.a(), bundle, (h.c) null, (h.b) null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void c() {
            com.ubix.ssp.ad.d.a aVar = this.f46291a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            if (this.f46292b != 1) {
                f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46291a.f45759a.f47442d.f47455C, 0, f.this.f46251i, this.f46293c, null);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("TYPE", 6);
            bundle.putString("TITLE", "权限");
            bundle.putString("TARGET_URL", this.f46291a.f45759a.f47442d.f47455C);
            com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.a(), bundle, (h.c) null, (h.b) null);
        }
    }

    public class j implements h.c {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f46295a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ r f46296b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46297c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f46298d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ q f46299e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ o f46300f;

        public j(p pVar, r rVar, com.ubix.ssp.ad.d.a aVar, int i2, q qVar, o oVar) {
            this.f46295a = pVar;
            this.f46296b = rVar;
            this.f46297c = aVar;
            this.f46298d = i2;
            this.f46299e = qVar;
            this.f46300f = oVar;
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar) {
            q qVar = this.f46299e;
            if (qVar != null) {
                qVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void b(com.ubix.ssp.ad.e.z.h hVar) {
            o oVar = this.f46300f;
            if (oVar != null) {
                oVar.a();
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void c(com.ubix.ssp.ad.e.z.h hVar) {
            p pVar = this.f46295a;
            if (pVar != null) {
                pVar.a(hVar);
            }
        }

        @Override // com.ubix.ssp.ad.e.z.h.c
        public void a(com.ubix.ssp.ad.e.z.h hVar, HashMap<String, String> map) {
            r rVar = this.f46296b;
            if (rVar == null || rVar.a()) {
                f.a(f.this.f46251i, this.f46297c, this.f46298d);
            }
        }
    }

    public class k implements h.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46302a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f46303b;

        public k(com.ubix.ssp.ad.d.a aVar, String str) {
            this.f46302a = aVar;
            this.f46303b = str;
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void a() {
            com.ubix.ssp.ad.d.a aVar = this.f46302a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46302a.f45759a.f47442d.f47454B, 0, f.this.f46251i, this.f46303b, null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void b() {
            com.ubix.ssp.ad.d.a aVar = this.f46302a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46302a.f45759a.f47442d.f47458F, 0, f.this.f46251i, this.f46303b, null);
        }

        @Override // com.ubix.ssp.ad.e.z.h.b
        public void c() {
            com.ubix.ssp.ad.d.a aVar = this.f46302a;
            if (aVar == null || aVar.f45759a.f47442d == null) {
                return;
            }
            f.a(com.ubix.ssp.ad.e.a0.c.a(), this.f46302a.f45759a.f47442d.f47455C, 0, f.this.f46251i, this.f46303b, null);
        }
    }

    public class l extends a.d {

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f46305b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f46306c;

        public l(com.ubix.ssp.ad.d.a aVar, int i2) {
            this.f46305b = aVar;
            this.f46306c = i2;
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void b(com.ubix.ssp.ad.e.x.d dVar) {
            u.b("launchSDK onFailure " + dVar.f47413e);
        }

        @Override // com.ubix.ssp.ad.e.x.a
        public void a(String str) throws JSONException {
            try {
                u.b("testUrl-onResponse:  " + str);
                JSONObject jSONObject = new JSONObject(str);
                com.ubix.ssp.ad.e.s.b.c().a(com.ubix.ssp.ad.e.a0.c.e(), jSONObject.getJSONObject("data").getString("clickid"), jSONObject.getJSONObject("data").getString("dstlink"), this.f46305b, this.f46306c);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class m implements c.h {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.y.a.a f46307a;

        public m(com.ubix.ssp.ad.e.y.a.a aVar) {
            this.f46307a = aVar;
        }

        @Override // com.ubix.ssp.ad.e.a0.c.h
        public void a(int i2, int i3) {
            try {
                HashMap<String, String> map = new HashMap<>();
                map.put("__U_TB_CHECK__", i2 + "");
                if (i2 == 0) {
                    com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46307a.f47442d, map, 405);
                } else {
                    com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(this.f46307a.f47442d, map, 406);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public interface n {
        void a();
    }

    public interface o {
        void a();
    }

    public interface p {
        void a(com.ubix.ssp.ad.e.z.h hVar);
    }

    public interface q {
        void a();
    }

    public interface r {
        boolean a();
    }

    public interface s {
        void a();
    }

    public f(com.ubix.ssp.ad.d.l lVar, HashMap<String, String> map) {
        this.f46248f = new HashMap<>();
        this.f46248f = map;
        this.f46251i = lVar;
        if (map == null || !map.containsKey("__NO_CLICK_CONFIRM_KEY__")) {
            return;
        }
        this.f46249g = Boolean.parseBoolean(map.get("__NO_CLICK_CONFIRM_KEY__"));
    }

    private void e(com.ubix.ssp.ad.e.y.a.a aVar) {
        int iP = this.f46251i.p();
        a.b bVar = aVar.f47442d;
        if (iP == 0) {
            a(bVar);
        } else {
            a(bVar, iP);
        }
    }

    private int f(com.ubix.ssp.ad.e.y.a.a aVar) {
        if (b(aVar)) {
            return !c(aVar) ? 23 : 22;
        }
        return 21;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:10|(3:192|11|12)|(2:196|13)|20|21|181|(5:190|23|(5:28|42|43|(1:49)(1:48)|(1:(1:52)(1:198)))(2:25|(3:(0)(1:29)|43|(4:45|47|49|(0))(0))(7:30|31|194|32|33|34|35))|172|177)(1:54)|55|(2:57|(1:62)(1:60))|63|(9:65|(1:69)|70|(5:75|(1:77)(1:78)|79|(1:81)|(1:83))|84|(1:88)|89|(2:119|(1:144)(4:123|(3:125|126|(1:140))|141|(1:143)))(1:(9:185|94|187|95|(1:97)(1:100)|(1:102)|103|104|105)(4:108|(3:110|111|112)(1:115)|116|(1:118)))|(1:146))(1:148)|149|(5:151|179|152|156|(2:158|(1:160)(1:162)))(1:163)|164|183|165|169|(1:171)|172|177) */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0306, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0307, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bd, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x028e A[Catch: Exception -> 0x01ec, TRY_LEAVE, TryCatch #2 {Exception -> 0x01ec, blocks: (B:112:0x01de, B:116:0x020e, B:149:0x0286, B:151:0x028e, B:156:0x02b6, B:158:0x02d0, B:164:0x02e2, B:169:0x030a, B:168:0x0307, B:155:0x02b3, B:163:0x02dd, B:115:0x01ef, B:121:0x021d, B:123:0x0223, B:126:0x022b, B:129:0x0237, B:132:0x0245, B:135:0x0253, B:138:0x0261, B:140:0x026d, B:141:0x0273, B:144:0x027a, B:173:0x0328, B:152:0x0290, B:165:0x02e4), top: B:182:0x0013, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02dd A[Catch: Exception -> 0x01ec, TryCatch #2 {Exception -> 0x01ec, blocks: (B:112:0x01de, B:116:0x020e, B:149:0x0286, B:151:0x028e, B:156:0x02b6, B:158:0x02d0, B:164:0x02e2, B:169:0x030a, B:168:0x0307, B:155:0x02b3, B:163:0x02dd, B:115:0x01ef, B:121:0x021d, B:123:0x0223, B:126:0x022b, B:129:0x0237, B:132:0x0245, B:135:0x0253, B:138:0x0261, B:140:0x026d, B:141:0x0273, B:144:0x027a, B:173:0x0328, B:152:0x0290, B:165:0x02e4), top: B:182:0x0013, inners: #0, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0324 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ea A[Catch: Exception -> 0x00bd, TryCatch #1 {Exception -> 0x00bd, blocks: (B:43:0x00ca, B:55:0x00e6, B:57:0x00ea, B:63:0x00fa, B:65:0x0102, B:67:0x0106, B:69:0x010c, B:70:0x011a, B:73:0x0121, B:84:0x0163, B:86:0x0167, B:88:0x016d, B:89:0x017b, B:91:0x0181, B:102:0x019b, B:75:0x0125, B:77:0x012d, B:79:0x0132, B:81:0x0140, B:78:0x0130, B:34:0x00b2), top: B:181:0x0083 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0102 A[Catch: Exception -> 0x00bd, TryCatch #1 {Exception -> 0x00bd, blocks: (B:43:0x00ca, B:55:0x00e6, B:57:0x00ea, B:63:0x00fa, B:65:0x0102, B:67:0x0106, B:69:0x010c, B:70:0x011a, B:73:0x0121, B:84:0x0163, B:86:0x0167, B:88:0x016d, B:89:0x017b, B:91:0x0181, B:102:0x019b, B:75:0x0125, B:77:0x012d, B:79:0x0132, B:81:0x0140, B:78:0x0130, B:34:0x00b2), top: B:181:0x0083 }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.ubix.ssp.ad.d.a] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.ubix.ssp.ad.d.a r22, int r23, java.lang.String r24, int r25, int r26, int r27, com.ubix.ssp.ad.e.a0.f.p r28, com.ubix.ssp.ad.e.a0.f.q r29, com.ubix.ssp.ad.e.a0.f.r r30, com.ubix.ssp.ad.e.a0.f.o r31, com.ubix.ssp.ad.e.a0.f.s r32, com.ubix.ssp.ad.g.c r33, com.ubix.ssp.ad.e.a0.f.n r34, com.ubix.ssp.ad.g.h r35) {
        /*
            Method dump skipped, instructions count: 821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.f.a(com.ubix.ssp.ad.d.a, int, java.lang.String, int, int, int, com.ubix.ssp.ad.e.a0.f$p, com.ubix.ssp.ad.e.a0.f$q, com.ubix.ssp.ad.e.a0.f$r, com.ubix.ssp.ad.e.a0.f$o, com.ubix.ssp.ad.e.a0.f$s, com.ubix.ssp.ad.g.c, com.ubix.ssp.ad.e.a0.f$n, com.ubix.ssp.ad.g.h):int");
    }

    public int d(com.ubix.ssp.ad.e.y.a.a aVar) {
        return a(aVar, (String) null);
    }

    private boolean c(com.ubix.ssp.ad.e.y.a.a aVar) {
        try {
            a.b.i iVar = aVar.f47442d.f47463K;
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(805339136);
            intent.setComponent(new ComponentName(iVar.f47527b, iVar.f47528c));
            intent.setData(Uri.parse(aVar.f47442d.f47485o));
            a.b.c[] cVarArr = iVar.f47529d;
            if (cVarArr != null && cVarArr.length > 0) {
                for (a.b.c cVar : cVarArr) {
                    if (!TextUtils.isEmpty(cVar.f47504c)) {
                        String str = cVar.f47504c;
                        int i2 = cVar.f47506e;
                        if (i2 == 0) {
                            intent.putExtra(str, cVar.f47505d);
                        } else if (i2 == 1) {
                            intent.putExtra(str, Integer.parseInt(cVar.f47505d));
                        } else if (i2 == 2) {
                            try {
                                intent.putExtra(str, Boolean.parseBoolean(cVar.f47505d));
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            com.ubix.ssp.ad.e.a0.y.d.d.e().a(true);
            com.ubix.ssp.ad.e.a0.y.d.d.e().a(stackTrace[0].getClassName() + com.anythink.core.common.d.i.f2495E + stackTrace[0].getMethodName());
            com.ubix.ssp.ad.e.a0.c.e().startActivity(intent);
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        if (com.ubix.ssp.ad.e.a0.c.f46112a.getPackageManager().getLaunchIntentForPackage(r8.f47442d.f47478h) != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (com.ubix.ssp.ad.e.a0.c.e().getPackageManager().resolveActivity(r2, 65536) != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(r8.f47442d, r7.f46248f, 401);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (com.ubix.ssp.ad.e.a0.u.a() == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        com.ubix.ssp.ad.e.a0.u.e("super opt op&hr&vi=" + r7.f46251i.B0() + "&" + r7.f46251i.w0() + "&" + r7.f46251i.I0());
        r0 = new java.lang.StringBuilder();
        r0.append("super opt info=");
        r2 = r8.f47442d.f47471S;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a6, code lost:
    
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a8, code lost:
    
        r2 = r2.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ad, code lost:
    
        r2 = "null";
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
    
        r0.append(r2);
        com.ubix.ssp.ad.e.a0.u.e(r0.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
    
        r0 = b(r8, r9);
        com.ubix.ssp.ad.e.a0.u.e("super opt result=" + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d2, code lost:
    
        if (r0 == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d4, code lost:
    
        e(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d7, code lost:
    
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d8, code lost:
    
        r0 = r8.f47444f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00de, code lost:
    
        if (r0 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e2, code lost:
    
        if (r0.f47567s != 1) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00f7, code lost:
    
        if (r9.startsWith(new java.lang.String(com.ubix.ssp.ad.e.a0.n.a().a("aHR0cA=="))) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0106, code lost:
    
        if (new com.ubix.ssp.ad.e.a0.y.b().a(com.ubix.ssp.ad.e.a0.c.e(), r9, true) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
    
        e(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010b, code lost:
    
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x010c, code lost:
    
        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(r8.f47442d, r7.f46248f, 404);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011b, code lost:
    
        return 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x011c, code lost:
    
        r1 = f(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0122, code lost:
    
        if (r1 != 21) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0128, code lost:
    
        if (a(r8) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x012a, code lost:
    
        return 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x012b, code lost:
    
        return 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x012e, code lost:
    
        if (r1 != 22) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0130, code lost:
    
        e(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0133, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0134, code lost:
    
        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(r8.f47442d, r7.f46248f, 404);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0143, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int a(com.ubix.ssp.ad.e.y.a.a r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.a0.f.a(com.ubix.ssp.ad.e.y.a.a, java.lang.String):int");
    }

    private boolean b(com.ubix.ssp.ad.e.y.a.a aVar) {
        a.b bVar;
        a.b.i iVar;
        return (aVar == null || (bVar = aVar.f47442d) == null || (iVar = bVar.f47463K) == null || TextUtils.isEmpty(iVar.f47528c) || TextUtils.isEmpty(aVar.f47442d.f47463K.f47527b)) ? false : true;
    }

    public static String a(a.c cVar) {
        if (cVar == null || !cVar.f47563o) {
            return null;
        }
        return cVar.f47562n;
    }

    private boolean b(com.ubix.ssp.ad.e.y.a.a aVar, String str) {
        try {
            a.b.j jVar = aVar.f47442d.f47471S;
            if (jVar != null && jVar.f47530b != 0) {
                String str2 = !TextUtils.isEmpty(jVar.f47531c) ? new String(com.ubix.ssp.ad.e.a0.n.a().a(aVar.f47442d.f47471S.f47531c.getBytes(StandardCharsets.UTF_8))) : null;
                int i2 = aVar.f47442d.f47471S.f47530b;
                if (i2 == 1) {
                    if (!this.f46251i.B0() || TextUtils.isEmpty(str2)) {
                        return false;
                    }
                    String strA = com.ubix.ssp.ad.e.a0.c.a(aVar.f47444f);
                    Intent intentC = com.ubix.ssp.ad.e.a0.c.c(str);
                    com.ubix.ssp.ad.e.a0.c.a(intentC, str2);
                    com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.e().getApplicationContext(), intentC, strA);
                    return true;
                }
                if (i2 == 2) {
                    if (!this.f46251i.w0() || TextUtils.isEmpty(aVar.f47442d.f47471S.f47532d) || TextUtils.isEmpty(str2)) {
                        return false;
                    }
                    JSONObject jSONObject = new JSONObject();
                    n.b bVarA = com.ubix.ssp.ad.e.a0.n.a();
                    Charset charset = StandardCharsets.UTF_8;
                    jSONObject.put(new String(bVarA.a("cGtnTmFtZQ==".getBytes(charset))), aVar.f47442d.f47478h);
                    jSONObject.put(new String(com.ubix.ssp.ad.e.a0.n.a().a("ZGVlcExpbms=".getBytes(charset))), aVar.f47442d.f47471S.f47532d);
                    return com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.e(), str2, jSONObject);
                }
                if (i2 != 3 || !this.f46251i.I0() || TextUtils.isEmpty(aVar.f47442d.f47471S.f47532d)) {
                    return false;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("a", aVar.f47442d.f47478h);
                jSONObject2.put("b", aVar.f47442d.f47471S.f47532d);
                String strA2 = com.ubix.ssp.ad.e.a0.c.a(aVar.f47444f);
                Intent intentC2 = com.ubix.ssp.ad.e.a0.c.c(aVar.f47442d.f47471S.f47532d);
                intentC2.setData(null);
                n.b bVarA2 = com.ubix.ssp.ad.e.a0.n.a();
                Charset charset2 = StandardCharsets.UTF_8;
                intentC2.setAction(new String(bVarA2.a("Y29tLmthaXhpbmthbi51Z2MudmlkZW8uYXRvbS5zZXR0aW5nLlNka1JlZGlyZWN0SnVtcEFjdGl2aXR5".getBytes(charset2))));
                intentC2.putExtra(new String(com.ubix.ssp.ad.e.a0.n.a().a("aW50ZW50X2J1bmRsZV9jb21tb25fdHJhbnNmZXJfZGF0YQ==".getBytes(charset2))), jSONObject2.toString());
                com.ubix.ssp.ad.e.a0.c.a(com.ubix.ssp.ad.e.a0.c.e().getApplicationContext(), intentC2, strA2);
                return true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    @Deprecated
    public static void a(com.ubix.ssp.ad.d.a aVar, int i2) {
        com.ubix.ssp.ad.e.x.g.b().a(aVar.f45759a.f47442d.f47483m, (Map<String, String>) null, new l(aVar, i2));
    }

    private void a(a.b bVar) {
        if (f46246d) {
            return;
        }
        f46246d = true;
        Timer timer = new Timer();
        timer.schedule(new d(new int[]{0}, bVar, timer), 100L, 50L);
    }

    private void a(a.b bVar, int i2) {
        if (f46246d) {
            return;
        }
        f46246d = true;
        u.b("new deeplink 目标app已安装 ", "调起检测开始");
        Timer timer = new Timer();
        com.ubix.ssp.ad.e.a0.d dVar = new com.ubix.ssp.ad.e.a0.d(com.ubix.ssp.ad.e.a0.c.e());
        dVar.a(new a(dVar, timer, bVar));
        dVar.a(new b(dVar, timer, bVar));
        timer.schedule(new c(bVar, dVar, timer), 5000L);
    }

    private static void a(com.ubix.ssp.ad.e.y.a.a aVar, boolean z2) {
        if (z2 && aVar.f47447i.equals("121")) {
            com.ubix.ssp.ad.e.a0.c.a(new m(aVar));
        }
    }

    public static boolean a(Context context, a.b bVar) {
        u.b("adClickAction: ", "小程序调起类广告 ");
        return x.a(context.getApplicationContext(), bVar.f47491u);
    }

    public static boolean a(Context context, String str, int i2, int i3, String str2, com.ubix.ssp.ad.e.y.a.a aVar, boolean z2, boolean z3) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (i3 == 1) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.addFlags(805339136);
                com.ubix.ssp.ad.e.a0.c.e().startActivity(intent);
                return true;
            }
            Intent intent2 = new Intent();
            intent2.setComponent(new ComponentName(context.getPackageName(), "com.ubix.ssp.open.comm.UBiXWebViewActivity"));
            intent2.putExtra("webUrl", str);
            intent2.putExtra("adType", i2 + "");
            intent2.putExtra("useInnerFace", z2);
            intent2.putExtra("slotId", str2);
            if (aVar != null) {
                intent2.putExtra("ubixAdBytes", com.ubix.ssp.ad.e.y.c.f.a(aVar));
                if (a(aVar.f47444f) != null) {
                    intent2.putExtra("replacePkg", a(aVar.f47444f));
                }
                a.c cVar = aVar.f47444f;
                if (cVar != null) {
                    intent2.putExtra("removePkg", cVar.f47566r);
                }
            }
            if (z3) {
                ((Activity) context).startActivityForResult(intent2, 866);
            } else {
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent2);
            }
            if (aVar != null) {
                com.ubix.ssp.ad.e.w.k.a(context.getApplicationContext()).a(aVar.f47442d, 102);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean a(Context context, String str, int i2, com.ubix.ssp.ad.d.l lVar, String str2, com.ubix.ssp.ad.e.y.a.a aVar) {
        return a(context, str, i2, lVar.j0(), str2, aVar, false, false);
    }

    public static boolean a(com.ubix.ssp.ad.d.l lVar, com.ubix.ssp.ad.d.a aVar, int i2) {
        try {
            if (!com.ubix.ssp.ad.e.a0.c.g(com.ubix.ssp.ad.e.a0.c.e())) {
                Toast.makeText(com.ubix.ssp.ad.e.a0.c.e(), "下载失败", 0).show();
                return false;
            }
            a.b bVar = aVar.f45759a.f47442d;
            u.b("adClickAction: ", " downloadApp " + bVar.f47484n);
            if (TextUtils.isEmpty(bVar.f47484n)) {
                if (bVar.f47482l != 1) {
                    return false;
                }
                a(aVar, i2);
                return true;
            }
            if (lVar.o() == 1) {
                a(com.ubix.ssp.ad.e.a0.c.e(), bVar.f47484n, 0, 1, "", null, false, false);
            } else {
                com.ubix.ssp.ad.e.s.b.c().a(com.ubix.ssp.ad.e.a0.c.e(), bVar.f47477g, bVar.f47484n, aVar, i2);
            }
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public boolean a(com.ubix.ssp.ad.e.y.a.a aVar) {
        a.b bVar;
        if (aVar != null && (bVar = aVar.f47442d) != null) {
            String str = bVar.f47485o;
            if (!TextUtils.isEmpty(str)) {
                try {
                    String strA = com.ubix.ssp.ad.e.a0.c.a(aVar.f47444f);
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    if (!TextUtils.isEmpty(strA)) {
                        intent.putExtra("android.intent.extra.REFERRER", Uri.parse("android-app://" + strA));
                    }
                    intent.addFlags(805339136);
                    StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                    com.ubix.ssp.ad.e.a0.y.d.d.e().a(true);
                    com.ubix.ssp.ad.e.a0.y.d.d.e().a(stackTrace[0].getClassName() + com.anythink.core.common.d.i.f2495E + stackTrace[0].getMethodName());
                    com.ubix.ssp.ad.e.a0.c.e().startActivity(intent);
                    e(aVar);
                    try {
                        a(aVar, "true".equals(this.f46248f.get("__SHOULD_CHECK__")));
                    } catch (Exception unused) {
                    }
                    u.b("打开deeplink  ", "安装该APP ");
                    if (com.ubix.ssp.ad.e.a0.c.g("com.tencent.mm") && !TextUtils.isEmpty(str) && str.startsWith("weixin://")) {
                        f46246d = true;
                        com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(bVar, this.f46248f, 403);
                    }
                    u.b("打开deeplink  ", "installed " + f46243a + " getTargetUrl: " + str);
                    return true;
                } catch (Exception unused2) {
                    u.d("打开deeplink  ", "没有安装该APP ");
                    com.ubix.ssp.ad.e.w.k.a(com.ubix.ssp.ad.e.a0.c.e()).a(bVar, this.f46248f, 402);
                }
            }
        }
        return false;
    }
}
