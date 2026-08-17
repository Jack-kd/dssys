package com.byazt.ktq;

import android.text.TextUtils;
import com.byazt.mey.eb;
import com.byazt.tgw.e;
import com.byazt.zg.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

@com.byazt.kj.hp(hp = {0, 1, 913, 28})
/* loaded from: classes.dex */
public class hp {
    public List<Integer> gu;
    public AtomicInteger jx = new AtomicInteger(-1);

    /* renamed from: j, reason: collision with root package name */
    public AtomicBoolean f22193j = new AtomicBoolean();
    public final Map<Integer, Boolean> hp = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public final Map<Integer, Boolean> f22194l = new HashMap();

    /* renamed from: w, reason: collision with root package name */
    public final Map<Integer, AtomicInteger> f22197w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f22191a = new AtomicInteger();
    public final AtomicInteger eb = new AtomicInteger();

    /* renamed from: s, reason: collision with root package name */
    public final AtomicInteger f22196s = new AtomicInteger();

    /* renamed from: q, reason: collision with root package name */
    public final List<String> f22195q = new CopyOnWriteArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final AtomicInteger f22192e = new AtomicInteger(-1000);

    public synchronized boolean a() {
        AtomicInteger atomicInteger = this.f22197w.get(-100);
        if (atomicInteger == null) {
            return false;
        }
        return atomicInteger.get() == 0;
    }

    public synchronized boolean e() {
        return this.f22196s.get() == 0;
    }

    public synchronized boolean eb() {
        AtomicInteger atomicInteger = this.f22197w.get(0);
        if (atomicInteger == null) {
            return false;
        }
        return atomicInteger.get() == 0;
    }

    public synchronized int gu() {
        return this.f22192e.get();
    }

    public List<Integer> hp() {
        return this.gu;
    }

    public synchronized void j(int i2) {
        this.f22194l.put(Integer.valueOf(i2), Boolean.TRUE);
    }

    public synchronized void jl() {
        this.jx.set(-1);
        this.f22193j.set(false);
        this.hp.clear();
        this.f22194l.clear();
        this.f22197w.clear();
        this.f22191a.set(0);
        this.f22195q.clear();
        this.f22192e.set(-1000);
    }

    public synchronized boolean jx() {
        return l() > 0;
    }

    public synchronized int l() {
        return this.jx.get();
    }

    public synchronized boolean q() {
        return this.eb.get() == 0;
    }

    public synchronized boolean s() {
        return this.f22191a.get() == 0;
    }

    public synchronized boolean w(int i2) {
        Boolean bool = this.f22194l.get(Integer.valueOf(i2));
        if (bool != null) {
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public void hp(List<Integer> list) {
        this.gu = list;
    }

    public synchronized boolean jx(int i2) {
        Boolean bool = this.hp.get(Integer.valueOf(i2));
        if (bool != null) {
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public synchronized void l(int i2) {
        try {
            if (this.f22192e.get() < i2) {
                this.f22192e.set(i2);
            }
            this.hp.put(Integer.valueOf(i2), Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void q(int i2) {
        this.f22196s.set(i2);
    }

    public synchronized void s(int i2) {
        this.eb.set(i2);
    }

    public synchronized void hp(int i2) {
        this.jx.set(i2);
    }

    public synchronized void j() {
        this.f22193j.set(true);
    }

    public synchronized void hp(int i2, int i3) {
        this.f22197w.put(Integer.valueOf(i2), new AtomicInteger(i3));
    }

    public synchronized boolean w() {
        return this.f22193j.get();
    }

    public synchronized int a(int i2) {
        AtomicInteger atomicInteger = this.f22197w.get(Integer.valueOf(i2));
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    public synchronized void eb(int i2) {
        this.f22191a.set(i2);
    }

    public synchronized void hp(int i2, String str) {
        try {
            AtomicInteger atomicInteger = this.f22197w.get(Integer.valueOf(i2));
            if (atomicInteger != null && atomicInteger.get() != 0) {
                atomicInteger.decrementAndGet();
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.f22195q.add(str);
            if (i2 < -100 && this.eb.get() != 0) {
                this.eb.decrementAndGet();
            }
            if (i2 > 0 && this.f22196s.get() != 0) {
                this.f22196s.decrementAndGet();
            }
            if (this.f22191a.get() != 0) {
                this.f22191a.decrementAndGet();
            } else {
                com.byazt.aw.l.j(MediationConstant.TAG, "decrementTotalWaterFall--waterfall数量减少一个 ---不用再减了不然就变成-1了");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void hp(List<e> list, List<e> list2, List<e> list3) {
        int size;
        if (list != null) {
            try {
                if (list.size() != 0) {
                    List<e> listL = eb.l(list);
                    int i2 = 0;
                    if (d.hp(listL)) {
                        size = 0;
                    } else {
                        size = listL.size();
                        for (e eVar : listL) {
                            Iterator<String> it = this.f22195q.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    String next = it.next();
                                    if (!TextUtils.isEmpty(next) && eVar != null && next.equals(eVar.vv())) {
                                        size--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (size < 0) {
                        size = 0;
                    }
                    this.f22196s.set(size);
                    int size2 = list.size();
                    if (list2 != null) {
                        size2 += list2.size();
                    }
                    if (list3 != null) {
                        size2 += list3.size();
                    }
                    for (e eVar2 : list) {
                        Iterator<String> it2 = this.f22195q.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                String next2 = it2.next();
                                if (!TextUtils.isEmpty(next2) && eVar2 != null && next2.equals(eVar2.vv())) {
                                    size2--;
                                    break;
                                }
                            }
                        }
                    }
                    if (!d.hp(list2)) {
                        for (e eVar3 : list2) {
                            Iterator<String> it3 = this.f22195q.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    String next3 = it3.next();
                                    if (!TextUtils.isEmpty(next3) && eVar3 != null && next3.equals(eVar3.vv())) {
                                        size2--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (!d.hp(list3)) {
                        for (e eVar4 : list3) {
                            Iterator<String> it4 = this.f22195q.iterator();
                            while (true) {
                                if (it4.hasNext()) {
                                    String next4 = it4.next();
                                    if (!TextUtils.isEmpty(next4) && eVar4 != null && next4.equals(eVar4.vv())) {
                                        size2--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (size2 >= 0) {
                        i2 = size2;
                    }
                    this.f22191a.set(i2);
                }
            } finally {
            }
        }
    }
}
