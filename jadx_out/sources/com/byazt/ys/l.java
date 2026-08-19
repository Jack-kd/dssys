package com.byazt.ys;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.byazt.bki.eb;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 1746, 34})
/* loaded from: classes3.dex */
public class l extends com.byazt.oj.jx {
    public com.byazt.bki.l hp;

    public l(Activity activity, Map<String, Object> map, com.byazt.qre.jx jxVar) {
        if (jxVar == null || activity == null) {
            return;
        }
        if (map != null) {
            this.hp = jxVar.hp(activity, map);
        } else {
            this.hp = jxVar.hp(activity);
        }
    }

    @Override // com.byazt.oj.jx
    public void setDislikeCallback(final com.byazt.tl.hp hpVar) {
        com.byazt.bki.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp(new eb() { // from class: com.byazt.ys.l.1
                @Override // com.byazt.bki.eb
                public void hp(int i2, @Nullable String str) {
                    com.byazt.tl.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(i2, str);
                    }
                }

                @Override // com.byazt.bki.eb
                public void l() {
                    com.byazt.tl.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.l();
                    }
                }

                @Override // com.byazt.bki.eb
                public void hp() {
                    com.byazt.tl.hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp();
                    }
                }
            });
        }
    }

    @Override // com.byazt.oj.jx
    public void showDislikeDialog() {
        com.byazt.bki.l lVar = this.hp;
        if (lVar != null) {
            lVar.hp();
        }
    }

    public l(com.byazt.bki.l lVar) {
        this.hp = lVar;
    }
}
