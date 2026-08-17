package com.byazt.jds;

import android.os.Handler;
import com.byazt.jw.e;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1095, 54})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final com.byazt.fxy.l f21444a;
    public jx jx;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.jw.w f21447w;

    /* renamed from: j, reason: collision with root package name */
    public volatile long f21445j = 0;
    public final AtomicInteger hp = new AtomicInteger(0);

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f21446l = new AtomicInteger(0);

    public a(com.byazt.jw.w wVar, com.byazt.fxy.l lVar) {
        this.f21447w = wVar;
        this.f21444a = lVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(List<com.byazt.jw.l> list, long j2, int i2, Object obj) {
        a aVar;
        Throwable th;
        l lVarHp;
        l lVar;
        try {
            com.byazt.jw.l lVar2 = list.get(0);
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.lv(), 1, this.f21447w);
            try {
                if (lVar2.j() == 0) {
                    lVarHp = com.byazt.mdk.l.w().hp(list);
                    hp(lVarHp, list);
                    if (lVarHp != null) {
                        com.byazt.giz.hp.hp(list, lVarHp.f21464j, this.f21447w);
                    }
                } else {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONArray jSONArray = new JSONArray();
                        Iterator<com.byazt.jw.l> it = list.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(it.next().eb());
                        }
                        jSONObject.put("stats_list", jSONArray);
                    } catch (Exception e2) {
                        com.byazt.giz.jx.hp("_error", "json exception:" + e2.getMessage(), this.f21447w);
                    }
                    lVarHp = com.byazt.mdk.l.w().hp(jSONObject);
                }
                lVar = lVarHp;
                this.f21446l.decrementAndGet();
                aVar = this;
            } catch (Throwable th2) {
                th = th2;
                aVar = this;
                com.byazt.giz.jx.hp("_error", "inner exception:" + th.getMessage(), aVar.f21447w);
                com.byazt.giz.l.hp(com.byazt.fxy.l.hp.jx(), 1, aVar.f21447w);
                aVar.f21446l.decrementAndGet();
            }
        } catch (Throwable th3) {
            th = th3;
            aVar = this;
        }
        try {
            aVar.hp(lVar, list, j2, obj, i2);
        } catch (Throwable th4) {
            th = th4;
            th = th;
            com.byazt.giz.jx.hp("_error", "inner exception:" + th.getMessage(), aVar.f21447w);
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.jx(), 1, aVar.f21447w);
            aVar.f21446l.decrementAndGet();
        }
    }

    public void hp(List<com.byazt.jw.l> list, String str, int i2, Object obj) {
        this.jx = this.f21444a.j();
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.byazt.giz.hp.hp(list, i2, str, this.f21447w);
        if (this.f21447w.e() != null) {
            hp(list, jCurrentTimeMillis, obj, i2);
        } else {
            com.byazt.giz.hp.hp(list, str);
            hp(list, jCurrentTimeMillis, i2, obj);
        }
    }

    private void hp(final List<com.byazt.jw.l> list, final long j2, final int i2, final Object obj) {
        com.byazt.jw.j jVarJ = this.f21447w.j();
        if (jVarJ != null) {
            Executor executorQ = jVarJ.q();
            if (list.get(0).w() == 1) {
                executorQ = jVarJ.s();
            }
            if (executorQ == null) {
                return;
            }
            this.f21446l.incrementAndGet();
            executorQ.execute(new com.byazt.ykv.l("csj_log_upload") { // from class: com.byazt.jds.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.l(list, j2, i2, obj);
                }
            });
        }
    }

    private void hp(l lVar, List<com.byazt.jw.l> list) {
        if (lVar == null || !lVar.hp) {
            return;
        }
        List<com.byazt.jw.jx> listHp = com.byazt.mdk.hp.hp();
        if (list == null || listHp == null || listHp.size() == 0) {
            return;
        }
        for (com.byazt.jw.l lVar2 : list) {
            if (lVar2.w() == 1) {
                String strHp = com.byazt.giz.hp.hp(lVar2, this.f21447w);
                String strA = com.byazt.giz.hp.a(lVar2, this.f21447w);
                for (com.byazt.jw.jx jxVar : listHp) {
                    if (jxVar != null) {
                        jxVar.hp(strHp, strA);
                    }
                }
            }
        }
    }

    private void hp(List<com.byazt.jw.l> list, final long j2, final Object obj, final int i2) {
        a aVar;
        this.f21446l.incrementAndGet();
        com.byazt.giz.l.hp(com.byazt.fxy.l.hp.lv(), 1, this.f21447w);
        try {
            aVar = this;
        } catch (Exception e2) {
            e = e2;
            aVar = this;
        }
        try {
            this.f21447w.e().hp(list, new e() { // from class: com.byazt.jds.a.2
                @Override // com.byazt.jw.e
                public void hp(List<hp> list2) {
                    try {
                        a.this.f21446l.decrementAndGet();
                        if (list2 == null || list2.size() == 0) {
                            return;
                        }
                        int size = list2.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            hp hpVar = list2.get(i3);
                            if (hpVar != null) {
                                a.this.hp(hpVar.hp(), hpVar.l(), j2, obj, i2);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception e3) {
            e = e3;
            com.byazt.giz.jx.hp("_error", "outer exception：" + e.getMessage(), aVar.f21447w);
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.jx(), 1, aVar.f21447w);
            aVar.f21446l.decrementAndGet();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(l lVar, List<com.byazt.jw.l> list, long j2, Object obj, int i2) {
        if (i2 == 78) {
            return;
        }
        if (lVar != null) {
            int i3 = lVar.f21465l;
            if (lVar.f21466w) {
                i3 = -1;
            } else if (i3 < 0) {
                i3 = -2;
            }
            if (i3 == 510 || i3 == 511) {
                i3 = -2;
            }
            int i4 = (lVar.hp || ((i3 < 500 || i3 >= 509) && i3 <= 513)) ? i3 : -2;
            if (list != null) {
                list.size();
                this.f21446l.get();
            }
            hp(i4, list, j2, obj, i2, lVar);
            return;
        }
        hp(-1, list, j2, obj, i2, (l) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0070 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:7:0x000b, B:9:0x0029, B:37:0x00c5, B:38:0x00c8, B:22:0x0044, B:24:0x004c, B:26:0x0059, B:28:0x0066, B:29:0x0070, B:31:0x0078, B:32:0x0087, B:34:0x0093, B:35:0x00ba, B:40:0x00ca), top: B:44:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void hp(int r11, java.util.List<com.byazt.jw.l> r12, long r13, java.lang.Object r15, int r16, com.byazt.jds.l r17) {
        /*
            r10 = this;
            r0 = r16
            com.byazt.jds.jx r8 = r10.jx
            monitor-enter(r15)
            if (r12 == 0) goto Lca
            if (r8 != 0) goto Lb
            goto Lca
        Lb:
            android.os.Handler r9 = r8.l()     // Catch: java.lang.Throwable -> L2d
            com.byazt.cmm.w r3 = r8.hp()     // Catch: java.lang.Throwable -> L2d
            com.byazt.cmm.l r7 = r3.hp(r11, r12, r0)     // Catch: java.lang.Throwable -> L2d
            com.byazt.jw.w r5 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            r1 = r11
            r2 = r12
            r3 = r13
            r6 = r17
            com.byazt.giz.hp.hp(r1, r2, r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L2d
            com.byazt.jw.w r3 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            com.byazt.jw.j r3 = r3.j()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L30
            r3.jl()     // Catch: java.lang.Throwable -> L2d
            goto L30
        L2d:
            r0 = move-exception
            goto Lcc
        L30:
            r4 = -2
            r5 = 72
            if (r11 == r4) goto L91
            r4 = -1
            if (r11 == r4) goto L70
            if (r11 == 0) goto L91
            r3 = 200(0xc8, float:2.8E-43)
            if (r11 == r3) goto L70
            r3 = 509(0x1fd, float:7.13E-43)
            if (r11 == r3) goto L44
            goto Lc3
        L44:
            com.byazt.jw.w r1 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            boolean r1 = com.byazt.giz.hp.l(r12, r1)     // Catch: java.lang.Throwable -> L2d
            if (r1 == 0) goto Lc3
            com.byazt.fxy.l r1 = r10.f21444a     // Catch: java.lang.Throwable -> L2d
            r2 = 1
            r1.hp(r2)     // Catch: java.lang.Throwable -> L2d
            r1 = 3
            boolean r2 = r9.hasMessages(r1)     // Catch: java.lang.Throwable -> L2d
            if (r2 != 0) goto Lc3
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2d
            long r6 = r10.f21445j     // Catch: java.lang.Throwable -> L2d
            long r2 = r2 - r6
            r6 = 15000(0x3a98, double:7.411E-320)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 < 0) goto Lc3
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2d
            r10.f21445j = r2     // Catch: java.lang.Throwable -> L2d
            r10.hp(r1, r6, r9)     // Catch: java.lang.Throwable -> L2d
            goto Lc3
        L70:
            com.byazt.fxy.l r1 = r10.f21444a     // Catch: java.lang.Throwable -> L2d
            boolean r1 = r1.jx()     // Catch: java.lang.Throwable -> L2d
            if (r1 == 0) goto L87
            java.lang.String r1 = "_flush"
            java.lang.String r2 = "send reset error"
            com.byazt.jw.w r3 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            com.byazt.giz.jx.hp(r1, r2, r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r1 = "handle_result"
            r8.hp(r5, r1)     // Catch: java.lang.Throwable -> L2d
            goto Lc3
        L87:
            com.byazt.fxy.l r1 = r10.f21444a     // Catch: java.lang.Throwable -> L2d
            r3 = 0
            r1.hp(r3)     // Catch: java.lang.Throwable -> L2d
            r10.hp(r9, r12, r8)     // Catch: java.lang.Throwable -> L2d
            goto Lc3
        L91:
            if (r3 == 0) goto Lba
            java.lang.String r4 = "_error"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2d
            java.lang.String r7 = "net is available:"
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L2d
            com.byazt.jw.w r7 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            android.content.Context r7 = r7.getContext()     // Catch: java.lang.Throwable -> L2d
            boolean r3 = r3.hp(r7)     // Catch: java.lang.Throwable -> L2d
            r6.append(r3)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r3 = " code:"
            r6.append(r3)     // Catch: java.lang.Throwable -> L2d
            r6.append(r11)     // Catch: java.lang.Throwable -> L2d
            java.lang.String r1 = r6.toString()     // Catch: java.lang.Throwable -> L2d
            com.byazt.jw.w r3 = r10.f21447w     // Catch: java.lang.Throwable -> L2d
            com.byazt.giz.jx.hp(r4, r1, r3)     // Catch: java.lang.Throwable -> L2d
        Lba:
            com.byazt.fxy.l r1 = r10.f21444a     // Catch: java.lang.Throwable -> L2d
            r3 = 2
            r1.hp(r3)     // Catch: java.lang.Throwable -> L2d
            r10.hp(r9, r12, r8)     // Catch: java.lang.Throwable -> L2d
        Lc3:
            if (r0 != r5) goto Lc8
            r15.notify()     // Catch: java.lang.Throwable -> L2d
        Lc8:
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L2d
            return
        Lca:
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L2d
            return
        Lcc:
            monitor-exit(r15)     // Catch: java.lang.Throwable -> L2d
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.jds.a.hp(int, java.util.List, long, java.lang.Object, int, com.byazt.jds.l):void");
    }

    private void hp(Handler handler, List<com.byazt.jw.l> list, jx jxVar) {
        boolean zJ = jxVar.j();
        boolean zL = com.byazt.giz.hp.l(list, this.f21447w);
        if (zJ && zL) {
            if (handler.hasMessages(3)) {
                handler.removeMessages(3);
            }
            this.hp.set(0);
            this.f21445j = 0L;
            com.byazt.giz.jx.hp("_flush", "send reset busy", this.f21447w);
            com.byazt.giz.l.hp(com.byazt.fxy.l.hp.j(), 1, this.f21447w);
            jxVar.hp(72, "handle_result");
        }
    }

    public void hp(int i2, long j2, Handler handler) {
        if (handler == null) {
            com.byazt.giz.jx.hp("_error", "mHandler == null", this.f21447w);
            return;
        }
        if (i2 != 3) {
            com.byazt.giz.jx.hp("_error", "sendBusyMsg error state", this.f21447w);
            return;
        }
        if (handler.hasMessages(i2)) {
            handler.removeMessages(i2);
        }
        long j3 = (((r1 - 1) % 4) + 1) * j2;
        com.byazt.giz.jx.hp("_error", "sendBusyMsg:" + i2 + "  retryCount:" + this.hp.incrementAndGet() + " delayTime:" + (j3 / 1000), this.f21447w);
        handler.sendEmptyMessageDelayed(i2, j3);
    }
}
