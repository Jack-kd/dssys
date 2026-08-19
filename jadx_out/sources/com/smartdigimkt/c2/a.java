package com.smartdigimkt.c2;

import android.text.TextUtils;
import com.smartdigimkt.i0.l;
import com.smartdigimkt.k2.b0;
import com.smartdigimkt.k2.f;
import com.smartdigimkt.m3.m;
import com.smartdigimkt.y1.k;
import com.smartdigimkt.z.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class a implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f39631a;

    public a(d dVar) {
        this.f39631a = dVar;
    }

    @Override // com.smartdigimkt.y1.k
    public final void a() {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        dVar.a(107);
        d dVar2 = this.f39631a;
        c cVar = dVar2.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            p.a(5, dVar2.f39637d, lVarA);
            p.a(31, dVar2.f39637d, lVarA);
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.a();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void b(long j2) {
        m mVar;
        HashMap map;
        if (this.f39631a.f39640g != null) {
            HashMap map2 = new HashMap();
            map2.put("video_progress", Long.valueOf(j2));
            this.f39631a.f39640g.a(map2);
        }
        this.f39631a.a(125);
        d dVar = this.f39631a;
        com.smartdigimkt.m3.c cVar = dVar.f39637d;
        if ((cVar instanceof com.smartdigimkt.m3.k) && (mVar = ((com.smartdigimkt.m3.k) cVar).f42048i0) != null && (map = mVar.f42070G) != null && map.size() > 0) {
            if (dVar.f39651r == null) {
                dVar.f39651r = new ConcurrentHashMap();
            }
            long j3 = j2 / 1000;
            for (Integer num : map.keySet()) {
                if (dVar.f39651r.get(num) == null || !((Boolean) dVar.f39651r.get(num)).booleanValue()) {
                    if (j3 >= num.intValue() && dVar.f39643j != null) {
                        dVar.f39651r.put(num, Boolean.TRUE);
                        l lVarA = dVar.f39643j.a();
                        lVarA.f40672h.f40686g = num.intValue();
                        p.a(32, dVar.f39637d, lVarA);
                    }
                }
            }
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.b(j2);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void c() {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        k kVar = dVar.f39642i;
        if (kVar != null) {
            kVar.c();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void d() {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        c cVar = dVar.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            lVarA.f40671g = dVar.f39643j.b();
            p.a(13, dVar.f39637d, lVarA);
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.d();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void e() {
        com.smartdigimkt.w3.b bVar;
        String str = this.f39631a.f39634a;
        com.smartdigimkt.w3.d dVarA = com.smartdigimkt.w3.d.a();
        String str2 = this.f39631a.f39637d.f41818i;
        synchronized (dVarA) {
            if (!TextUtils.isEmpty(str2) && (bVar = (com.smartdigimkt.w3.b) dVarA.f44940a.get(str2)) != null) {
                bVar.c();
                bVar.f44930k = true;
                if (bVar.c()) {
                    bVar.d();
                    bVar.f44926g = 1;
                    bVar.b();
                }
            }
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.e();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void f() {
        b0 b0Var;
        com.smartdigimkt.l3.a aVar;
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        dVar.a(101);
        d dVar2 = this.f39631a;
        com.smartdigimkt.k2.c cVar = dVar2.f39640g;
        if (cVar != null) {
            long videoLength = dVar2.f39641h.getVideoLength();
            ArrayList arrayList = cVar.f41295e;
            if (arrayList == null || arrayList.size() <= 0) {
                b0Var = null;
                if (b0Var != null && (aVar = b0Var.f41306c) != null && !TextUtils.equals(String.valueOf(aVar.f41628b), "4")) {
                    b0Var.f41288j = videoLength;
                }
            } else {
                ArrayList arrayList2 = cVar.f41295e;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    f fVar = (f) obj;
                    if (fVar instanceof b0) {
                        b0Var = (b0) fVar;
                        break;
                    }
                }
                b0Var = null;
                if (b0Var != null) {
                    b0Var.f41288j = videoLength;
                }
            }
        }
        d dVar3 = this.f39631a;
        System.currentTimeMillis();
        dVar3.getClass();
        d dVar4 = this.f39631a;
        c cVar2 = dVar4.f39643j;
        if (cVar2 != null) {
            p.a(1, dVar4.f39637d, cVar2.a());
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.f();
            this.f39631a.f39642i.b(0L);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void g() {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        c cVar = dVar.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            lVarA.f40671g = dVar.f39643j.b();
            p.a(14, dVar.f39637d, lVarA);
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.g();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(com.smartdigimkt.i0.f fVar) {
        String str = this.f39631a.f39634a;
        fVar.a();
        if (this.f39631a.f39640g != null) {
            HashMap map = new HashMap();
            map.put("video_play_fail_message", fVar.a());
            this.f39631a.f39640g.a(map);
        }
        this.f39631a.a(108);
        d dVar = this.f39631a;
        c cVar = dVar.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            lVarA.f40672h = dVar.a(false);
            p.a(17, dVar.f39637d, lVarA);
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.a(fVar);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(int i2) {
        d dVar = this.f39631a;
        c cVar = dVar.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            if (i2 == 25) {
                p.a(2, dVar.f39637d, lVarA);
            } else if (i2 == 50) {
                p.a(3, dVar.f39637d, lVarA);
            } else if (i2 == 75) {
                p.a(4, dVar.f39637d, lVarA);
            }
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.a(i2);
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void b() {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        c cVar = dVar.f39643j;
        if (cVar != null) {
            l lVarA = cVar.a();
            lVarA.f40671g = dVar.f39643j.b();
            p.a(12, dVar.f39637d, lVarA);
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // com.smartdigimkt.y1.k
    public final void a(long j2) {
        d dVar = this.f39631a;
        String str = dVar.f39634a;
        if (dVar.f39640g != null) {
            HashMap map = new HashMap();
            map.put("video_length", Long.valueOf(j2));
            this.f39631a.f39640g.a(map);
        }
        this.f39631a.a(123);
        d dVar2 = this.f39631a;
        c cVar = dVar2.f39643j;
        if (cVar != null) {
            p.a(35, dVar2.f39637d, cVar.a());
        }
        k kVar = this.f39631a.f39642i;
        if (kVar != null) {
            kVar.a(j2);
        }
    }
}
