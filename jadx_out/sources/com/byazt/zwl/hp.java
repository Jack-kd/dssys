package com.byazt.zwl;

import com.byazt.p000if.jx;
import com.byazt.qt.e;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_EXIT, 28})
/* loaded from: classes3.dex */
public class hp extends com.byazt.sr.hp<jx, List<e>> {

    /* renamed from: l, reason: collision with root package name */
    public static final hp f28635l = new hp();

    private hp() {
    }

    public static hp j() {
        return f28635l;
    }

    @Override // com.byazt.sr.hp
    public int hp() {
        return 6;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public List<String> hp(List<e> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<e> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getLifecycleId());
        }
        return arrayList;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public String l(List<e> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    @Override // com.byazt.sr.hp
    public void hp(jx jxVar, List<e> list) {
        if (jxVar != null) {
            jxVar.hp(list);
        }
    }

    @Override // com.byazt.sr.hp
    public void hp(jx jxVar, int i2, String str) {
        if (jxVar != null) {
            jxVar.hp(i2, str);
        }
    }
}
