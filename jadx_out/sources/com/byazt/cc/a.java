package com.byazt.cc;

import android.view.View;
import com.byazt.fyd.TTBaseVideoActivity;
import com.byazt.jwq.e;
import com.byazt.vsq.s;
import com.byazt.xci.mp;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 771, 54})
/* loaded from: classes2.dex */
public class a extends jx {
    public a(TTBaseVideoActivity tTBaseVideoActivity, mp mpVar, com.byazt.td.l lVar, com.byazt.td.w wVar, boolean z2) {
        super(tTBaseVideoActivity, mpVar, lVar, wVar, z2);
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void a(View view) throws JSONException {
        super.a(view);
        hp(view);
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void eb(View view) {
        super.eb(view);
        this.f18731a.pc();
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void hp(View view) throws JSONException {
        super.hp(view);
        if (hp()) {
            return;
        }
        this.f18731a.zx().hp();
        if (this.f18731a.y().y()) {
            l();
        } else {
            jx();
        }
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void jx(View view) {
        super.jx(view);
        this.f18731a.jx("video_player");
    }

    @Override // com.byazt.cc.jx, com.byazt.cc.l
    public void l(View view) {
        super.l(view);
        if (this.f18731a.y() instanceof s) {
            this.f18731a.pu();
        }
        this.f18731a.r();
    }

    private void jx() {
        e eVar = new e() { // from class: com.byazt.cc.a.2
            @Override // com.byazt.jwq.e
            public void l() throws JSONException {
                a.this.f18731a.jx();
            }
        };
        if (hp(eVar)) {
            return;
        }
        eVar.l();
    }

    private void l() throws JSONException {
        e eVar = new e() { // from class: com.byazt.cc.a.1
            @Override // com.byazt.jwq.e
            public void l() {
                a.this.f18731a.k();
                a.this.f18731a.ky().postDelayed(new Runnable() { // from class: com.byazt.cc.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f18731a.l();
                    }
                }, 100L);
            }
        };
        int i2 = 2;
        int iW = this.f18731a.w(2);
        if (this.f18733l.yu() == 7) {
            if (this.f18733l.lu() && !this.f18731a.vq()) {
                i2 = 1;
            }
            iW = i2;
        }
        if (iW == 1) {
            if (hp(eVar)) {
                return;
            }
            eVar.l();
            return;
        }
        this.f18731a.jx();
    }
}
