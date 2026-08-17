package com.smartdigimkt.z;

import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public final class d0 {

    /* renamed from: d, reason: collision with root package name */
    public static volatile d0 f45275d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f45276a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f45277b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public c0 f45278c;

    public d0(Context context) {
        this.f45276a = context;
    }

    public static d0 a(Context context) {
        if (f45275d == null) {
            synchronized (d0.class) {
                try {
                    if (f45275d == null) {
                        f45275d = new d0(context);
                    }
                } finally {
                }
            }
        }
        return f45275d;
    }

    public final void b() {
        if (this.f45278c != null) {
            com.smartdigimkt.j3.d dVarA = com.smartdigimkt.j3.d.a(this.f45276a);
            c0 c0Var = this.f45278c;
            synchronized (dVarA.f41113b) {
                try {
                    ArrayList arrayList = (ArrayList) dVarA.f41113b.remove(c0Var);
                    if (arrayList != null) {
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            com.smartdigimkt.j3.c cVar = (com.smartdigimkt.j3.c) arrayList.get(size);
                            cVar.f41109d = true;
                            for (int i2 = 0; i2 < cVar.f41106a.countActions(); i2++) {
                                String action = cVar.f41106a.getAction(i2);
                                ArrayList arrayList2 = (ArrayList) dVarA.f41114c.get(action);
                                if (arrayList2 != null) {
                                    for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                                        com.smartdigimkt.j3.c cVar2 = (com.smartdigimkt.j3.c) arrayList2.get(size2);
                                        if (cVar2.f41107b == c0Var) {
                                            cVar2.f41109d = true;
                                            arrayList2.remove(size2);
                                        }
                                    }
                                    if (arrayList2.size() <= 0) {
                                        dVarA.f41114c.remove(action);
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f45278c = null;
        }
    }

    public final void a() {
        if (this.f45276a != null && this.f45278c == null) {
            this.f45278c = new c0();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("at_offer_action_1");
            intentFilter.addAction("at_offer_action_2");
            intentFilter.addAction("at_offer_action_3");
            intentFilter.addAction("at_offer_action_4");
            intentFilter.addAction("at_offer_action_5");
            com.smartdigimkt.j3.d dVarA = com.smartdigimkt.j3.d.a(this.f45276a);
            c0 c0Var = this.f45278c;
            synchronized (dVarA.f41113b) {
                try {
                    com.smartdigimkt.j3.c cVar = new com.smartdigimkt.j3.c(intentFilter, c0Var);
                    ArrayList arrayList = (ArrayList) dVarA.f41113b.get(c0Var);
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                        dVarA.f41113b.put(c0Var, arrayList);
                    }
                    arrayList.add(cVar);
                    for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                        String action = intentFilter.getAction(i2);
                        ArrayList arrayList2 = (ArrayList) dVarA.f41114c.get(action);
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList(1);
                            dVarA.f41114c.put(action, arrayList2);
                        }
                        arrayList2.add(cVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void a(com.smartdigimkt.m3.c cVar, com.smartdigimkt.i0.l lVar) {
        com.smartdigimkt.m3.e eVar = cVar.f41832w;
        if (eVar == null || eVar.f41870K1 != 1) {
            return;
        }
        if (lVar.f40673i == null) {
            lVar.f40673i = new com.smartdigimkt.i0.b();
        }
        lVar.f40673i.f40635c = 1001;
        p.a(9, cVar, lVar);
    }
}
