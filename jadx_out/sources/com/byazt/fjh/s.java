package com.byazt.fjh;

import com.byazt.nke.b;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends hp {
    public Throwable hp;
    public String jx;

    /* renamed from: l, reason: collision with root package name */
    public int f19889l;

    public s(int i2, String str, Throwable th) {
        this.f19889l = i2;
        this.jx = str;
        this.hp = th;
    }

    private void l(com.byazt.kz.jx jxVar) {
        b bVarJx = jxVar.jx();
        if (bVarJx != null) {
            bVarJx.onFailed(this.f19889l, this.jx, this.hp);
        }
    }

    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        jxVar.hp(new com.byazt.kz.hp(this.f19889l, this.jx, this.hp));
        String strXs = jxVar.xs();
        Map<String, List<com.byazt.kz.jx>> mapEb = jxVar.zy().eb();
        List<com.byazt.kz.jx> list = mapEb.get(strXs);
        if (list == null) {
            l(jxVar);
            return;
        }
        synchronized (list) {
            try {
                Iterator<com.byazt.kz.jx> it = list.iterator();
                while (it.hasNext()) {
                    l(it.next());
                }
                list.clear();
                mapEb.remove(strXs);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "failed";
    }
}
