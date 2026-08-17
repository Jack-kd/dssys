package com.byazt.nm;

import com.byazt.jw.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

@com.byazt.kj.hp(hp = {0, 1, 1621, 28})
/* loaded from: classes3.dex */
public abstract class hp<T extends com.byazt.jw.l> extends com.byazt.cmm.hp {

    /* renamed from: a, reason: collision with root package name */
    public int f23695a;
    public com.byazt.yc.hp hp;

    /* renamed from: j, reason: collision with root package name */
    public Queue<T> f23696j = new ConcurrentLinkedQueue();
    public com.byazt.jw.w jx;

    /* renamed from: l, reason: collision with root package name */
    public String f23697l;

    /* renamed from: w, reason: collision with root package name */
    public Queue<String> f23698w;

    public hp(com.byazt.yc.hp hpVar, Queue<String> queue, String str, com.byazt.jw.w wVar) {
        this.f23695a = -1;
        this.hp = hpVar;
        this.f23698w = queue;
        this.jx = wVar;
        this.f23697l = str;
        if (wVar != null) {
            this.f23695a = wVar.jl();
        }
    }

    public com.byazt.cmm.l hp(int i2, List<T> list, int i3) {
        com.byazt.cmm.l lVar = new com.byazt.cmm.l();
        if (list == null || list.size() == 0 || list.get(0) == null || !hp(list.get(0))) {
            lVar.hp(false);
            return lVar;
        }
        l(i2, list, i3);
        lVar.hp(true);
        return lVar;
    }

    public void l(T t2) {
        if (this.f23696j == null || t2 == null || !hp(t2)) {
            return;
        }
        if (this.f23695a > 0 && this.f23696j.size() > this.f23695a) {
            this.f23696j.poll();
        }
        this.f23696j.offer(t2);
    }

    @Override // com.byazt.cmm.hp
    public List<com.byazt.jw.l> l(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        this.f23696j.size();
        do {
            T tPoll = this.f23696j.poll();
            if (tPoll == null) {
                break;
            }
            tPoll.l(tPoll.e() + 1);
            arrayList.add(tPoll);
        } while (arrayList.size() != this.hp.l());
        return arrayList;
    }

    @Override // com.byazt.cmm.hp
    public boolean hp(String str) {
        return this.f23696j.size() > 0;
    }

    public int hp() {
        return this.f23696j.size();
    }

    private void l(int i2, List<T> list, int i3) {
        com.byazt.jw.l lVar;
        int size = this.f23696j.size();
        if ((i2 == -1 || i2 == 200 || i2 == 509 || i2 == -3) && list != null && list.size() != 0 && size != 0) {
            HashMap map = new HashMap();
            for (T t2 : this.f23696j) {
                if (t2 != null) {
                    map.put(t2.jx(), t2);
                }
            }
            for (T t3 : list) {
                if (t3 != null && (lVar = (com.byazt.jw.l) map.get(t3.jx())) != null) {
                    try {
                        this.f23696j.remove(lVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        this.f23696j.size();
    }

    @Override // com.byazt.cmm.hp
    public boolean l(int i2, String str, com.byazt.jw.l lVar) {
        int size = this.f23696j.size();
        int iHp = this.hp.hp();
        com.byazt.giz.hp.l(i2);
        return size >= iHp;
    }
}
