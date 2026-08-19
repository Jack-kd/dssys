package com.byazt.a;

import androidx.annotation.NonNull;
import com.byazt.f.e;
import com.byazt.f.gu;
import com.byazt.fu.DownloadInfo;
import com.byazt.j.q;
import com.byazt.w.a;
import com.ss.android.downloadlib.activity.TTDelegateActivity;

@com.byazt.kj.hp(hp = {0, 1, 54, 28})
/* loaded from: classes2.dex */
public class hp implements gu {
    /* JADX INFO: Access modifiers changed from: private */
    public void l(DownloadInfo downloadInfo, @NonNull final com.byazt.o.hp hpVar) {
        com.byazt.zv.l lVarHp = a.hp().hp(downloadInfo);
        boolean zHp = com.byazt.j.a.hp(lVarHp);
        boolean zL = com.byazt.j.a.l(lVarHp);
        if (zHp && zL) {
            com.byazt.j.jx.hp(lVarHp, new com.byazt.o.hp() { // from class: com.byazt.a.hp.3
                @Override // com.byazt.o.hp
                public void hp() {
                    hpVar.hp();
                }
            });
        } else {
            hpVar.hp();
        }
    }

    @Override // com.byazt.f.gu
    public void hp(DownloadInfo downloadInfo, final e eVar) {
        hp(downloadInfo, new com.byazt.o.hp() { // from class: com.byazt.a.hp.1
            @Override // com.byazt.o.hp
            public void hp() {
                eVar.hp();
            }
        });
    }

    public void hp(final DownloadInfo downloadInfo, @NonNull final com.byazt.o.hp hpVar) {
        com.byazt.zv.l lVarHp = a.hp().hp(downloadInfo);
        if (lVarHp != null && q.hp(lVarHp)) {
            TTDelegateActivity.hp(lVarHp, new com.byazt.o.hp() { // from class: com.byazt.a.hp.2
                @Override // com.byazt.o.hp
                public void hp() {
                    hp.this.l(downloadInfo, hpVar);
                }
            });
        } else {
            l(downloadInfo, hpVar);
        }
    }
}
