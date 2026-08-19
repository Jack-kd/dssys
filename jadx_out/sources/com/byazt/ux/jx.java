package com.byazt.ux;

import android.content.Context;
import com.byazt.xci.mp;
import java.lang.ref.WeakReference;

@com.byazt.kj.hp(hp = {0, 1, 115, 30})
/* loaded from: classes3.dex */
public class jx extends l {
    public jx(Context context, mp mpVar, com.byazt.jt.l lVar) {
        super(context, mpVar, lVar);
    }

    @Override // com.byazt.qk.l
    public com.byazt.nc.hp getVideoModel() {
        WeakReference<BannerExpressBackupView> weakReference = this.eb;
        if (weakReference != null && weakReference.get() != null) {
            return this.eb.get().getVideoModel();
        }
        hp hpVar = ((l) this).hp;
        if (hpVar != null) {
            return ((BannerExpressVideoView) hpVar).getVideoModel();
        }
        return null;
    }

    @Override // com.byazt.ux.l
    public void hp(Context context, mp mpVar, com.byazt.jt.l lVar) {
        if (context == null) {
            return;
        }
        ((l) this).hp = new BannerExpressVideoView(context, mpVar, lVar);
    }

    @Override // com.byazt.qk.l, com.byazt.qt.k
    public void setVideoAdListener(com.byazt.qrd.jx jxVar) {
        hp hpVar = ((l) this).hp;
        if (hpVar != null) {
            hpVar.setVideoAdListener(jxVar);
        }
    }
}
