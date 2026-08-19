package com.byazt.owd;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import com.byazt.jz.hq;
import com.byazt.jz.wv;
import com.byazt.pg.vv;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1061, 2114})
@ATSKeep
/* loaded from: classes3.dex */
public class DispatchAdSdkInitializerHolder implements vv, Function {
    public static volatile Object hp;

    /* renamed from: l, reason: collision with root package name */
    public static com.byazt.jz.jx f24198l;

    public static hq getCsjLoader(Context context) {
        if (getCsjManger() != null) {
            return getCsjManger().createLoader(context);
        }
        return null;
    }

    public static wv getCsjManger() {
        com.byazt.jz.jx jxVar = f24198l;
        if (jxVar != null) {
            return jxVar.getManager();
        }
        return null;
    }

    public static boolean isInitSuccess() {
        com.byazt.jz.jx jxVar = f24198l;
        return jxVar != null && jxVar.isInitSuccess();
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        if (((Integer) sparseArray.get(0)).intValue() != 1) {
            return null;
        }
        return getDispatchAdSdkInitializer((Bundle) sparseArray.get(1), sparseArray.get(2));
    }

    @Override // com.byazt.pg.vv
    public Object getDispatchAdSdkInitializer(Bundle bundle, Object obj) {
        com.byazt.jz.jx jxVar = (com.byazt.jz.jx) obj;
        f24198l = jxVar;
        if (hp == null) {
            synchronized (DispatchAdSdkInitializerHolder.class) {
                try {
                    if (hp == null) {
                        hp = new jl(bundle, jxVar);
                    }
                } finally {
                }
            }
        }
        return hp;
    }
}
