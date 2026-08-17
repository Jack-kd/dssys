package com.byazt.fjh;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES, 94})
/* loaded from: classes2.dex */
public class eb extends hp {
    @Override // com.byazt.fjh.q
    public void hp(com.byazt.kz.jx jxVar) {
        List<com.byazt.kz.jx> linkedList;
        String strXs = jxVar.xs();
        Map<String, List<com.byazt.kz.jx>> mapEb = jxVar.zy().eb();
        synchronized (mapEb) {
            try {
                linkedList = mapEb.get(strXs);
                if (linkedList == null) {
                    linkedList = new LinkedList<>();
                }
            } finally {
            }
        }
        synchronized (linkedList) {
            try {
                linkedList.add(jxVar);
                mapEb.put(strXs, linkedList);
                if (linkedList.size() <= 1) {
                    jxVar.hp(new j());
                }
            } finally {
            }
        }
    }

    @Override // com.byazt.fjh.q
    public String hp() {
        return "check_duplicate";
    }
}
