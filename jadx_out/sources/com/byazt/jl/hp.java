package com.byazt.jl;

import com.byazt.qt.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 19, 28})
/* loaded from: classes.dex */
public class hp extends com.byazt.sr.hp<com.byazt.p000if.l, List<q>> {

    /* renamed from: l, reason: collision with root package name */
    public static final hp f21601l = new hp();

    private hp() {
    }

    public static hp j() {
        return f21601l;
    }

    @Override // com.byazt.sr.hp
    public int hp() {
        return 9;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public List<String> hp(List<q> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<q> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getLifecycleId());
        }
        return arrayList;
    }

    @Override // com.byazt.sr.hp
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public String l(List<q> list) {
        Map<String, Object> mediaExtraInfo;
        if (list == null || list.isEmpty() || (mediaExtraInfo = list.get(0).getMediaExtraInfo()) == null || mediaExtraInfo.get("request_id") == null) {
            return null;
        }
        return (String) mediaExtraInfo.get("request_id");
    }

    @Override // com.byazt.sr.hp
    public void hp(com.byazt.p000if.l lVar, List<q> list) {
        if (lVar != null) {
            lVar.hp(list);
        }
    }

    @Override // com.byazt.sr.hp
    public void hp(com.byazt.p000if.l lVar, int i2, String str) {
        if (lVar != null) {
            lVar.hp(i2, str);
        }
    }
}
