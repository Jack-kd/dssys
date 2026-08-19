package com.byazt.tfn;

import android.text.TextUtils;
import com.byazt.zg.d;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@com.byazt.kj.hp(hp = {0, 1, 842, 45})
/* loaded from: classes3.dex */
public class e extends l {

    /* renamed from: a, reason: collision with root package name */
    public final List<com.byazt.tgw.e> f25766a;
    public final HashSet<String> eb = new HashSet<>();

    /* renamed from: j, reason: collision with root package name */
    public final com.byazt.ktq.l f25767j;

    /* renamed from: w, reason: collision with root package name */
    public final com.byazt.tgw.l f25768w;

    public e(com.byazt.ktq.l lVar, com.byazt.tgw.l lVar2, List<com.byazt.tgw.e> list) {
        this.f25767j = lVar;
        this.f25768w = lVar2;
        this.f25766a = list;
    }

    private com.byazt.tgw.e a() {
        List<com.byazt.tgw.e> list = this.f25766a;
        if (list == null) {
            return null;
        }
        for (com.byazt.tgw.e eVar : list) {
            if (eVar != null) {
                if (!this.eb.contains(eVar.vv())) {
                    return eVar;
                }
            }
        }
        return null;
    }

    @Override // com.byazt.tfn.l
    public boolean l(com.byazt.tgw.e eVar, int i2) {
        com.byazt.tgw.e eVarA;
        if (i2 == 1) {
            com.byazt.tgw.e eVarA2 = a();
            if (eVarA2 != null && eVar != null && TextUtils.equals(eVarA2.vv(), eVar.vv())) {
                jx();
                return true;
            }
        } else if (i2 == 2) {
            if (eVar != null) {
                this.eb.add(eVar.vv());
                CopyOnWriteArrayList<com.byazt.rt.jx> copyOnWriteArrayListJl = this.f25767j.jl();
                com.byazt.rt.jx jxVar = (copyOnWriteArrayListJl == null || copyOnWriteArrayListJl.size() <= 0) ? null : copyOnWriteArrayListJl.get(0);
                if (jxVar != null && (eVarA = a()) != null && TextUtils.equals(eVarA.vv(), jxVar.getAdNetworkSlotId())) {
                    jx();
                    return true;
                }
            }
            if (this.f25780l.s()) {
                com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25768w) + "全部广告完成响应...");
                if (d.hp(this.f25767j.jl())) {
                    hp(new com.byazt.dq.hp(20005, com.byazt.dq.hp.hp(20005)));
                }
                return true;
            }
        } else if (this.f25780l.w()) {
            com.byazt.aw.l.j(MediationConstant.TAG, com.byazt.aw.j.hp(this.f25768w) + "触发总超时或全部代码位响应结束.....totalTimeout：" + this.f25780l.w() + "  allWtfFinish:" + this.f25780l.s());
            if (d.hp(this.f25767j.jl())) {
                hp(new com.byazt.dq.hp(10003, com.byazt.dq.hp.hp(10003)));
            } else {
                jx();
            }
            return true;
        }
        return false;
    }
}
