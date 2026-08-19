package com.byazt.vc;

import android.content.Context;
import com.byazt.ie.UGFrameLayout;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 314, 28})
/* loaded from: classes3.dex */
public abstract class hp extends com.byazt.xs.hp<UGFrameLayout> {
    public hp(Context context) {
        super(context);
    }

    @Override // com.byazt.xs.jx
    public void hp(String str, String str2) {
        super.hp(str, str2);
        str.getClass();
        switch (str) {
            case "onVideoProgress":
            case "onVideoFinish":
            case "onVideoPlay":
            case "onVideoResume":
            case "onVideoPause":
                l(str, str2);
                break;
        }
    }

    @Override // com.byazt.xs.hp, com.byazt.xs.jx
    public void l() throws JSONException {
        super.l();
    }
}
