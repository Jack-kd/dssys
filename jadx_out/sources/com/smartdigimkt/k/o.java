package com.smartdigimkt.k;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class o {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f41160e = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Context f41161a;

    /* renamed from: b, reason: collision with root package name */
    public final com.smartdigimkt.k3.g f41162b;

    /* renamed from: c, reason: collision with root package name */
    public final com.smartdigimkt.b4.e f41163c = com.smartdigimkt.b4.e.a();

    /* renamed from: d, reason: collision with root package name */
    public final ConcurrentHashMap f41164d = new ConcurrentHashMap();

    public o(Context context, com.smartdigimkt.k3.g gVar) {
        this.f41161a = context;
        this.f41162b = gVar;
    }

    public static com.smartdigimkt.m3.f a(o oVar, r rVar) {
        oVar.getClass();
        com.smartdigimkt.m3.f fVar = new com.smartdigimkt.m3.f();
        fVar.f42006a = rVar.f41192o;
        fVar.f42007b = rVar.f41191n;
        fVar.f42008c = rVar.f41178a;
        fVar.f42009d = rVar.f41183f;
        fVar.f42010e = rVar.f41179b;
        fVar.f42011f = rVar.f41182e;
        fVar.f42012g = rVar.f41180c;
        com.smartdigimkt.s3.b bVar = rVar.f41190m;
        if (bVar != null) {
            fVar.f42013h = bVar.getClass().getName();
        }
        fVar.f42014i = rVar.f41193p ? 1 : 0;
        fVar.f42015j = rVar.f41195r;
        fVar.f42016k = rVar.f41194q;
        com.smartdigimkt.m3.c cVar = rVar.f41187j;
        if (cVar != null) {
            fVar.f42022q = cVar.f41814e;
            fVar.f42024s = cVar.e();
            fVar.f41994B = cVar.f41787H;
            if (cVar instanceof com.smartdigimkt.m3.k) {
                com.smartdigimkt.m3.k kVar = (com.smartdigimkt.m3.k) cVar;
                fVar.f42025t = kVar.f42049j0;
                fVar.f42026u = kVar.f42054o0;
            }
            fVar.f42027v = cVar.f41812d;
            com.smartdigimkt.m3.e eVar = cVar.f41832w;
            if (eVar != null) {
                fVar.f42017l = eVar.f41841B;
                fVar.f42018m = eVar.f41844C;
                fVar.f42019n = eVar.f41991z0;
                fVar.f42020o = eVar.f41839A0;
                fVar.f42021p = eVar.f41842B0;
                fVar.f42005M = eVar.f41963q;
            }
        }
        fVar.f42023r = rVar.f41189l;
        fVar.f42028w = rVar.a();
        fVar.f42029x = rVar.f41201x;
        fVar.f42030y = rVar.b();
        fVar.f42031z = rVar.f41171A;
        fVar.f41993A = rVar.f41172B;
        fVar.f42000H = rVar.f41197t;
        fVar.f42001I = rVar.f41198u;
        fVar.f42002J = rVar.f41199v;
        fVar.f42003K = rVar.f41184g;
        fVar.f42004L = rVar.f41185h;
        fVar.f41996D = rVar.f41173C;
        fVar.f41997E = rVar.f41174D;
        if (TextUtils.isEmpty(rVar.f41175E)) {
            rVar.f41175E = "1";
        }
        fVar.f41998F = rVar.f41175E;
        fVar.f41999G = rVar.f41176F;
        fVar.f41995C = rVar.f41177G;
        return fVar;
    }

    public static r a(o oVar, com.smartdigimkt.m3.f fVar) {
        oVar.getClass();
        r rVar = new r();
        m mVar = new m(fVar);
        d dVar = new d();
        rVar.f41192o = fVar.f42006a;
        rVar.f41191n = fVar.f42007b;
        rVar.f41178a = fVar.f42008c;
        String str = fVar.f42009d;
        rVar.f41183f = str;
        rVar.f41179b = fVar.f42010e;
        String str2 = fVar.f42011f;
        rVar.f41182e = str2;
        rVar.f41180c = fVar.f42012g;
        rVar.f41193p = fVar.f42014i == 1;
        rVar.f41195r = fVar.f42015j;
        rVar.f41194q = fVar.f42016k;
        rVar.f41189l = fVar.f42023r;
        rVar.f41184g = fVar.f42003K;
        rVar.f41185h = fVar.f42004L;
        rVar.f41200w = fVar.f42028w;
        rVar.f41201x = fVar.f42029x;
        rVar.f41203z = fVar.f42030y;
        rVar.f41197t = fVar.f42000H;
        rVar.f41198u = fVar.f42001I;
        rVar.f41199v = fVar.f42002J;
        rVar.f41173C = fVar.f41996D;
        rVar.f41174D = fVar.f41997E;
        rVar.f41175E = fVar.f41998F;
        rVar.f41176F = fVar.f41999G;
        rVar.f41177G = fVar.f41995C;
        long j2 = fVar.f42031z;
        if (j2 > 0) {
            rVar.f41171A = j2;
        }
        long j3 = fVar.f41993A;
        if (j3 > 0) {
            rVar.f41172B = j3;
        }
        long j4 = j3 - j2;
        if (j4 > 0) {
            rVar.f41186i = j4;
        }
        dVar.f41841B = fVar.f42017l;
        dVar.f41844C = fVar.f42018m;
        dVar.f41991z0 = fVar.f42019n;
        dVar.f41839A0 = fVar.f42020o;
        dVar.f41842B0 = fVar.f42021p;
        dVar.f41963q = fVar.f42005M;
        mVar.f41832w = dVar;
        String str3 = fVar.f42022q;
        mVar.f41814e = str3;
        mVar.f42049j0 = fVar.f42025t;
        mVar.f41822m = str2;
        mVar.f41806a = str;
        mVar.f42054o0 = fVar.f42026u;
        mVar.f41812d = fVar.f42027v;
        rVar.f41187j = mVar;
        try {
            if (!TextUtils.isEmpty(str3)) {
                int iApplyDimension = (int) TypedValue.applyDimension(1, 50.0f, oVar.f41161a.getResources().getDisplayMetrics());
                rVar.f41181d = com.smartdigimkt.t3.m.a(oVar.f41161a).b(new com.smartdigimkt.t3.o(1, mVar.f41814e), iApplyDimension, iApplyDimension);
            }
            String str4 = fVar.f42013h;
            if (!TextUtils.isEmpty(str4)) {
                rVar.f41190m = (com.smartdigimkt.s3.b) Class.forName(str4).newInstance();
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        int i2 = fVar.f41994B;
        if (i2 == 4) {
            com.smartdigimkt.m3.c cVar = rVar.f41187j;
            if (cVar != null) {
                cVar.f41787H = 4;
            }
            rVar.f41196s = c.LOADING;
        } else if (i2 == 5) {
            com.smartdigimkt.m3.c cVar2 = rVar.f41187j;
            if (cVar2 != null) {
                cVar2.f41787H = 5;
            }
            rVar.f41196s = c.FINISH;
        } else if (i2 == 6) {
            com.smartdigimkt.m3.c cVar3 = rVar.f41187j;
            if (cVar3 != null) {
                cVar3.f41787H = 6;
            }
            rVar.f41196s = c.FAIL;
        } else if (i2 == 2) {
            com.smartdigimkt.m3.c cVar4 = rVar.f41187j;
            if (cVar4 != null) {
                cVar4.f41787H = 2;
            }
            rVar.f41196s = c.INSTALLED;
        } else if (i2 == 7) {
            com.smartdigimkt.m3.c cVar5 = rVar.f41187j;
            if (cVar5 != null) {
                cVar5.f41787H = 7;
            }
            rVar.f41196s = c.PAUSE;
        }
        return rVar;
    }

    public final void a(String str, int i2, boolean z2) {
        ConcurrentHashMap concurrentHashMap = this.f41164d;
        if (concurrentHashMap != null) {
            concurrentHashMap.put(str, new Pair(Integer.valueOf(i2), Boolean.valueOf(z2)));
        }
    }

    public final void a(r rVar, com.smartdigimkt.j.p pVar) {
        ConcurrentHashMap concurrentHashMap;
        String str = rVar.f41179b;
        if (TextUtils.isEmpty(str)) {
            pVar.onCallback(rVar);
            return;
        }
        Pair pair = (TextUtils.isEmpty(str) || (concurrentHashMap = this.f41164d) == null) ? null : (Pair) concurrentHashMap.get(str);
        if (pair != null) {
            rVar.f41185h = ((Integer) pair.first).intValue();
            rVar.f41203z = ((Boolean) pair.second).booleanValue();
            pVar.onCallback(rVar);
            return;
        }
        this.f41163c.b(new i(this, str, rVar, pVar));
    }

    public final void a(r rVar, String str) {
        if (rVar == null || this.f41161a == null) {
            return;
        }
        rVar.f41176F = str;
        Intent intent = new Intent();
        intent.setAction(str);
        intent.setPackage(this.f41161a.getPackageName());
        intent.putExtra("receiver_extra_offer_id", rVar.f41183f);
        intent.putExtra("receiver_extra_click_id", rVar.f41191n);
        com.smartdigimkt.j3.d.a(this.f41161a).a(intent);
    }

    public final void a(String str) {
        if (this.f41161a == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("at_offer_action_5");
        intent.setPackage(this.f41161a.getPackageName());
        intent.putExtra("receiver_extra_offer_id", str);
        intent.putExtra("receiver_extra_click_id", "");
        com.smartdigimkt.j3.d.a(this.f41161a).a(intent);
    }
}
