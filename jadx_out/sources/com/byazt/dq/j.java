package com.byazt.dq;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsSpeedCoefficientValue, 38})
/* loaded from: classes2.dex */
public final class j {
    public static Toast hp;

    public static void hp(Context context, String str) {
        hp(context, str, 0);
    }

    public static void hp(Context context, String str, int i2) {
        Toast toastHp = hp(context);
        if (toastHp == null) {
            com.byazt.aw.l.l("TToast", "toast msg: ".concat(String.valueOf(str)));
            return;
        }
        toastHp.setDuration(i2);
        toastHp.setText(String.valueOf(str));
        toastHp.show();
    }

    @SuppressLint({"ShowToast"})
    private static Toast hp(Context context) {
        if (context == null) {
            return hp;
        }
        Toast toastMakeText = Toast.makeText(context.getApplicationContext(), "", 0);
        hp = toastMakeText;
        return toastMakeText;
    }
}
