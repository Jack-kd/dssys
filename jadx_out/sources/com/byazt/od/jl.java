package com.byazt.od;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

@com.byazt.kj.hp(hp = {0, 1, 1768, 19})
/* loaded from: classes3.dex */
public class jl extends hp {
    public jl(Context context, com.byazt.jb.hp hpVar, String str) {
        super(context, hpVar, str);
    }

    @Override // com.byazt.od.w
    public Intent l() {
        String strJx = this.f23962l.jx("s");
        String strHp = com.byazt.wm.jx.hp(this.f23962l.jx("ag"), strJx);
        String strHp2 = com.byazt.wm.jx.hp(this.f23962l.jx("ah"), strJx);
        String strHp3 = com.byazt.wm.jx.hp(this.f23962l.jx("ai"), strJx);
        String strHp4 = com.byazt.wm.jx.hp(this.f23962l.jx("aj"), strJx);
        Intent intent = new Intent();
        intent.putExtra(strHp, this.jx);
        intent.putExtra(strHp2, "*/*");
        intent.putExtra(strHp3, true);
        intent.setAction(strHp4);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.addFlags(32768);
        return intent;
    }
}
