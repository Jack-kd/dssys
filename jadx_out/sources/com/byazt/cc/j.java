package com.byazt.cc;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.e;
import com.byazt.xci.mp;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 771, 38})
/* loaded from: classes2.dex */
public class j extends jx {
    public j(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, com.byazt.td.l lVar, com.byazt.td.w wVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, lVar, wVar, z2);
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void a(View view) throws JSONException {
        super.a(view);
        hp(view);
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void hp(View view) throws JSONException {
        super.hp(view);
        if (hp()) {
            return;
        }
        this.f18731a.zx().l();
        if (this.f18732j.ms()) {
            this.f18731a.l();
        } else if (this.f18731a.y().y()) {
            l();
        } else {
            jx();
        }
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void jx(View view) {
        super.jx(view);
        this.f18731a.jx(this.f18732j.ky());
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void l(View view) {
        super.l(view);
        this.f18731a.pu();
    }

    private void l() {
        e eVar = new e() { // from class: com.byazt.cc.j.1
            @Override // com.byazt.jwq.e
            public void l() {
                j.this.f18731a.l();
            }
        };
        if (hp(eVar)) {
            this.eb--;
        } else {
            eVar.l();
        }
    }

    private void jx() {
        this.f18731a.l();
    }
}
