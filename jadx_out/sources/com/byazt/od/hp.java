package com.byazt.od;

import android.content.Context;
import com.byazt.ymw.u;

@com.byazt.kj.hp(hp = {0, 1, 1768, 28})
/* loaded from: classes3.dex */
public abstract class hp implements w {
    public final Context hp;
    public final String jx;

    /* renamed from: l, reason: collision with root package name */
    public final com.byazt.jb.hp f23962l;

    public hp(Context context, com.byazt.jb.hp hpVar, String str) {
        this.hp = context;
        this.f23962l = hpVar;
        this.jx = str;
    }

    public boolean hp() {
        if (this.hp == null) {
            return false;
        }
        try {
        } catch (Throwable th) {
            if (com.byazt.nu.hp.hp()) {
                u.hp("AbsDevicePlan", "check is valid failed!", th);
            }
        }
        return l().resolveActivity(this.hp.getPackageManager()) != null;
    }
}
