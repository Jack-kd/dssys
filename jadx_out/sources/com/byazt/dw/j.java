package com.byazt.dw;

import android.app.Application;
import android.util.SparseArray;
import com.byazt.dw.hp;
import com.byazt.fk.Stub_SingleTask_Activity_T;
import com.byazt.fk.Stub_Standard_Activity;
import com.byazt.fk.Stub_Standard_Activity_T;
import com.byazt.fk.Stub_Standard_Landscape_Activity;
import com.byazt.fk.Stub_Standard_Portrait_Activity;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import java.util.HashMap;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1104, 38})
/* loaded from: classes2.dex */
public final class j implements Function<SparseArray<Object>, Object> {
    public static volatile j hp;
    public final hp jx = new hp();

    /* renamed from: l, reason: collision with root package name */
    public jx f19340l;

    private j() {
    }

    private Function<SparseArray<Object>, Object> hp(int i2) {
        if (i2 == 2) {
            return com.byazt.bc.jx.instance();
        }
        if (i2 == 3) {
            return com.byazt.wp.jx.instance(TTAppContextHolder.getContext());
        }
        if (i2 != 4) {
            return null;
        }
        return com.byazt.wh.hp.instance();
    }

    public static j instance() {
        if (hp == null) {
            synchronized (j.class) {
                try {
                    if (hp == null) {
                        hp = new j();
                    }
                } finally {
                }
            }
        }
        return hp;
    }

    public Application.ActivityLifecycleCallbacks getActivityLifecycleCallback() {
        return this.jx;
    }

    public void setBridgeFactory(jx jxVar) {
        this.f19340l = jxVar;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        Function<SparseArray<Object>, Object> functionHp;
        int iIntValue = ((Integer) sparseArray.get(-99999987)).intValue();
        if (iIntValue == -99999986) {
            SparseArray sparseArray2 = new SparseArray();
            sparseArray2.put(10000, 5);
            return sparseArray2;
        }
        switch (iIntValue) {
            case 2:
                return this.jx.hp();
            case 3:
                return TTAppContextHolder.getContext();
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                jx jxVar = this.f19340l;
                if (jxVar != null && (functionHp = jxVar.hp(4)) != null) {
                    return functionHp.apply(sparseArray);
                }
                return null;
            case 9:
                Object obj = sparseArray.get(0);
                if (obj instanceof Function) {
                    hp(new l((Function) obj));
                }
                return null;
            case 10:
                jx jxVar2 = this.f19340l;
                return jxVar2 == null ? hp(((Integer) sparseArray.get(0)).intValue()) : jxVar2.hp(((Integer) sparseArray.get(0)).intValue());
            default:
                switch (iIntValue) {
                    case 14:
                        return this.jx.l();
                    case 15:
                        HashMap map = new HashMap();
                        map.put("STUB_STANDARD_ACTIVITY_T", Stub_Standard_Activity_T.class.getName());
                        map.put("STUB_STANDARD_PORTRAIT_ACTIVITY_T", Stub_Standard_Portrait_Activity.class.getName());
                        map.put("STUB_STANDARD_ACTIVITY", Stub_Standard_Activity.class.getName());
                        map.put("STUB_STANDARD_LANDSCAPE_ACTIVITY", Stub_Standard_Landscape_Activity.class.getName());
                        map.put("STUB_SINGLE_TASK_ACTIVITY_T", Stub_SingleTask_Activity_T.class.getName());
                        return map;
                    case 16:
                        return TTAppContextHolder.class;
                    case 17:
                        return w.hp();
                    case 18:
                        com.byazt.kj.hp hpVar = (com.byazt.kj.hp) ((Class) sparseArray.get(0)).getAnnotation(com.byazt.kj.hp.class);
                        if (hpVar != null) {
                            return hpVar.hp();
                        }
                        return null;
                    default:
                        return null;
                }
        }
    }

    private void hp(final l lVar) {
        this.jx.hp(new hp.InterfaceC0211hp() { // from class: com.byazt.dw.j.1
            @Override // com.byazt.dw.hp.InterfaceC0211hp
            public void hp() {
                lVar.hp();
            }

            @Override // com.byazt.dw.hp.InterfaceC0211hp
            public void l() {
                lVar.l();
            }
        });
    }
}
