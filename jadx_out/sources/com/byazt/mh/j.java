package com.byazt.mh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 1216, 38})
/* loaded from: classes3.dex */
public class j {

    @com.byazt.kj.hp(hp = {0, 1, 1216, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp extends IOException {
        public hp() {
            super("APNG Format error");
        }
    }

    public static List<w> hp(com.byazt.dk.hp hpVar) throws IOException {
        if (!hpVar.hp("\u0089PNG") || !hpVar.hp("\r\n\u001a\n")) {
            throw new hp();
        }
        ArrayList arrayList = new ArrayList();
        while (hpVar.j() > 0) {
            arrayList.add(l(hpVar));
        }
        return arrayList;
    }

    private static w l(com.byazt.dk.hp hpVar) throws IOException {
        int iJx = hpVar.jx();
        int iL = hpVar.l();
        int iB_ = hpVar.b_();
        w hpVar2 = iB_ == com.byazt.mh.hp.hp ? new com.byazt.mh.hp() : iB_ == a.hp ? new a() : iB_ == eb.hp ? new eb() : iB_ == e.hp ? new e() : iB_ == gu.hp ? new gu() : iB_ == jl.hp ? new jl() : new w();
        hpVar2.eb = iJx;
        hpVar2.f23057w = iB_;
        hpVar2.f23056j = iL;
        hpVar2.l(hpVar);
        hpVar2.f23055a = hpVar.l();
        return hpVar2;
    }
}
