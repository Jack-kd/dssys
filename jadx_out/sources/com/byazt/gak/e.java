package com.byazt.gak;

import android.content.Context;
import com.byazt.jt.l;
import com.byazt.jz.hq;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 45})
/* loaded from: classes2.dex */
public class e extends l {
    public com.byazt.xl.l jx;

    /* renamed from: l, reason: collision with root package name */
    public com.byazt.iqm.l f20302l;

    public e(com.byazt.ewl.l lVar) {
        super(lVar);
    }

    private void hp(hq hqVar, l.hp hpVar) {
        if (this.f20302l.k() > 0.0f) {
            hpVar.hp(this.f20302l.zy()).l(this.f20302l.k());
        } else {
            hpVar.hp(this.f20302l.zy()).l(0.0f);
        }
        new q().hp(this.jx.hp(), hqVar, hpVar.hp(), this);
    }

    private void l(hq hqVar, l.hp hpVar) {
        com.byazt.aw.l.l(MediationConstant.TAG, "PangleNativeLoader_loadNativeAd_renderControl:" + this.f20302l.v());
        hpVar.jx(this.f20302l.v());
        new s().hp(this.jx.hp(), hqVar, hpVar.hp(), this);
    }

    @Override // com.byazt.vne.l
    public void startLoad(Context context, com.byazt.xl.l lVar, com.byazt.iqm.l lVar2, Map<String, Object> map) {
        hq pluginCSJLoader;
        this.f20302l = lVar2;
        this.jx = lVar;
        if (lVar2 == null) {
            notifyLoadFail(new com.byazt.dq.hp("load ad fail adSlot is null"));
            return;
        }
        if (map == null || (pluginCSJLoader = getPluginCSJLoader(context.getApplicationContext())) == null) {
            return;
        }
        l.hp hpVarHp = com.byazt.fr.l.hp(this.f20302l, this.jx, false);
        int iNs = this.f20302l.ns();
        int iCx = this.f20302l.cx();
        if (iNs > 0 && iCx > 0) {
            hpVarHp.hp(iNs).l(iCx);
        }
        Object obj = map.get("tt_ad_origin_type");
        if (obj != null) {
            int iIntValue = ((Integer) obj).intValue();
            if (iIntValue == 1) {
                hp(pluginCSJLoader, hpVarHp);
            } else if (iIntValue == 2) {
                l(pluginCSJLoader, hpVarHp);
            } else if (iIntValue == 3) {
                notifyLoadFail(new com.byazt.dq.hp("渲染类型错误"));
            }
        }
    }
}
