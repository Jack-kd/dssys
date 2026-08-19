package com.byazt.jz;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Keep;
import com.byazt.ym.ATSKeep;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 40, 833})
@ATSKeep
/* loaded from: classes.dex */
public class AdSdkInitializerHolder implements com.byazt.pg.s, Function {
    public static volatile jx hp;

    /* renamed from: l, reason: collision with root package name */
    public static volatile Object f21780l;

    @Keep
    public static Object getNewInstance(Bundle bundle) {
        com.byazt.pg.vv vvVar;
        if (hp == null) {
            synchronized (AdSdkInitializerHolder.class) {
                try {
                    if (hp == null) {
                        hp = new jx(bundle);
                        if (d.hp.booleanValue() && (vvVar = (com.byazt.pg.vv) com.byazt.ym.j.getService("m")) != null) {
                            f21780l = vvVar.getDispatchAdSdkInitializer(bundle, hp);
                        }
                    }
                } finally {
                }
            }
        }
        int iHp = bundle.getInt("api_sdk_version", 0);
        if (iHp == 0 && (iHp = hp()) == 0) {
            return null;
        }
        com.byazt.nn.hp.hp().hp(iHp);
        return iHp < 6803 ? f21780l != null ? new com.byazt.yo.l((Function) f21780l) : new com.byazt.yo.hp(hp) : f21780l != null ? f21780l : hp;
    }

    public static boolean hasDispatchAdSdkInitializer() {
        return f21780l != null;
    }

    private static int hp() {
        try {
            return TTAdSdk.class.getField("SDK_VERSION_CODE").getInt(null);
        } catch (Throwable th) {
            com.byazt.lf.k.hp().hp("init", th);
            return 0;
        }
    }

    public static boolean isSdkInitSuccess() {
        if (hp != null) {
            return hp.isInitSuccess();
        }
        return false;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        return getInitialInstance((Bundle) sparseArray.get(1));
    }

    @Override // com.byazt.pg.s
    public Object getInitialInstance(Bundle bundle) {
        return getNewInstance(bundle);
    }
}
