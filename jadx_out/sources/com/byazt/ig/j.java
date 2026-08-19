package com.byazt.ig;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.xci.mp;

@com.byazt.kj.hp(hp = {0, 1, 7, 38})
/* loaded from: classes.dex */
public class j extends com.byazt.xu.l {
    public boolean pu;

    public j(Context context, ViewGroup viewGroup, mp mpVar) {
        super(context, viewGroup, mpVar, null);
        hp(false);
    }

    @Override // com.byazt.tm.hp
    public void a(boolean z2) {
        super.a(z2);
    }

    public boolean b() {
        return xs() != null && xs().isPaused();
    }

    @Override // com.byazt.xu.l, com.byazt.tm.hp
    public int cx() {
        return 4;
    }

    public boolean di() {
        return this.pu;
    }

    @Override // com.byazt.tm.hp, com.byazt.su.jx
    public void e() {
        this.pu = false;
        super.e();
    }

    public void eb(boolean z2) {
        this.pu = z2;
    }

    @Override // com.byazt.xu.l, com.byazt.tm.hp, com.byazt.su.jx
    public void s() {
        if (this.pu) {
            return;
        }
        super.s();
    }
}
