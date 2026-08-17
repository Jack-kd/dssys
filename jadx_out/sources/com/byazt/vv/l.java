package com.byazt.vv;

import android.os.Bundle;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, 65, 34})
/* loaded from: classes3.dex */
public class l {
    public static l hp;

    /* renamed from: l, reason: collision with root package name */
    public Map<Integer, Bundle> f26727l = Collections.synchronizedMap(new HashMap());

    private l() {
    }

    public static synchronized l hp() {
        try {
            if (hp == null) {
                hp = new l();
            }
        } catch (Throwable th) {
            throw th;
        }
        return hp;
    }

    public void l(int i2) {
        this.f26727l.remove(Integer.valueOf(i2));
    }

    public void hp(int i2, Bundle bundle) {
        this.f26727l.put(Integer.valueOf(i2), bundle);
    }

    public Bundle hp(int i2) {
        return this.f26727l.get(Integer.valueOf(i2));
    }
}
