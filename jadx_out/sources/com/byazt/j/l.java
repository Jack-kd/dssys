package com.byazt.j;

import androidx.annotation.NonNull;

@com.byazt.kj.hp(hp = {0, 1, 38, 34})
/* loaded from: classes.dex */
public class l {
    public void hp(@NonNull final com.byazt.zv.l lVar, @NonNull final eb ebVar, int i2) {
        com.byazt.l.w.hp().hp(new Runnable() { // from class: com.byazt.j.l.1
            @Override // java.lang.Runnable
            public void run() {
                if (q.hp(lVar)) {
                    ebVar.hp(false);
                } else if (a.hp(lVar)) {
                    a.hp(lVar, new s() { // from class: com.byazt.j.l.1.1
                        @Override // com.byazt.j.s
                        public void hp(boolean z2) {
                            ebVar.hp(z2);
                        }
                    });
                } else {
                    ebVar.hp(false);
                }
            }
        }, i2);
    }
}
