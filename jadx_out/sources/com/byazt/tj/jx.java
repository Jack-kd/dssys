package com.byazt.tj;

import android.content.Context;
import android.view.ViewGroup;
import com.byazt.fb.w;
import com.byazt.xci.mp;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 48, 30})
/* loaded from: classes3.dex */
public class jx extends w {
    public jx(Context context, mp mpVar, com.byazt.fb.l lVar, ViewGroup viewGroup) {
        super(context, mpVar, lVar, viewGroup);
    }

    private JSONObject vv() {
        try {
            return new JSONObject(hp.hp(this.f19626a, this.eb).hp(this.f19626a));
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.byazt.fb.w
    public JSONObject hp() {
        return vv();
    }

    @Override // com.byazt.fb.w, com.byazt.fub.j
    public int jx() {
        return 8;
    }
}
