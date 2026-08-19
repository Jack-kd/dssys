package com.byazt.j;

import android.os.Build;
import androidx.annotation.NonNull;
import com.byazt.t.jl;

@com.byazt.kj.hp(hp = {0, 1, 38, 150})
/* loaded from: classes.dex */
public class q {
    public static boolean hp(@NonNull com.byazt.zv.hp hpVar) {
        return com.byazt.wm.w.w() && Build.VERSION.SDK_INT < 29 && jl.jl() != null && jl.jl().hp() && com.byazt.y.w.hp(hpVar).l("invoke_app_form_background_switch") == 1 && hpVar.xs();
    }
}
