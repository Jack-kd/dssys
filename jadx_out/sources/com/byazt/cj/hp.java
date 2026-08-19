package com.byazt.cj;

import com.byazt.dnb.jl;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.ig.l;
import com.byazt.jdb.j;
import com.byazt.qk.NativeExpressView;
import com.byazt.qk.o;
import com.byazt.tw.a;
import com.byazt.xci.df;
import com.byazt.xci.hq;
import com.byazt.xci.mp;
import com.byazt.zn.r;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 407, 28})
/* loaded from: classes2.dex */
public class hp extends l {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18887a;

    public hp(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, String str, boolean z2, boolean z3) {
        super(tTBaseVideoActivity, mpVar, str, z2, z3);
    }

    @Override // com.byazt.ig.l
    public a e() {
        a aVarHp = df.hp(1, this.f21069l);
        aVarHp.setCid(this.f21069l.j());
        aVarHp.setWidth(100);
        aVarHp.setHeight(100);
        aVarHp.setLogExtra(this.f21069l.w_());
        aVarHp.setQuiet(this.f21067j);
        if (jl.hp(this.f21069l)) {
            aVarHp.setAudio(true);
        }
        return aVarHp;
    }

    @Override // com.byazt.ig.l
    public void hp(NativeExpressView nativeExpressView) {
        Map<String, Object> mapHp = this.hp.hp(this.f21069l);
        if (nativeExpressView.getDynamicShowType() == 0) {
            o.hp(mapHp, this.f21069l, nativeExpressView);
        } else {
            mapHp.put("dynamic_show_type", Integer.valueOf(nativeExpressView.getDynamicShowType()));
            byte showDLFactorsEventParams = nativeExpressView.getShowDLFactorsEventParams();
            if (showDLFactorsEventParams != -1) {
                mapHp.put("biz_type", Byte.valueOf(showDLFactorsEventParams));
            }
        }
        hq hqVarWg = this.f21069l.wg();
        Double dM = null;
        if (hqVarWg != null) {
            mapHp.put("refresh_num", Integer.valueOf(hqVarWg.jx()));
            if (this.f18887a) {
                dM = this.hp.m();
            }
        }
        j.hp(this.f21069l, this.jx, mapHp, dM);
        nativeExpressView.getAdShowTime().hp(1.0f, 11);
        com.byazt.cqt.hp.hp().j();
        r.hp(this.f21069l.nu());
    }

    public void jx(boolean z2) {
        this.f18887a = z2;
    }
}
