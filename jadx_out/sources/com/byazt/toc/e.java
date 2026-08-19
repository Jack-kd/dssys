package com.byazt.toc;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 225, 45})
/* loaded from: classes3.dex */
public abstract class e extends l {
    public boolean vv;
    public boolean xs;

    public interface hp {
        void hp();
    }

    public e(Context context) {
        super(context);
        this.xs = false;
        this.vv = false;
    }

    private boolean j(com.byazt.rt.jx jxVar) {
        return !jxVar.isCustomAd() || jxVar.getIsRefresh() == 1;
    }

    private boolean l(com.byazt.rt.jx jxVar, Activity activity, Object obj, String str) {
        if (!jxVar.isReady(this.f25956w) || jxVar.isHasShown()) {
            return false;
        }
        if (!n()) {
            com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(this.f25956w, jxVar.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",isReady()：" + jxVar.isReady(this.f25956w));
            hp(jxVar, activity, obj, str);
            return true;
        }
        if (!j(jxVar) || com.byazt.bbe.hp.hp(jxVar.getAdNetWorkName(), jxVar.getAdType(), jxVar.getSubAdType())) {
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(this.f25956w, jxVar.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",isReady()：" + jxVar.isReady(this.f25956w));
        hp(jxVar, activity, obj, str);
        return true;
    }

    public boolean d() {
        List<com.byazt.tgw.e> listL;
        try {
            listL = l();
        } catch (Throwable unused) {
            listL = null;
        }
        return com.byazt.zg.jl.hp(this.jx.gu(), this.jx.k(), this.jx.jl(), this.f25948a, this.jl, this.f25956w, this.f25948a.w(), listL);
    }

    public boolean di() {
        return this.xs;
    }

    public void hp(boolean z2) {
        this.xs = z2;
    }

    public void jx(final com.byazt.rt.jx jxVar) {
        if (this.f25948a.vq()) {
            return;
        }
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.e.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.rt.jx jxVar2 = jxVar;
                if (jxVar2 == null || !jxVar2.adnHasAdVideoCachedApi() || !jxVar.isCacheSuccess() || (e.this.f25950j instanceof com.byazt.hb.l)) {
                    return;
                }
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(e.this.f25956w, jxVar.getAdNetworkSlotId()) + "在show时触发了预加载【" + jxVar.getAdNetWorkName() + "】, loadSort: " + jxVar.getLoadSort() + ", showSort: " + jxVar.getShowSort());
                e.this.vv = true;
                com.byazt.gp.j jVarHp = com.byazt.gp.j.hp();
                Context context = e.this.f25954s.get();
                e eVar = e.this;
                jVarHp.l(context, eVar.f25956w, eVar.f25948a.w());
            }
        });
    }

    public boolean n() {
        return false;
    }

    public void o() {
        com.byazt.rt.jx jxVar;
        if (this.f25948a.vq() || (jxVar = this.f25950j) == null || jxVar.getAdNetworkPlatformId() == 4) {
            return;
        }
        com.byazt.gp.j.hp().hp(this.f25954s.get(), this.f25956w, this.f25948a.w());
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001f A[PHI: r2
      0x001f: PHI (r2v5 boolean) = (r2v2 boolean), (r2v0 boolean) binds: [B:31:0x006c, B:7:0x001c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(com.byazt.ktq.l r14) {
        /*
            r13 = this;
            com.byazt.rt.jx r0 = r13.f25950j
            int r0 = r0.getAdType()
            r1 = 8
            r2 = 1
            r3 = 10
            if (r0 == r3) goto L21
            com.byazt.rt.jx r0 = r13.f25950j
            int r0 = r0.getAdType()
            if (r0 == r1) goto L21
            com.byazt.rt.jx r0 = r13.f25950j
            int r0 = r0.getAdType()
            r4 = 7
            if (r0 != r4) goto L1f
            goto L21
        L1f:
            r9 = r2
            goto L6f
        L21:
            com.byazt.rt.jx r0 = r13.f25950j
            boolean r0 = r0.adnHasAdVideoCachedApi()
            r4 = 0
            if (r0 == 0) goto L46
            com.byazt.rt.jx r0 = r13.f25950j
            boolean r0 = r0.isCacheSuccess()
            if (r0 == 0) goto L46
            com.byazt.gp.j r0 = com.byazt.gp.j.hp()
            java.lang.String r5 = r13.f25956w
            com.byazt.iqm.l r6 = r13.f25948a
            int r6 = r6.w()
            boolean r0 = r0.jx(r5, r6)
            if (r0 == 0) goto L46
            r0 = r4
            goto L47
        L46:
            r0 = r2
        L47:
            com.byazt.iqm.l r5 = r13.f25948a
            if (r5 == 0) goto L64
            int r5 = r5.ec()
            if (r5 == r3) goto L59
            com.byazt.iqm.l r3 = r13.f25948a
            int r3 = r3.ec()
            if (r3 != r1) goto L64
        L59:
            com.byazt.tgw.l r1 = r13.eb
            if (r1 == 0) goto L64
            int r1 = r1.u()
            if (r1 == 0) goto L64
            goto L65
        L64:
            r2 = r0
        L65:
            com.byazt.rt.jx r0 = r13.f25950j
            int r0 = r0.getAdNetworkPlatformId()
            r1 = 4
            if (r0 != r1) goto L1f
            r9 = r4
        L6f:
            com.byazt.rt.jx r0 = r13.f25950j
            boolean r0 = r0.canAdReuse()
            if (r0 == 0) goto Lb9
            com.byazt.xob.hp r0 = com.byazt.xob.hp.hp()
            java.lang.String r1 = r13.f25956w
            com.byazt.rt.jx r2 = r13.f25950j
            java.lang.String r2 = r2.getAdNetworkSlotId()
            com.byazt.iqm.l r3 = r13.f25948a
            int r3 = r3.w()
            boolean r0 = r0.j(r1, r2, r3)
            if (r0 == 0) goto Lb9
            com.byazt.xob.hp r5 = com.byazt.xob.hp.hp()
            com.byazt.rt.jx r0 = r13.f25950j
            java.lang.String r6 = r0.getAdNetworkSlotId()
            com.byazt.iqm.l r7 = r13.f25948a
            r0 = 0
            if (r14 == 0) goto La4
            java.util.Map r1 = r14.dy()
            r8 = r1
            goto La5
        La4:
            r8 = r0
        La5:
            if (r14 == 0) goto Lab
            com.byazt.bki.gu r0 = r14.lv()
        Lab:
            r10 = r0
            java.lang.ref.SoftReference<android.content.Context> r14 = r13.f25954s
            java.lang.Object r14 = r14.get()
            r12 = r14
            android.content.Context r12 = (android.content.Context) r12
            r11 = 0
            r5.hp(r6, r7, r8, r9, r10, r11, r12)
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.e.hp(com.byazt.ktq.l):void");
    }

    @Override // com.byazt.toc.l
    public void jx() {
        super.jx();
    }

    private boolean jx(com.byazt.rt.jx jxVar, Activity activity, Object obj, String str) {
        if (!jxVar.isReady(this.f25956w) || jxVar.isHasShown()) {
            return false;
        }
        if (n()) {
            if (j(jxVar) && !com.byazt.bbe.hp.hp(jxVar.getAdNetWorkName(), jxVar.getAdType(), jxVar.getSubAdType())) {
                com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(this.f25956w, jxVar.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",isReady()：" + jxVar.isReady(this.f25956w));
                l(jxVar);
                hp(jxVar, activity, obj, str);
                return true;
            }
            com.byazt.aw.l.l(MediationConstant.TAG, "--==--- cache 插全屏轮播中，不能轮播的自定义adn跳过");
            return false;
        }
        com.byazt.aw.l.hp(MediationConstant.TAG, com.byazt.aw.j.l(this.f25956w, jxVar.getAdNetworkSlotId()) + "弱网情况下没有缓存好的广告,那么直接根据优先级展示，广告类型：" + com.byazt.rt.hp.hp(jxVar.getAdNetworkPlatformId()) + ",isReady()：" + jxVar.isReady(this.f25956w));
        l(jxVar);
        hp(jxVar, activity, obj, str);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void hp(android.app.Activity r11, java.lang.Object r12, java.lang.String r13, com.byazt.toc.e.hp r14) {
        /*
            r10 = this;
            boolean r0 = r10.n()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L1f
            com.byazt.iqm.l r0 = r10.f25948a
            com.byazt.lsx.a.hp(r0)
            boolean r0 = r10.jl
            if (r0 == 0) goto L1f
            com.byazt.iqm.l r11 = r10.f25948a
            com.byazt.lsx.a.hp(r2, r11, r1)
            if (r14 == 0) goto L1c
            r14.hp()
            return
        L1c:
            r3 = r10
            goto Lb0
        L1f:
            java.lang.String r0 = r10.f25956w
            int r0 = com.byazt.toc.l.l(r0)
            if (r0 == 0) goto L32
            com.byazt.iqm.l r11 = r10.f25948a
            com.byazt.lsx.a.hp(r2, r11, r0)
            if (r14 == 0) goto L1c
            r14.hp()
            return
        L32:
            boolean r6 = r10.zy()
            com.byazt.ktq.l r0 = r10.jx
            r3 = 1
            java.util.List r5 = r0.hp(r3)
            com.byazt.ktq.l r0 = r10.jx
            r0.hp(r5)
            java.util.List r2 = r10.l()     // Catch: java.lang.Throwable -> L46
        L46:
            r4 = r2
            if (r4 == 0) goto L5a
            int r0 = r4.size()
            if (r0 <= 0) goto L5a
            r3 = r10
            r7 = r11
            r8 = r12
            r9 = r13
            boolean r11 = r3.hp(r4, r5, r6, r7, r8, r9)
            if (r11 == 0) goto L5e
            goto Lb0
        L5a:
            r3 = r10
            r7 = r11
            r8 = r12
            r9 = r13
        L5e:
            if (r5 == 0) goto La6
            int r11 = r5.size()
            if (r11 <= 0) goto La6
            java.util.Iterator r11 = r5.iterator()
        L6a:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto L87
            java.lang.Object r12 = r11.next()
            com.byazt.rt.jx r12 = (com.byazt.rt.jx) r12
            if (r12 == 0) goto L6a
            if (r6 == 0) goto L80
            boolean r13 = r12.isCacheSuccess()
            if (r13 == 0) goto L6a
        L80:
            boolean r12 = r10.l(r12, r7, r8, r9)
            if (r12 == 0) goto L6a
            goto Lb0
        L87:
            if (r6 == 0) goto La6
            com.byazt.rt.jx r11 = r3.f25950j
            if (r11 != 0) goto La6
            java.util.Iterator r11 = r5.iterator()
        L91:
            boolean r12 = r11.hasNext()
            if (r12 == 0) goto La6
            java.lang.Object r12 = r11.next()
            com.byazt.rt.jx r12 = (com.byazt.rt.jx) r12
            if (r12 == 0) goto L91
            boolean r12 = r10.l(r12, r7, r8, r9)
            if (r12 == 0) goto L91
            goto Lb0
        La6:
            com.byazt.iqm.l r11 = r3.f25948a
            com.byazt.lsx.a.hp(r5, r11, r1)
            if (r14 == 0) goto Lb0
            r14.hp()
        Lb0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.toc.e.hp(android.app.Activity, java.lang.Object, java.lang.String, com.byazt.toc.e$hp):void");
    }

    public void hp(com.byazt.rt.jx jxVar, final Activity activity, final Object obj, final String str) {
        this.f25950j = jxVar;
        com.byazt.aw.w.jx(new Runnable() { // from class: com.byazt.toc.e.2
            @Override // java.lang.Runnable
            public void run() throws NumberFormatException {
                e eVar = e.this;
                com.byazt.rt.jx jxVar2 = eVar.f25950j;
                if (jxVar2 != null) {
                    com.byazt.voc.l lVar = eVar.zy;
                    if (lVar != null) {
                        jxVar2.setTTAdAppDownloadListener(lVar);
                    }
                    e eVar2 = e.this;
                    com.byazt.gu.l lVar2 = eVar2.f25951k;
                    if (lVar2 != null) {
                        eVar2.f25950j.setAdInteractionListener(lVar2);
                    }
                    e eVar3 = e.this;
                    eVar3.jx.j(eVar3.f25950j);
                    e.this.f25950j.setHasShown(true);
                    e eVar4 = e.this;
                    eVar4.f25950j.setTTAdatperCallback(eVar4.f25953q);
                    if (e.this.f25950j.canAdReuse()) {
                        com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
                        e eVar5 = e.this;
                        if (hpVarHp.j(eVar5.f25956w, eVar5.f25950j.getAdNetworkSlotId(), e.this.vv())) {
                            e eVar6 = e.this;
                            com.byazt.rt.jx jxVar3 = eVar6.f25950j;
                            com.byazt.mey.a.hp(jxVar3, eVar6.f25956w, jxVar3.getAdNetworkSlotId());
                        }
                    }
                    List<com.byazt.rt.jx> listHp = e.this.jx.hp(true);
                    com.byazt.xob.hp hpVarHp2 = com.byazt.xob.hp.hp();
                    e eVar7 = e.this;
                    String str2 = eVar7.f25956w;
                    com.byazt.iqm.l lVar3 = eVar7.f25948a;
                    hpVarHp2.hp(listHp, str2, lVar3, lVar3.w(), e.this.f25950j);
                    StringBuilder sb = new StringBuilder();
                    sb.append(com.byazt.aw.j.hp(e.this.f25956w, "show"));
                    sb.append("展示的广告类型：");
                    sb.append(com.byazt.rt.hp.hp(e.this.f25950j.getAdNetworkPlatformId()));
                    sb.append(",slotId：");
                    sb.append(e.this.f25950j.getAdNetworkSlotId());
                    sb.append(",slotType:");
                    sb.append(e.this.f25950j.getAdNetworkSlotType());
                    sb.append(",isReady()：");
                    e eVar8 = e.this;
                    sb.append(eVar8.f25950j.isReady(eVar8.f25956w));
                    sb.append("，是否为缓存广告:");
                    sb.append(e.this.f25950j.isCacheSuccess());
                    com.byazt.aw.l.hp(MediationConstant.TAG, sb.toString());
                    e.this.f25950j.showAd(activity, obj, str);
                    com.byazt.lyn.zy.hp().l(e.this.f25956w);
                    com.byazt.lyn.jl jlVarHp = com.byazt.lyn.jl.hp();
                    e eVar9 = e.this;
                    jlVarHp.l(eVar9.f25956w, eVar9.f25950j.getAdNetworkSlotId());
                    e.this.jl = true;
                    if (e.this.f25950j != null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(e.this.f25950j);
                        if (e.this.f25948a.ec() == 7 || e.this.f25948a.ec() == 10) {
                            com.byazt.ano.hp hpVarHp3 = com.byazt.ano.hp.hp();
                            com.byazt.iqm.l lVar4 = e.this.f25948a;
                            hpVarHp3.hp(lVar4, com.byazt.ano.hp.hp(lVar4, arrayList, listHp));
                        }
                        e.this.hp(arrayList);
                    }
                    e eVar10 = e.this;
                    com.byazt.lsx.a.hp(eVar10.f25950j, eVar10.f25948a, false, eVar10.n() ? 1 : 0);
                }
            }
        });
    }

    private boolean hp(List<com.byazt.tgw.e> list, List<com.byazt.rt.jx> list2, boolean z2, Activity activity, Object obj, String str) {
        com.byazt.rt.jx jxVar;
        com.byazt.rt.jx jxVar2;
        HashMap<String, com.byazt.rt.jx> mapL = l(list2);
        for (com.byazt.tgw.e eVar : list) {
            if (eVar != null) {
                String strVv = eVar.vv();
                com.byazt.rt.jx jxVar3 = mapL.get(strVv);
                if (jxVar3 != null) {
                    if (z2) {
                        if (jxVar3.isCacheSuccess() && l(jxVar3, activity, obj, str)) {
                            return true;
                        }
                    } else if (l(jxVar3, activity, obj, str)) {
                        return true;
                    }
                }
                if (eVar.sz() && com.byazt.xob.hp.hp().j(this.f25956w, strVv, this.f25948a.w()) && com.byazt.xob.hp.hp().hp(strVv, this.f25948a, false) == 3) {
                    com.byazt.xob.hp hpVarHp = com.byazt.xob.hp.hp();
                    com.byazt.iqm.l lVar = this.f25948a;
                    List<com.byazt.gp.eb> listHp = hpVarHp.hp(strVv, lVar, lVar.w());
                    if (listHp != null && listHp.size() > 0 && (jxVar2 = listHp.get(0).hp) != null) {
                        if (z2) {
                            if (jxVar2.isCacheSuccess() && jx(jxVar2, activity, obj, str)) {
                                return true;
                            }
                        } else if (jx(jxVar2, activity, obj, str)) {
                            return true;
                        }
                    }
                }
            }
        }
        if (z2 && this.f25950j == null) {
            for (com.byazt.tgw.e eVar2 : list) {
                if (eVar2 != null) {
                    String strVv2 = eVar2.vv();
                    com.byazt.rt.jx jxVar4 = mapL.get(strVv2);
                    if (jxVar4 != null && l(jxVar4, activity, obj, str)) {
                        return true;
                    }
                    if (eVar2.sz() && com.byazt.xob.hp.hp().j(this.f25956w, strVv2, this.f25948a.w()) && com.byazt.xob.hp.hp().hp(strVv2, this.f25948a, false) == 3) {
                        com.byazt.xob.hp hpVarHp2 = com.byazt.xob.hp.hp();
                        com.byazt.iqm.l lVar2 = this.f25948a;
                        List<com.byazt.gp.eb> listHp2 = hpVarHp2.hp(strVv2, lVar2, lVar2.w());
                        if (listHp2 != null && listHp2.size() > 0 && (jxVar = listHp2.get(0).hp) != null && jx(jxVar, activity, obj, str)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }
}
