package com.smartdigimkt.e0;

import java.util.ArrayList;

/* loaded from: classes5.dex */
public final class r {

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ int f40009o = 0;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f40010a;

    /* renamed from: b, reason: collision with root package name */
    public final int f40011b;

    /* renamed from: c, reason: collision with root package name */
    public String f40012c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f40013d;

    /* renamed from: e, reason: collision with root package name */
    public q f40014e;

    /* renamed from: f, reason: collision with root package name */
    public final com.smartdigimkt.m3.c f40015f;

    /* renamed from: g, reason: collision with root package name */
    public final com.smartdigimkt.m3.e f40016g;

    /* renamed from: h, reason: collision with root package name */
    public final com.smartdigimkt.l3.a f40017h;

    /* renamed from: i, reason: collision with root package name */
    public final b f40018i;

    /* renamed from: k, reason: collision with root package name */
    public volatile boolean f40020k;

    /* renamed from: j, reason: collision with root package name */
    public final c f40019j = new c(this);

    /* renamed from: l, reason: collision with root package name */
    public boolean f40021l = false;

    /* renamed from: m, reason: collision with root package name */
    public boolean f40022m = false;

    /* renamed from: n, reason: collision with root package name */
    public boolean f40023n = false;

    public r(String str, boolean z2, com.smartdigimkt.m3.c cVar, com.smartdigimkt.l3.a aVar) {
        this.f40010a = z2;
        this.f40015f = cVar;
        this.f40017h = aVar;
        com.smartdigimkt.m3.e eVar = cVar.f41832w;
        if (eVar != null) {
            this.f40016g = eVar;
        } else {
            this.f40016g = aVar.f41644r;
        }
        this.f40011b = this.f40016g.f41960p;
        b bVar = new b();
        this.f40018i = bVar;
        bVar.f39983d = new p(this);
    }

    public static void a(r rVar) {
        rVar.getClass();
        u uVarA = u.a();
        synchronized (uVarA) {
            try {
                int size = uVarA.f40029a.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        i2 = -1;
                        break;
                    } else if (rVar == uVarA.f40029a.get(i2)) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 != -1) {
                    uVarA.f40029a.remove(i2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.smartdigimkt.x3.g.a().a(rVar.f40019j);
    }

    public final void b() {
        com.smartdigimkt.m3.c cVar = this.f40015f;
        com.smartdigimkt.m3.e eVar = this.f40016g;
        boolean z2 = this.f40017h.f41647u;
        ArrayList arrayListB = cVar.b(eVar);
        arrayListB.size();
        if (arrayListB.size() > 0) {
            for (int i2 = 0; i2 < arrayListB.size(); i2++) {
                String str = (String) arrayListB.get(i2);
                if (!t.a(1, str)) {
                    new v(this.f40010a, this.f40015f, str).b();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x01aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0170 A[Catch: all -> 0x0141, TryCatch #0 {all -> 0x0141, blocks: (B:59:0x00fa, B:61:0x010b, B:64:0x011f, B:78:0x0154, B:80:0x0170, B:90:0x01aa, B:67:0x0126, B:70:0x012f, B:72:0x0139, B:75:0x0144, B:77:0x014c, B:81:0x0179, B:83:0x0183, B:86:0x018a, B:88:0x0190, B:89:0x019b, B:91:0x01ae), top: B:96:0x00fa }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.e0.r.c():void");
    }

    public final boolean a() {
        com.smartdigimkt.m3.e eVar = this.f40016g;
        int i2 = eVar != null ? eVar.f41904W : 2;
        com.smartdigimkt.m3.c cVar = this.f40015f;
        return i2 == 1 && !(cVar != null && cVar.d() == 2);
    }

    public final void a(int i2) {
        int i3;
        boolean z2 = this.f40022m;
        if (i2 == 1 && !this.f40021l) {
            this.f40021l = true;
            if (z2) {
                com.smartdigimkt.m3.c cVar = this.f40015f;
                synchronized (cVar) {
                    i3 = cVar.f41788I;
                }
                if (i3 <= 0 && this.f40015f.b() <= 0) {
                    com.smartdigimkt.b4.e.a().a(new d(this), 0L, 4);
                } else {
                    this.f40015f.c();
                    this.f40015f.b();
                    a(3);
                }
            } else {
                com.smartdigimkt.b4.e.a().a(new o(this), 0L, 4);
            }
            if (this.f40023n) {
                if (!t.a(this.f40015f, this.f40016g)) {
                    a(4);
                } else {
                    com.smartdigimkt.m3.c cVar2 = this.f40015f;
                    if (cVar2.f41790K > 0 && cVar2.f41791L > 0) {
                        a(4);
                    } else {
                        com.smartdigimkt.y3.b bVarA = com.smartdigimkt.y3.b.a();
                        com.smartdigimkt.l3.a aVar = this.f40017h;
                        bVarA.getClass();
                        com.smartdigimkt.y3.b.a().a(aVar.f41632f + "_ " + aVar.f41631e).f42042f = System.currentTimeMillis();
                        com.smartdigimkt.b4.e.a().c(new f(this));
                    }
                }
            }
        }
        b bVar = this.f40018i;
        if (bVar == null || bVar.f39980a.get() || bVar.f39982c.contains(Integer.valueOf(i2))) {
            return;
        }
        bVar.f39982c.add(Integer.valueOf(i2));
        bVar.f39981b.get();
        if (bVar.f39981b.decrementAndGet() == 0) {
            bVar.f39980a.set(true);
            p pVar = bVar.f39983d;
            if (pVar != null) {
                q qVar = pVar.f40008a.f40014e;
                if (qVar != null) {
                    qVar.a();
                }
                a(pVar.f40008a);
            }
        }
    }

    public final void a(com.smartdigimkt.i0.f fVar) {
        fVar.a();
        this.f40020k = true;
        b bVar = this.f40018i;
        if (bVar == null || bVar.f39980a.get()) {
            return;
        }
        bVar.f39980a.set(true);
        p pVar = bVar.f39983d;
        if (pVar != null) {
            q qVar = pVar.f40008a.f40014e;
            if (qVar != null) {
                qVar.a(fVar);
            }
            a(pVar.f40008a);
        }
    }
}
