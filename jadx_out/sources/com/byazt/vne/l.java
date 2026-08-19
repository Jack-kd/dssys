package com.byazt.vne;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.aw.w;
import com.byazt.jz.s;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1443, 34})
/* loaded from: classes3.dex */
public abstract class l extends com.byazt.hde.j implements com.byazt.ewl.hp, com.byazt.ewl.l {
    public com.byazt.ewl.l hp;

    /* renamed from: l, reason: collision with root package name */
    public boolean f26603l = false;
    public boolean jx = false;

    public l(com.byazt.ewl.l lVar) {
        this.hp = lVar;
    }

    @Override // com.byazt.ewl.hp
    public final void adnStartLoad(final Context context, final com.byazt.xl.l lVar, final com.byazt.iqm.l lVar2, final Map<String, Object> map) {
        if (lVar == null || !(TextUtils.equals(MediationConstant.ADN_MINTEGRAL, lVar.zy()) || TextUtils.equals("baidu", lVar.zy()))) {
            hp(context, lVar, lVar2, map);
        } else {
            w.jx(new Runnable() { // from class: com.byazt.vne.l.1
                @Override // java.lang.Runnable
                public void run() {
                    l.this.hp(context, lVar, lVar2, map);
                }
            });
        }
    }

    @Override // com.byazt.hde.j
    public <T> T applyFunction(int i2, PluginValueSet pluginValueSet, Class<T> cls) {
        return null;
    }

    public String getBiddingToken(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2) {
        return null;
    }

    public boolean hasNotifyFail() {
        return this.jx;
    }

    public boolean hasNotifySuccess() {
        return this.f26603l;
    }

    @Override // com.byazt.ewl.l
    public void nativeDislikeClick(com.byazt.rt.jx jxVar, String str) {
        com.byazt.ewl.l lVar = this.hp;
        if (lVar != null) {
            lVar.nativeDislikeClick(jxVar, str);
        }
    }

    @Override // com.byazt.ewl.l
    public void notifyLoadFail(com.byazt.dq.hp hpVar) {
        this.jx = true;
        if (this.f26603l) {
            return;
        }
        this.f26603l = true;
        com.byazt.ewl.l lVar = this.hp;
        if (lVar != null) {
            lVar.notifyLoadFail(hpVar);
        }
    }

    public void notifyLoadSuccess(com.byazt.rt.jx jxVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(jxVar);
        notifyLoadSuccess(arrayList);
    }

    public void notifyVideoCache(com.byazt.rt.jx jxVar, com.byazt.dq.hp hpVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(jxVar);
        notifyVideoCache(arrayList, hpVar);
    }

    public abstract void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        this.f26603l = false;
        this.jx = false;
        if (s.u().rz()) {
            startLoad(context, lVar, lVar2, map);
            hp(lVar);
            return;
        }
        try {
            startLoad(context, lVar, lVar2, map);
            hp(lVar);
        } catch (Throwable th) {
            notifyLoadFail(new com.byazt.dq.hp(com.byazt.bcj.l.hp(th)));
        }
    }

    public void notifyLoadSuccess(List<com.byazt.rt.jx> list) {
        if (this.f26603l) {
            return;
        }
        this.f26603l = true;
        com.byazt.ewl.l lVar = this.hp;
        if (lVar != null) {
            lVar.notifyLoadSuccess(list);
        }
    }

    @Override // com.byazt.ewl.l
    public void notifyVideoCache(List<com.byazt.rt.jx> list, com.byazt.dq.hp hpVar) {
        com.byazt.ewl.l lVar;
        if (this.jx || (lVar = this.hp) == null) {
            return;
        }
        lVar.notifyVideoCache(list, hpVar);
    }

    private void hp(com.byazt.xl.l lVar) {
        if (lVar != null) {
            com.byazt.wgi.jx.l(lVar.zy(), lVar.l(), lVar.jl());
        }
    }
}
