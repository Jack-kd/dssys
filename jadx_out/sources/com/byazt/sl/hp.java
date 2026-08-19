package com.byazt.sl;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.byazt.jz.sz;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 499, 28})
/* loaded from: classes3.dex */
public class hp {
    public static volatile hp hp;

    private hp() {
    }

    public static hp hp() {
        if (hp == null) {
            synchronized (hp.class) {
                try {
                    if (hp == null) {
                        hp = new hp();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    private void l(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Intent intent = new Intent("com.bytedance.minigame.preload.action");
            j jVarHp = l.hp().hp(context);
            intent.putExtra("key_preload_info", jx.hp(jVarHp.f25477l, jVarHp.hp, str));
            intent.putExtra("key_preload_code", jVarHp.jx);
            context.sendBroadcast(intent);
            u.l("onPreloadFinish", "tryPreload finish1");
        } catch (Exception unused) {
        }
    }

    public void hp(Context context, String str) {
        if (!sz.l().j() || TextUtils.isEmpty(str)) {
            return;
        }
        hp().l(context, str);
    }
}
