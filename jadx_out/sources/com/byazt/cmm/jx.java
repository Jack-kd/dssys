package com.byazt.cmm;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

@com.byazt.kj.hp(hp = {0, 1, 1902, 30})
/* loaded from: classes2.dex */
public class jx implements w {
    public final w hp;

    /* renamed from: j, reason: collision with root package name */
    public com.byazt.jw.w f18913j;
    public final Queue<String> jx;

    /* renamed from: l, reason: collision with root package name */
    public final j f18914l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.jds.jx f18915w;

    public jx(com.byazt.jw.w wVar, com.byazt.jds.jx jxVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
        this.jx = concurrentLinkedQueue;
        this.f18913j = wVar;
        this.f18915w = jxVar;
        this.hp = new a(concurrentLinkedQueue, wVar);
        this.f18914l = new j(this.f18913j);
    }

    @Override // com.byazt.cmm.w
    public List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, List<String> list) {
        return null;
    }

    @Override // com.byazt.cmm.w
    public int l() {
        return this.f18914l.l();
    }

    @Override // com.byazt.cmm.w
    public synchronized void hp(com.byazt.jw.l lVar, int i2, boolean z2) {
        if (z2) {
            try {
                if (!com.byazt.giz.hp.q(lVar, this.f18913j) || !this.f18915w.j()) {
                    this.hp.hp(lVar, i2, z2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (lVar != null) {
            this.f18914l.hp(lVar, i2, z2);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:3|(3:28|4|(2:7|5))|30|11|26|15|22) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004a, code lost:
    
        r2 = new com.byazt.cmm.l();
        r2.hp(false);
        r2.hp("mem exception:" + r1.getMessage());
        com.byazt.giz.jx.hp(r1.getMessage(), r5.f18913j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007a, code lost:
    
        r7 = new com.byazt.cmm.l();
        r7.hp(false);
        r7.hp("db exception:" + r6.getMessage());
        com.byazt.giz.jx.hp(r6.getMessage(), r5.f18913j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a0, code lost:
    
        r6 = r7;
     */
    @Override // com.byazt.cmm.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.byazt.cmm.l hp(int r6, java.util.List<com.byazt.jw.l> r7, int r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            java.util.Iterator r1 = r7.iterator()     // Catch: java.lang.Throwable -> L1c
        L6:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L43
            java.lang.Object r2 = r1.next()     // Catch: java.lang.Throwable -> L1c
            com.byazt.jw.l r2 = (com.byazt.jw.l) r2     // Catch: java.lang.Throwable -> L1c
            java.util.Queue<java.lang.String> r3 = r5.jx     // Catch: java.lang.Throwable -> L1c
            java.lang.String r2 = r2.jx()     // Catch: java.lang.Throwable -> L1c
            r3.remove(r2)     // Catch: java.lang.Throwable -> L1c
            goto L6
        L1c:
            r1 = move-exception
            com.byazt.cmm.l r2 = new com.byazt.cmm.l     // Catch: java.lang.Throwable -> L77
            r2.<init>()     // Catch: java.lang.Throwable -> L77
            r2.hp(r0)     // Catch: java.lang.Throwable -> L77
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = "sending exception:"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = r1.getMessage()     // Catch: java.lang.Throwable -> L77
            r3.append(r4)     // Catch: java.lang.Throwable -> L77
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L77
            r2.hp(r3)     // Catch: java.lang.Throwable -> L77
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L77
            com.byazt.jw.w r2 = r5.f18913j     // Catch: java.lang.Throwable -> L77
            com.byazt.giz.jx.hp(r1, r2)     // Catch: java.lang.Throwable -> L77
        L43:
            com.byazt.cmm.w r1 = r5.hp     // Catch: java.lang.Throwable -> L49
            r1.hp(r6, r7, r8)     // Catch: java.lang.Throwable -> L49
            goto L70
        L49:
            r1 = move-exception
            com.byazt.cmm.l r2 = new com.byazt.cmm.l     // Catch: java.lang.Throwable -> L77
            r2.<init>()     // Catch: java.lang.Throwable -> L77
            r2.hp(r0)     // Catch: java.lang.Throwable -> L77
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = "mem exception:"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L77
            java.lang.String r4 = r1.getMessage()     // Catch: java.lang.Throwable -> L77
            r3.append(r4)     // Catch: java.lang.Throwable -> L77
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L77
            r2.hp(r3)     // Catch: java.lang.Throwable -> L77
            java.lang.String r1 = r1.getMessage()     // Catch: java.lang.Throwable -> L77
            com.byazt.jw.w r2 = r5.f18913j     // Catch: java.lang.Throwable -> L77
            com.byazt.giz.jx.hp(r1, r2)     // Catch: java.lang.Throwable -> L77
        L70:
            com.byazt.cmm.j r1 = r5.f18914l     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            com.byazt.cmm.l r6 = r1.hp(r6, r7, r8)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            goto La1
        L77:
            r6 = move-exception
            goto La3
        L79:
            r6 = move-exception
            com.byazt.cmm.l r7 = new com.byazt.cmm.l     // Catch: java.lang.Throwable -> L77
            r7.<init>()     // Catch: java.lang.Throwable -> L77
            r7.hp(r0)     // Catch: java.lang.Throwable -> L77
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L77
            java.lang.String r0 = "db exception:"
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L77
            java.lang.String r0 = r6.getMessage()     // Catch: java.lang.Throwable -> L77
            r8.append(r0)     // Catch: java.lang.Throwable -> L77
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L77
            r7.hp(r8)     // Catch: java.lang.Throwable -> L77
            java.lang.String r6 = r6.getMessage()     // Catch: java.lang.Throwable -> L77
            com.byazt.jw.w r8 = r5.f18913j     // Catch: java.lang.Throwable -> L77
            com.byazt.giz.jx.hp(r6, r8)     // Catch: java.lang.Throwable -> L77
            r6 = r7
        La1:
            monitor-exit(r5)
            return r6
        La3:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L77
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cmm.jx.hp(int, java.util.List, int):com.byazt.cmm.l");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.byazt.cmm.w
    public synchronized List<com.byazt.jw.l> hp(int i2, com.byazt.jw.l lVar, boolean z2, String str) {
        List<com.byazt.jw.l> list;
        try {
            List<com.byazt.jw.l> listHp = this.hp.hp(i2, lVar, z2, (List<String>) null);
            int i3 = 0;
            if (listHp != 0 && listHp.size() != 0) {
                int size = listHp.size();
                list = listHp;
                if (com.byazt.giz.hp.hp(i2)) {
                    List<com.byazt.jw.l> listHp2 = this.f18914l.hp((com.byazt.jw.l) listHp.get(0), size, i2, z2);
                    list = listHp;
                    if (listHp2 != null) {
                        list = listHp;
                        if (listHp2.size() != 0) {
                            listHp2.size();
                            HashMap map = new HashMap();
                            for (com.byazt.jw.l lVar2 : listHp2) {
                                map.put(lVar2.jx(), lVar2);
                            }
                            ArrayList arrayList = new ArrayList(this.jx);
                            arrayList.size();
                            for (com.byazt.jw.l lVar3 : listHp2) {
                                int size2 = arrayList.size();
                                int i4 = 0;
                                while (true) {
                                    if (i4 < size2) {
                                        Object obj = arrayList.get(i4);
                                        i4++;
                                        if (TextUtils.equals(lVar3.jx(), (String) obj)) {
                                            map.remove(lVar3.jx());
                                            break;
                                        }
                                    }
                                }
                            }
                            for (com.byazt.jw.l lVar4 : listHp) {
                                map.put(lVar4.jx(), lVar4);
                            }
                            listHp.clear();
                            Set setKeySet = map.keySet();
                            map.size();
                            Iterator it = setKeySet.iterator();
                            while (it.hasNext()) {
                                listHp.add(map.get((String) it.next()));
                            }
                            listHp2.clear();
                            list = listHp;
                        }
                    }
                }
            } else {
                ArrayList arrayList2 = new ArrayList(this.jx);
                int size3 = arrayList2.size();
                List<com.byazt.jw.l> listHp3 = this.f18914l.hp(i2, lVar, z2, arrayList2);
                if (listHp3 != 0 && listHp3.size() != 0) {
                    listHp3.size();
                    HashMap map2 = new HashMap();
                    for (com.byazt.jw.l lVar5 : listHp3) {
                        map2.put(lVar5.jx(), lVar5);
                    }
                    if (size3 != 0) {
                        int size4 = arrayList2.size();
                        while (i3 < size4) {
                            Object obj2 = arrayList2.get(i3);
                            i3++;
                            String str2 = (String) obj2;
                            if (map2.get(str2) != null) {
                                map2.remove(str2);
                            }
                        }
                    }
                    listHp3.clear();
                    Set setKeySet2 = map2.keySet();
                    map2.size();
                    Iterator it2 = setKeySet2.iterator();
                    while (it2.hasNext()) {
                        listHp3.add(map2.get((String) it2.next()));
                    }
                }
                list = listHp3;
            }
            if (list != null && !list.isEmpty()) {
                list.size();
                Iterator<com.byazt.jw.l> it3 = list.iterator();
                while (it3.hasNext()) {
                    this.jx.offer(it3.next().jx());
                }
                return list;
            }
            return new ArrayList();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.byazt.cmm.w
    public synchronized boolean hp(int i2, String str, com.byazt.jw.l lVar) {
        if (this.hp.hp(i2, str, lVar)) {
            return true;
        }
        if (com.byazt.giz.hp.hp(i2)) {
            if (this.f18914l.hp(i2, str, lVar)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.byazt.cmm.w
    public int hp() {
        return this.hp.hp();
    }
}
