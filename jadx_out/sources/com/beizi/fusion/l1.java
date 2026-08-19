package com.beizi.fusion;

import android.view.View;
import com.beizi.fusion.jc;
import com.beizi.fusion.z9;

/* loaded from: classes2.dex */
public class l1 extends i1 implements jc {
    @Override // com.beizi.fusion.i1, com.beizi.fusion.ca
    public y9 a() {
        return new pe();
    }

    @Override // com.beizi.fusion.ja, com.beizi.fusion.fc
    public void a(View view, int i2) {
        jc.a aVar = this.f13236e;
        if (aVar != null) {
            int iB = aVar.b();
            if (iB == 0) {
                a(view, Integer.valueOf(i2));
                return;
            }
            if (!pl.a(this.f13236e.a())) {
                a(view, Integer.valueOf(i2));
                return;
            }
            if (iB == 1) {
                super.a(view, i2);
            } else if (iB == 2) {
                this.f13232a.a(z9.a.REWARD_TO_PRIVILEGE, view, Integer.valueOf(i2));
            } else if (iB == 3) {
                this.f13232a.a(z9.a.REWARD_TO_END_CARD, view, Integer.valueOf(i2));
            } else if (iB == 4) {
                this.f13232a.a(z9.a.AD_CLOSE, view, Integer.valueOf(i2));
            } else if (iB == 5) {
                this.f13232a.a(z9.a.REWARD_TO_RETAIN, view, Integer.valueOf(i2));
            }
            this.f13236e.e();
        }
    }

    private void a(View view, Integer num) {
        jc.a aVar = this.f13236e;
        if (aVar != null) {
            if (aVar.c()) {
                this.f13232a.a(z9.a.REWARD_TO_END_CARD, view, num);
                return;
            } else {
                if (this.f13236e.d()) {
                    this.f13232a.a(z9.a.REWARD_PRIMARY_CLOSE, view, num);
                    return;
                }
                return;
            }
        }
        this.f13232a.a(z9.a.REWARD_PRIMARY_CLOSE, view, num);
    }

    @Override // com.beizi.fusion.jc
    public void a(jc.a aVar) {
        this.f13236e = aVar;
    }
}
