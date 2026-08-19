package com.byazt.a;

import com.byazt.f.e;
import com.byazt.f.gu;
import com.byazt.fu.DownloadInfo;
import com.byazt.w.a;

@com.byazt.kj.hp(hp = {0, 1, 54, 34})
/* loaded from: classes2.dex */
public class l implements gu {
    @Override // com.byazt.f.gu
    public void hp(DownloadInfo downloadInfo, e eVar) {
        com.byazt.zv.l lVarHp;
        if (downloadInfo != null && (lVarHp = a.hp().hp(downloadInfo)) != null) {
            downloadInfo.setLinkMode(lVarHp.mp());
        }
        if (eVar != null) {
            eVar.hp();
        }
    }
}
