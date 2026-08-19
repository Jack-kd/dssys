package com.anythink.core.common.h;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public final class bz {

    /* renamed from: c, reason: collision with root package name */
    private String f4124c;

    /* renamed from: a, reason: collision with root package name */
    private final String f4122a = "anythink_" + bz.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private int f4123b = 1;

    /* renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, bt> f4125d = new ConcurrentHashMap<>(3);

    public interface a {
        boolean a(bt btVar);
    }

    public bz(String str, String str2) {
        this.f4124c = str + "_" + str2;
    }

    public final void a(int i2) {
        if (i2 <= 0) {
            return;
        }
        this.f4123b = i2;
    }

    public final synchronized void b(final int i2) {
        a(new a() { // from class: com.anythink.core.common.h.bz.3
            @Override // com.anythink.core.common.h.bz.a
            public final boolean a(bt btVar) {
                btVar.a(i2);
                return true;
            }
        });
    }

    public final synchronized void a(String str, bt btVar) {
        this.f4125d.put(str, btVar);
        a();
    }

    private synchronized void a() {
        bt btVar;
        if (this.f4125d.entrySet() == null) {
            return;
        }
        if (this.f4125d.size() <= this.f4123b) {
            return;
        }
        final bt[] btVarArr = new bt[1];
        a(new a() { // from class: com.anythink.core.common.h.bz.1
            @Override // com.anythink.core.common.h.bz.a
            public final boolean a(bt btVar2) {
                bt[] btVarArr2 = btVarArr;
                if (btVarArr2[0] == null) {
                    btVarArr2[0] = btVar2;
                } else if (com.anythink.core.common.v.k.a(btVar2.e(), btVarArr[0].e()) <= 0 && (com.anythink.core.common.v.k.a(btVar2.e(), btVarArr[0].e()) != 0 || btVar2.f() >= btVarArr[0].f())) {
                    return true;
                }
                btVarArr[0] = btVar2;
                return true;
            }
        });
        if (this.f4125d.size() > this.f4123b && (btVar = btVarArr[0]) != null) {
            this.f4125d.remove(btVar.a());
            btVarArr[0].g();
        }
    }

    public final j a(final ad adVar) {
        final j jVar = new j();
        final ArrayList arrayList = new ArrayList(3);
        jVar.f4282a = arrayList;
        a(new a() { // from class: com.anythink.core.common.h.bz.2
            @Override // com.anythink.core.common.h.bz.a
            public final boolean a(bt btVar) {
                if (!jVar.f4284c && btVar.d()) {
                    jVar.f4284c = true;
                }
                c cVarC = btVar.c();
                if (cVarC != null) {
                    if (arrayList.size() != 0) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= arrayList.size()) {
                                break;
                            }
                            if (com.anythink.core.common.v.k.a(cVarC.e().getUnitGroupInfo(), ((c) arrayList.get(i2)).e().getUnitGroupInfo()) < 0) {
                                arrayList.add(i2, cVarC);
                                break;
                            }
                            if (i2 == arrayList.size() - 1) {
                                arrayList.add(cVarC);
                                break;
                            }
                            i2++;
                        }
                    } else {
                        arrayList.add(cVarC);
                    }
                    ad adVarY = cVarC.e().getUnitGroupInfo().Y();
                    ad adVar2 = adVar;
                    if (adVar2 != null && adVarY != null && TextUtils.equals(adVar2.token, adVarY.token)) {
                        jVar.f4283b = cVarC;
                    }
                }
                return true;
            }
        });
        return jVar;
    }

    public final synchronized void a(c cVar) {
        if (this.f4125d == null) {
            return;
        }
        if (cVar != null) {
            bt btVar = this.f4125d.get(cVar.i().aR());
            if (btVar != null) {
                btVar.a(cVar);
                if (btVar.b() == 0) {
                    this.f4125d.remove(btVar.a());
                }
            }
        }
    }

    private synchronized void a(a aVar) {
        try {
            ConcurrentHashMap<String, bt> concurrentHashMap = this.f4125d;
            if (concurrentHashMap == null) {
                return;
            }
            Set<Map.Entry<String, bt>> setEntrySet = concurrentHashMap.entrySet();
            if (setEntrySet == null) {
                return;
            }
            for (Map.Entry<String, bt> entry : setEntrySet) {
                bt value = entry.getValue();
                c cVarC = value.c();
                if (cVarC != null && cVarC.k()) {
                    entry.getKey();
                    aVar.a(value);
                } else {
                    this.f4125d.remove(entry.getKey());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
