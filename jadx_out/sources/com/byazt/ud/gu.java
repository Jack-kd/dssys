package com.byazt.ud;

import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.Map;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 591, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu extends xs {
    public gu() {
        super(com.byazt.ki.jx.MINUS);
    }

    @Override // com.byazt.ii.hp
    public Object hp(Map<String, JSONObject> map) {
        Object objHp;
        Object objHp2 = this.hp.hp(map);
        if (objHp2 == null || (objHp = this.f26143l.hp(map)) == null) {
            return null;
        }
        return com.byazt.ax.w.hp((Number) objHp2, (Number) objHp);
    }
}
