package com.byazt.ud;

import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, 65})
/* loaded from: classes3.dex */
public class vv extends xs {

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal<StringBuilder> f26142j = new ThreadLocal<StringBuilder>() { // from class: com.byazt.ud.vv.1
        @Override // java.lang.ThreadLocal
        /* renamed from: hp, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    };

    public vv() {
        super(com.byazt.ki.jx.PLUS);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        Object objHp2 = this.hp.hp(map);
        if (objHp2 == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        if (!(objHp2 instanceof String) && !(objHp instanceof String)) {
            return com.byazt.ax.s.hp((Number) objHp2, (Number) objHp);
        }
        StringBuilder sb = f26142j.get();
        sb.append(objHp2);
        sb.append(objHp);
        String string = sb.toString();
        sb.setLength(0);
        return string;
    }
}
