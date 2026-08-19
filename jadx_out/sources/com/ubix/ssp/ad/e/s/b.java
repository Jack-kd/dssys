package com.ubix.ssp.ad.e.s;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.ubix.ssp.ad.e.a0.g;
import com.ubix.ssp.ad.e.a0.k;
import com.ubix.ssp.ad.e.a0.m;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.ad.e.y.a.a;
import com.ubix.ssp.open.comm.DownloadService;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class b implements d {

    /* renamed from: a, reason: collision with root package name */
    private static volatile d f47065a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile ConcurrentHashMap<String, com.ubix.ssp.ad.d.a> f47066b = new ConcurrentHashMap<>();

    /* renamed from: c, reason: collision with root package name */
    private static ConcurrentHashMap<Integer, com.ubix.ssp.ad.d.a> f47067c = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private static ConcurrentHashMap<Integer, com.ubix.ssp.ad.e.s.g.c> f47068d = new ConcurrentHashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private static ConcurrentHashMap<Integer, DownloadService.DownloadBinder> f47069e = new ConcurrentHashMap<>();

    /* renamed from: f, reason: collision with root package name */
    private static ConcurrentHashMap<Integer, Integer> f47070f = new ConcurrentHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    private static ConcurrentHashMap<String, g> f47071g = new ConcurrentHashMap<>();

    /* renamed from: h, reason: collision with root package name */
    public String f47072h;

    /* renamed from: i, reason: collision with root package name */
    private c f47073i;

    public class a implements ServiceConnection {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.e.s.g.c f47074a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ Intent f47075b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f47076c;

        public a(com.ubix.ssp.ad.e.s.g.c cVar, Intent intent, int i2) {
            this.f47074a = cVar;
            this.f47075b = intent;
            this.f47076c = i2;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            DownloadService.DownloadBinder downloadBinder = (DownloadService.DownloadBinder) iBinder;
            this.f47074a.a(downloadBinder);
            downloadBinder.runTask(this.f47075b);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            b.f47069e.remove(Integer.valueOf(this.f47076c));
        }
    }

    /* renamed from: com.ubix.ssp.ad.e.s.b$b, reason: collision with other inner class name */
    public class C0819b implements g.b {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f47078a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.ubix.ssp.ad.d.a f47079b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f47080c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f47081d;

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ a.c f47082e;

        public C0819b(String str, com.ubix.ssp.ad.d.a aVar, Context context, String str2, a.c cVar) {
            this.f47078a = str;
            this.f47079b = aVar;
            this.f47080c = context;
            this.f47081d = str2;
            this.f47082e = cVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0073  */
        @Override // com.ubix.ssp.ad.e.a0.g.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                r8 = this;
                java.lang.String r0 = "CountDownTool onFinish time"
                com.ubix.ssp.ad.e.a0.u.e(r0)
                java.util.concurrent.ConcurrentHashMap r0 = com.ubix.ssp.ad.e.s.b.b()
                java.lang.String r1 = r8.f47078a
                r0.remove(r1)
                com.ubix.ssp.ad.d.a r0 = r8.f47079b
                com.ubix.ssp.ad.e.y.a.a r0 = r0.f45759a
                com.ubix.ssp.ad.e.y.a.a$b r0 = r0.f47442d
                java.lang.String r1 = "delay"
                if (r0 == 0) goto L43
                java.lang.String r0 = r0.f47470R
                boolean r0 = android.text.TextUtils.isEmpty(r0)
                if (r0 != 0) goto L43
                com.ubix.ssp.ad.e.a0.f r0 = new com.ubix.ssp.ad.e.a0.f
                com.ubix.ssp.ad.d.l r2 = new com.ubix.ssp.ad.d.l
                r2.<init>()
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
                r0.<init>(r2, r3)
                com.ubix.ssp.ad.d.a r2 = r8.f47079b
                com.ubix.ssp.ad.e.y.a.a r2 = r2.f45759a
                com.ubix.ssp.ad.e.y.a.a$b r3 = r2.f47442d
                java.lang.String r3 = r3.f47470R
                int r0 = r0.a(r2, r3)
                r2 = 2
                if (r0 == r2) goto L73
                r2 = 22
                if (r0 != r2) goto L51
                goto L73
            L43:
                java.lang.String r0 = r8.f47078a
                com.ubix.ssp.ad.e.y.a.a$c r2 = r8.f47082e
                java.lang.String r2 = com.ubix.ssp.ad.e.a0.c.a(r2)
                boolean r0 = com.ubix.ssp.ad.e.a0.c.a(r0, r2)
                if (r0 != 0) goto L73
            L51:
                com.ubix.ssp.ad.e.s.d r2 = com.ubix.ssp.ad.e.s.b.c()
                android.content.Context r0 = r8.f47080c
                android.content.Context r3 = r0.getApplicationContext()
                java.lang.String r4 = r8.f47078a
                java.lang.String r5 = r8.f47081d
                r6 = -1
                r7 = 1
                r2.a(r3, r4, r5, r6, r7)
                com.ubix.ssp.ad.e.s.b r0 = com.ubix.ssp.ad.e.s.b.this
                android.content.Context r2 = r8.f47080c
                android.content.Context r2 = r2.getApplicationContext()
                com.ubix.ssp.ad.d.a r3 = r8.f47079b
                r4 = 0
            L6f:
                com.ubix.ssp.ad.e.s.b.a(r0, r2, r3, r1, r4)
                return
            L73:
                com.ubix.ssp.ad.e.s.b r0 = com.ubix.ssp.ad.e.s.b.this
                android.content.Context r2 = r8.f47080c
                android.content.Context r2 = r2.getApplicationContext()
                com.ubix.ssp.ad.d.a r3 = r8.f47079b
                r4 = 1
                goto L6f
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.s.b.C0819b.a():void");
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void b() {
            u.e("CountDownTool onTerminal time");
        }

        @Override // com.ubix.ssp.ad.e.a0.g.b
        public void a(long j2) {
        }
    }

    private b() {
        c cVarA = c.a();
        this.f47073i = cVarA;
        if (cVarA != null) {
            cVarA.a(com.ubix.ssp.ad.e.a0.c.e());
        }
    }

    public static d c() {
        if (f47065a == null) {
            synchronized (b.class) {
                try {
                    if (f47065a == null) {
                        f47065a = new b();
                    }
                } finally {
                }
            }
        }
        return f47065a;
    }

    private int d(int i2) {
        Integer num;
        ConcurrentHashMap<Integer, Integer> concurrentHashMap = f47070f;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(Integer.valueOf(i2)) || (num = f47070f.get(Integer.valueOf(i2))) == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public com.ubix.ssp.ad.e.s.g.c a(int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            Integer num = f47070f.get(Integer.valueOf(i2));
            if (num != null) {
                return f47068d.get(num);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public int b(int i2) {
        com.ubix.ssp.ad.e.s.g.a aVarC;
        if (i2 == -1 || (aVarC = c(i2)) == null || aVarC.b() == null) {
            return -1;
        }
        return aVarC.b().b();
    }

    private com.ubix.ssp.ad.e.s.g.c a(String str, File file, String str2, int i2, int i3) {
        com.ubix.ssp.ad.e.s.g.c cVar = new com.ubix.ssp.ad.e.s.g.c();
        cVar.a(i2);
        cVar.b(i3);
        cVar.a(new com.ubix.ssp.ad.e.s.g.a(str, file, str2, i2));
        return cVar;
    }

    public static ConcurrentHashMap<Integer, com.ubix.ssp.ad.d.a> d() {
        return f47067c;
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public com.ubix.ssp.ad.e.s.g.a c(int i2) {
        if (i2 == -1) {
            return null;
        }
        try {
            com.ubix.ssp.ad.e.s.g.c cVarA = a(i2);
            if (cVarA != null) {
                return cVarA.b();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public void b(Context context, int i2) {
        com.ubix.ssp.ad.e.s.g.c cVarA;
        int iD = d(i2);
        if (iD == -1 || (cVarA = a(i2)) == null) {
            return;
        }
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.putExtra("service_intent_notify_id", i2);
        intent.putExtra("service_intent_unique_id", iD);
        cVarA.a().runTask(intent);
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public void a(Context context, int i2) {
        com.ubix.ssp.ad.e.s.g.c cVarA;
        try {
            int iD = d(i2);
            if (iD == -1 || (cVarA = a(i2)) == null) {
                return;
            }
            cVarA.a().pauseTask(i2, iD);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, com.ubix.ssp.ad.d.a aVar, String str, boolean z2) {
        HashMap<String, Object> map = new HashMap<>();
        HashMap map2 = new HashMap();
        map.put("EVENT_REQUEST_ID", aVar.f45762d);
        map.put("EVENT_SLOT_ID", aVar.f45765g);
        map2.put("ubix_tx_type", str);
        map.put("EVENT_ATTRS", map2);
        com.ubix.ssp.ad.e.w.f.a(context).b(map, z2 ? "04010" : "04011", "");
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public void a(Context context, com.ubix.ssp.ad.e.s.g.b bVar, int i2, int i3) {
        u.b("dealInstall" + i2 + ";" + i3);
        try {
            if (TextUtils.isEmpty(com.ubix.ssp.ad.e.a0.c.a(context, bVar.e()))) {
                u.a("file is not a valid apk");
                bVar.b(47);
                bVar.a(0L);
            } else if (bVar.b() == 46) {
                com.ubix.ssp.ad.d.a aVar = d().get(Integer.valueOf(i2));
                String strA = com.ubix.ssp.ad.e.a0.c.a(context, bVar.e());
                if (!TextUtils.isEmpty(strA) && !f47066b.containsKey(strA)) {
                    f47066b.put(strA, aVar);
                }
                a(context, strA, bVar.e(), i3, false);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(Context context, com.ubix.ssp.ad.e.s.g.c cVar, int i2, int i3) {
        Intent intent = new Intent(context, (Class<?>) DownloadService.class);
        intent.putExtra("service_intent_notify_id", i2);
        intent.putExtra("service_intent_unique_id", i3);
        context.bindService(intent, new a(cVar, intent, i2), 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0079 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:15:0x003f, B:17:0x0043, B:19:0x0049, B:35:0x0079, B:37:0x007f, B:39:0x0087, B:44:0x00a4, B:51:0x00bc, B:53:0x00d5, B:55:0x00dc, B:57:0x00e4, B:58:0x0104, B:60:0x010e, B:47:0x00ac, B:48:0x00b1, B:33:0x0074), top: B:68:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b1 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:15:0x003f, B:17:0x0043, B:19:0x0049, B:35:0x0079, B:37:0x007f, B:39:0x0087, B:44:0x00a4, B:51:0x00bc, B:53:0x00d5, B:55:0x00dc, B:57:0x00e4, B:58:0x0104, B:60:0x010e, B:47:0x00ac, B:48:0x00b1, B:33:0x0074), top: B:68:0x003f }] */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    @Override // com.ubix.ssp.ad.e.s.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r12, java.lang.String r13, com.ubix.ssp.ad.d.a r14, java.lang.String r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ubix.ssp.ad.e.s.b.a(android.content.Context, java.lang.String, com.ubix.ssp.ad.d.a, java.lang.String, java.lang.String):void");
    }

    private void a(Context context, String str, File file, String str2, int i2) {
        Exception exc;
        try {
            int iHashCode = str.hashCode();
            com.ubix.ssp.ad.e.s.g.c cVar = f47068d.get(Integer.valueOf(str.hashCode()));
            f47070f.put(Integer.valueOf(i2), Integer.valueOf(iHashCode));
            if (cVar == null) {
                try {
                    com.ubix.ssp.ad.e.s.g.c cVarA = a(str, file, str2, i2, iHashCode);
                    f47068d.put(Integer.valueOf(str.hashCode()), cVarA);
                    a(context, cVarA, i2, iHashCode);
                    return;
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                    exc.printStackTrace();
                }
            }
            try {
                if (cVar.a() == null) {
                    a(context, cVar, i2, iHashCode);
                    return;
                }
                Intent intent = new Intent(context, (Class<?>) DownloadService.class);
                intent.putExtra("service_intent_notify_id", i2);
                intent.putExtra("service_intent_unique_id", iHashCode);
                intent.putExtra("service_intent_fellow_notify_ids", iHashCode);
                if (!file.exists()) {
                    cVar.b().b().a(0L);
                    cVar.b().b().b(47);
                }
                if (cVar.b().b().b() == 46) {
                    intent.setAction("ACTION_COMPLETE");
                } else {
                    if (cVar.b().b().b() != 44) {
                        cVar.a().runTask(intent);
                    }
                    intent.setAction("ACTION_BIND");
                }
                m.a(context).a(intent);
            } catch (Exception e3) {
                exc = e3;
                exc.printStackTrace();
            }
        } catch (Exception e4) {
            e = e4;
        }
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public void a(Context context, String str, String str2, int i2, boolean z2) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context.getPackageName(), "com.ubix.ssp.open.comm.AdActivity"));
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("pkg", str);
        intent.putExtra("path", str2);
        intent.putExtra("isSimple", z2);
        intent.putExtra("nid", i2);
        context.startActivity(intent);
    }

    @Override // com.ubix.ssp.ad.e.s.d
    public void a(Context context, String str, String str2, com.ubix.ssp.ad.d.a aVar, int i2) {
        if (str == null) {
            str = "";
        }
        String str3 = str;
        try {
            a.b bVar = aVar.f45759a.f47442d;
            if (bVar.f47482l == 1 && bVar.f47474d == 4) {
                this.f47072h = str3;
            }
            File file = new File(k.c(context), str2.hashCode() + ".apk");
            f47067c.put(Integer.valueOf(i2), aVar);
            a(context, str2, file, str3, i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
