package com.byazt.hl;

import com.byazt.p000if.w;
import com.byazt.qt.zy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 573, 28})
/* loaded from: classes2.dex */
public class hp extends com.byazt.sr.hp<w, List<zy>> {

    /* renamed from: l, reason: collision with root package name */
    public static final hp f20733l = new hp();

    private hp() {
    }

    public static hp j() {
        return f20733l;
    }

    @Override // com.byazt.sr.hp
    public int hp() {
        return 1;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public List<String> hp(List<zy> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<zy> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getLifecycleId());
        }
        return arrayList;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public String l(List<zy> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    @Override // com.byazt.sr.hp
    public void hp(w wVar, List<zy> list) {
        if (wVar != null) {
            wVar.hp(list);
        }
    }

    @Override // com.byazt.sr.hp
    public void hp(w wVar, int i2, String str) {
        if (wVar != null) {
            wVar.hp(i2, str);
        }
    }
}
