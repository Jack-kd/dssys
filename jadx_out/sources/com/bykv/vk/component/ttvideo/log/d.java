package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.rz.l;
import com.bykv.vk.component.ttvideo.utils.EngineThreadPool;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import java.io.UnsupportedEncodingException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d implements b {

    /* renamed from: a, reason: collision with root package name */
    private com.bykv.vk.component.ttvideo.log.a f28786a;

    /* renamed from: c, reason: collision with root package name */
    private c f28788c;

    /* renamed from: e, reason: collision with root package name */
    private String f28790e;

    /* renamed from: f, reason: collision with root package name */
    private String f28791f;

    /* renamed from: j, reason: collision with root package name */
    private Context f28795j;

    /* renamed from: g, reason: collision with root package name */
    private int f28792g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f28793h = 0;

    /* renamed from: i, reason: collision with root package name */
    private int f28794i = 0;

    /* renamed from: k, reason: collision with root package name */
    private long f28796k = -2147483648L;

    /* renamed from: b, reason: collision with root package name */
    private f f28787b = new f();

    /* renamed from: d, reason: collision with root package name */
    private boolean f28789d = true;

    public static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private f f28797a;

        /* renamed from: b, reason: collision with root package name */
        private Handler f28798b = new Handler(Looper.getMainLooper());

        /* renamed from: c, reason: collision with root package name */
        c f28799c;

        /* renamed from: com.bykv.vk.component.ttvideo.log.d$a$a, reason: collision with other inner class name */
        public class RunnableC0443a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ JSONObject f28800a;

            public RunnableC0443a(a aVar, JSONObject jSONObject) {
                this.f28800a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.instance.a(false, this.f28800a);
            }
        }

        public a(f fVar, d dVar, c cVar) {
            this.f28797a = fVar;
            this.f28799c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = this.f28797a;
            if (fVar == null) {
                TTVideoEngineLog.e("VideoEventLoggerV2", "rEvent is null, return.");
                return;
            }
            JSONObject jSONObjectA = fVar.a(this.f28799c);
            Handler handler = this.f28798b;
            if (handler == null || handler.getLooper() == null) {
                e.instance.a(false, jSONObjectA);
            } else {
                this.f28798b.post(new RunnableC0443a(this, jSONObjectA));
            }
        }
    }

    public d(Context context, com.bykv.vk.component.ttvideo.log.a aVar) {
        this.f28786a = aVar;
        this.f28788c = new c(aVar, context);
        this.f28795j = context;
    }

    private void b() {
        this.f28794i = 0;
        this.f28789d = true;
        this.f28793h = 0;
        this.f28796k = -2147483648L;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() throws java.io.UnsupportedEncodingException {
        /*
            r5 = this;
            java.lang.String r0 = "VideoEventLoggerV2"
            java.lang.String r1 = "exception:"
            java.lang.String r2 = r5.f28790e
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto Lf
            java.lang.String r2 = r5.f28790e
            goto L19
        Lf:
            java.lang.String r2 = r5.f28791f
            boolean r2 = android.text.TextUtils.isEmpty(r2)
            if (r2 != 0) goto L5f
            java.lang.String r2 = r5.f28791f
        L19:
            java.lang.String r3 = "UTF-8"
            java.lang.String r2 = java.net.URLDecoder.decode(r2, r3)     // Catch: java.lang.IllegalArgumentException -> L20 java.io.UnsupportedEncodingException -> L22
            goto L3e
        L20:
            r3 = move-exception
            goto L24
        L22:
            r3 = move-exception
            goto L38
        L24:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
        L29:
            java.lang.String r1 = r3.toString()
            r4.append(r1)
            java.lang.String r1 = r4.toString()
            com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog.e(r0, r1)
            goto L3e
        L38:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r1)
            goto L29
        L3e:
            java.lang.String r0 = "&l="
            int r0 = r2.indexOf(r0)
            if (r0 <= 0) goto L5f
            int r1 = r0 + 1
            java.lang.String r3 = "&"
            int r1 = r2.indexOf(r3, r1)
            int r0 = r0 + 3
            if (r1 <= 0) goto L57
            java.lang.String r0 = r2.substring(r0, r1)
            goto L5b
        L57:
            java.lang.String r0 = r2.substring(r0)
        L5b:
            com.bykv.vk.component.ttvideo.log.f r1 = r5.f28787b
            r1.f28819o = r0
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.log.d.c():void");
    }

    private void d() throws UnsupportedEncodingException {
        f fVar = this.f28787b;
        if (fVar == null) {
            return;
        }
        if (fVar.f28806b > 0 || this.f28796k > 0) {
            int i2 = this.f28792g;
            if (i2 > 0) {
                this.f28788c.f28785h = i2;
            }
            SharedPreferences sharedPreferencesL = l.l(this.f28795j, "VideoEventLogger", 0);
            this.f28787b.f28820p = sharedPreferencesL.getString("playersessionid", "");
            SharedPreferences.Editor editorEdit = sharedPreferencesL.edit();
            editorEdit.putString("playersessionid", this.f28788c.f28783f);
            editorEdit.apply();
            f fVar2 = this.f28787b;
            fVar2.f28818n = this.f28788c.f28783f;
            fVar2.f28812h = this.f28793h;
            String str = this.f28790e;
            if (str != null) {
                fVar2.f28815k = str;
            }
            String str2 = this.f28791f;
            if (str2 != null) {
                fVar2.f28816l = str2;
            }
            fVar2.f28807c = fVar2.f28806b;
            fVar2.f28805a = this.f28796k;
            if (fVar2.f28809e <= 0 && fVar2.f28808d > 0) {
                fVar2.f28809e = System.currentTimeMillis();
            }
            if (TextUtils.isEmpty(this.f28787b.f28819o)) {
                c();
            }
            EngineThreadPool.a().execute(new a(this.f28787b, this, this.f28788c));
            b();
        }
    }

    private void f(int i2) throws UnsupportedEncodingException {
        d();
        this.f28787b = new f();
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a() {
        if (this.f28794i != 4) {
            this.f28794i = 2;
            this.f28789d = false;
            f fVar = this.f28787b;
            if (fVar.f28808d <= 0) {
                fVar.f28808d = System.currentTimeMillis();
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void e(int i2) {
        this.f28792g = i2;
        this.f28788c.f28785h = i2;
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void reset() {
        this.f28789d = true;
        this.f28790e = null;
        this.f28791f = null;
        this.f28792g = 0;
        this.f28793h = 0;
        this.f28788c = new c(this.f28786a, this.f28795j);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002d  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r8) throws java.io.UnsupportedEncodingException {
        /*
            r7 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r2 = 5
            if (r8 == r2) goto L1c
            int r2 = r7.f28794i
            r3 = 4
            r4 = 0
            if (r2 != r3) goto Lf
            r3 = r4
            goto L10
        Lf:
            r3 = 1
        L10:
            r5 = 3
            if (r2 != r5) goto L14
            goto L15
        L14:
            r4 = r3
        L15:
            if (r4 == 0) goto L1c
            com.bykv.vk.component.ttvideo.log.c r2 = r7.f28788c
            r2.a()
        L1c:
            boolean r2 = r7.f28789d
            if (r2 == 0) goto L2d
            com.bykv.vk.component.ttvideo.log.f r2 = r7.f28787b
            long r3 = r2.f28808d
            r5 = 0
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 > 0) goto L2d
            r2.f28810f = r0
            goto L31
        L2d:
            com.bykv.vk.component.ttvideo.log.f r2 = r7.f28787b
            r2.f28809e = r0
        L31:
            r7.f(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.log.d.a(int):void");
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void b(int i2) {
        this.f28787b.f28817m = i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(int r9) throws java.io.UnsupportedEncodingException {
        /*
            r8 = this;
            int r0 = r8.f28794i
            if (r0 != 0) goto L5
            return
        L5:
            long r0 = java.lang.System.currentTimeMillis()
            int r2 = r8.f28794i
            r3 = 4
            r4 = 0
            if (r2 != r3) goto L11
            r3 = r4
            goto L12
        L11:
            r3 = 1
        L12:
            r5 = 3
            if (r2 != r5) goto L16
            r3 = r4
        L16:
            r8.f28794i = r4
            boolean r2 = r8.f28789d
            if (r2 == 0) goto L35
            com.bykv.vk.component.ttvideo.log.f r2 = r8.f28787b
            long r4 = r2.f28806b
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto L35
            long r4 = r2.f28808d
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 > 0) goto L35
            long r4 = r2.f28810f
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 > 0) goto L39
            r2.f28810f = r0
            goto L39
        L35:
            com.bykv.vk.component.ttvideo.log.f r2 = r8.f28787b
            r2.f28809e = r0
        L39:
            if (r3 == 0) goto L40
            com.bykv.vk.component.ttvideo.log.c r0 = r8.f28788c
            r0.a()
        L40:
            r8.f(r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.log.d.c(int):void");
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void d(int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (i2 == 10) {
            f fVar = this.f28787b;
            if (fVar.f28806b <= 0) {
                fVar.f28806b = jCurrentTimeMillis;
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(long j2, String str) {
        this.f28794i = 1;
        this.f28788c.a(str);
        if (this.f28796k <= 0) {
            this.f28796k = j2;
        }
        this.f28789d = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0027  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.bykv.vk.component.ttvideo.utils.Error r10, int r11) throws java.io.UnsupportedEncodingException {
        /*
            r9 = this;
            long r0 = java.lang.System.currentTimeMillis()
            int r11 = r9.f28794i
            r2 = 0
            r3 = 1
            r4 = 4
            if (r11 != r4) goto Ld
            r5 = r2
            goto Le
        Ld:
            r5 = r3
        Le:
            r6 = 3
            if (r11 != r6) goto L12
            goto L13
        L12:
            r2 = r5
        L13:
            r11 = 5
            r9.f28794i = r11
            boolean r11 = r9.f28789d
            if (r11 == 0) goto L27
            com.bykv.vk.component.ttvideo.log.f r11 = r9.f28787b
            long r5 = r11.f28808d
            r7 = 0
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 > 0) goto L27
            r11.f28810f = r0
            goto L44
        L27:
            java.lang.String r11 = r10.f28828c
            java.lang.String r5 = "kTTVideoErrorDomainVideoOwnPlayer"
            boolean r11 = r11.equals(r5)
            if (r11 != 0) goto L3b
            java.lang.String r11 = r10.f28828c
            java.lang.String r5 = "kTTVideoErrorDomainVideoOSPlayer"
            boolean r11 = r11.equals(r5)
            if (r11 == 0) goto L40
        L3b:
            int r11 = r9.f28793h
            int r11 = r11 + r3
            r9.f28793h = r11
        L40:
            com.bykv.vk.component.ttvideo.log.f r11 = r9.f28787b
            r11.f28809e = r0
        L44:
            if (r2 == 0) goto L4b
            com.bykv.vk.component.ttvideo.log.c r11 = r9.f28788c
            r11.a()
        L4b:
            com.bykv.vk.component.ttvideo.log.f r11 = r9.f28787b
            int r0 = r10.getType()
            r11.f28813i = r0
            com.bykv.vk.component.ttvideo.log.f r11 = r9.f28787b
            int r10 = r10.f28826a
            r11.f28814j = r10
            r9.f(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.component.ttvideo.log.d.a(com.bykv.vk.component.ttvideo.utils.Error, int):void");
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(Error error, int i2, int i3) {
        if (error.f28828c.equals(Error.VideoOwnPlayer) || error.f28828c.equals(Error.VideoOSPlayer)) {
            this.f28793h++;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str) {
        if (this.f28788c == null || str == null || str.isEmpty()) {
            return;
        }
        this.f28788c.b(str);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str, String str2) {
        this.f28790e = str;
        c cVar = this.f28788c;
        if (cVar != null) {
            cVar.f28784g = str;
        }
        this.f28791f = str2;
    }
}
