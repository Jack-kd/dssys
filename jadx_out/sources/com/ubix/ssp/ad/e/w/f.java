package com.ubix.ssp.ad.e.w;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes5.dex */
public class f implements e {

    /* renamed from: a, reason: collision with root package name */
    private static e f47302a = null;

    /* renamed from: b, reason: collision with root package name */
    public static int f47303b = 15;

    /* renamed from: c, reason: collision with root package name */
    public static int f47304c = 15;

    /* renamed from: d, reason: collision with root package name */
    public static int f47305d;

    /* renamed from: e, reason: collision with root package name */
    private Context f47306e;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f47307a;

        public a(HashMap map) {
            this.f47307a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f47307a.remove("EVENT_STATUS_CODE");
            this.f47307a.remove("EVENT_STATUS_MSG");
            f.this.a(j.RequestStart, this.f47307a);
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f47309a;

        public b(HashMap map) {
            this.f47309a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f47309a.remove("EVENT_STATUS_CODE");
            this.f47309a.remove("EVENT_STATUS_MSG");
            f.this.a(j.RequestSuccess, this.f47309a);
        }
    }

    public class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ HashMap f47311a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f47312b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f47313c;

        public c(HashMap map, int i2, String str) {
            this.f47311a = map;
            this.f47312b = i2;
            this.f47313c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            HashMap map = this.f47311a;
            StringBuilder sb = new StringBuilder();
            j jVar = j.RequestFail;
            sb.append(jVar.a());
            sb.append(this.f47312b);
            map.put("EVENT_STATUS_CODE", sb.toString());
            this.f47311a.put("EVENT_STATUS_MSG", this.f47313c);
            f.this.a(jVar, this.f47311a);
        }
    }

    private f(Context context) {
        this.f47306e = context.getApplicationContext();
    }

    public static e a(Context context) {
        e eVar = f47302a;
        if (eVar != null) {
            return eVar;
        }
        f fVar = new f(context);
        f47302a = fVar;
        return fVar;
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void b(int i2, String str) {
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder();
        j jVar = j.LaunchLocalFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void c(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.DetectSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void d(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ClickSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void e(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ResponseSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void f(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.RenderStart, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void g(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ShowStart, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void h(HashMap<String, Object> map) {
        com.ubix.ssp.ad.e.a0.c.y();
        com.ubix.ssp.ad.e.a0.c.f46115d.execute(new b(map));
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void i(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ClickDelaySuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void j(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.AppList, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void k(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ShowSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void l(HashMap<String, Object> map) {
        a(j.Crash, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void m(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.FilledSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void n(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.RenderSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void o(HashMap<String, Object> map) {
        map.remove("EVENT_STATUS_CODE");
        map.remove("EVENT_STATUS_MSG");
        a(j.ClickDelayStart, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a() {
        i iVar = new i(com.ubix.ssp.ad.e.x.f.f());
        iVar.b();
        iVar.a(false);
        iVar.a(f47303b);
        iVar.b(f47304c * 1000);
        n.b(com.ubix.ssp.ad.e.a0.c.e(), iVar);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void b(long j2) {
        HashMap map = new HashMap();
        map.put("EVENT_TIME", Long.valueOf(j2));
        a(j.LaunchStart, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void c(HashMap<String, Object> map, int i2, String str) {
        com.ubix.ssp.ad.e.a0.c.y();
        com.ubix.ssp.ad.e.a0.c.f46115d.execute(new c(map, i2, str));
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void d(HashMap<String, Object> map, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        j jVar = j.RenderFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void e(HashMap<String, Object> map, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        j jVar = j.ResponseFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(int i2, String str) {
        HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder();
        j jVar = j.LaunchNetFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void b(HashMap<String, Object> map) {
        j jVar = j.ClickRepeat;
        map.put("EVENT_STATUS_CODE", jVar.a());
        map.put("EVENT_STATUS_MSG", "广告重复点击");
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(long j2) {
        HashMap map = new HashMap();
        map.put("EVENT_DURATION", Long.valueOf(j2));
        a(j.LaunchLocalSuccess, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void b(HashMap<String, Object> map, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        j jVar = j.ShowFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void b(HashMap<String, Object> map, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        j jVar = j.Monitor;
        sb.append(jVar.a());
        sb.append(str);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str2);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(j jVar, HashMap<String, Object> map, String str, String str2) {
        map.put("EVENT_STATUS_CODE", j.Monitor.a() + str);
        map.put("EVENT_STATUS_MSG", str2);
        a(jVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c7 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e2 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0111 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x011d A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0159 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0174 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018f A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01aa A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:3:0x001a, B:8:0x0024, B:11:0x002c, B:15:0x0036, B:21:0x0058, B:22:0x005d, B:24:0x0063, B:29:0x0087, B:32:0x0090, B:34:0x00ac, B:35:0x00c1, B:37:0x00c7, B:38:0x00dc, B:40:0x00e2, B:41:0x00f7, B:43:0x00fd, B:45:0x0115, B:47:0x011d, B:48:0x0132, B:50:0x0138, B:52:0x013e, B:53:0x0153, B:55:0x0159, B:56:0x016e, B:58:0x0174, B:59:0x0189, B:61:0x018f, B:62:0x01a4, B:64:0x01aa, B:65:0x01bf, B:67:0x01c7, B:69:0x01cd, B:70:0x01d1, B:44:0x0111, B:31:0x008a, B:27:0x0082), top: B:76:0x001a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.ubix.ssp.ad.e.w.j r20, java.util.Map<java.lang.String, java.lang.Object> r21) {
        /*
            Method dump skipped, instructions count: 520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.w.f.a(com.ubix.ssp.ad.e.w.j, java.util.Map):void");
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(HashMap<String, Object> map) {
        com.ubix.ssp.ad.e.a0.c.y();
        com.ubix.ssp.ad.e.a0.c.f46115d.execute(new a(map));
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(HashMap<String, Object> map, int i2, String str) {
        StringBuilder sb = new StringBuilder();
        j jVar = j.FilledFail;
        sb.append(jVar.a());
        sb.append(i2);
        map.put("EVENT_STATUS_CODE", sb.toString());
        map.put("EVENT_STATUS_MSG", str);
        a(jVar, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(HashMap<String, Object> map, String str) {
        map.remove("EVENT_STATUS_CODE");
        map.put("EVENT_STATUS_MSG", str);
        a(j.ClickTarget, map);
    }

    @Override // com.ubix.ssp.ad.e.w.e
    public void a(HashMap<String, Object> map, String str, String str2) {
        map.put("EVENT_STATUS_CODE", str);
        map.put("EVENT_STATUS_MSG", str2);
        a(j.Feedback, map);
    }

    private boolean a(j jVar) {
        if (f47305d == 0) {
            return false;
        }
        int iC = jVar.c();
        return (f47305d & iC) == iC;
    }
}
