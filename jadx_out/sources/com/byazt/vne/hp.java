package com.byazt.vne;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.ewl.a;
import com.byazt.ewl.eb;
import com.byazt.ewl.q;
import com.byazt.ewl.s;
import com.byazt.ewl.w;
import com.byazt.tgw.e;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1443, 28})
/* loaded from: classes3.dex */
public class hp implements Function<SparseArray<Object>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.iqm.l f26597a;
    public e eb;
    public jx hp;

    /* renamed from: j, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f26598j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public int f26599l;

    /* renamed from: w, reason: collision with root package name */
    public com.byazt.xl.l f26600w;

    public hp(com.byazt.iqm.l lVar, com.byazt.xl.l lVar2, jx jxVar) {
        this.f26599l = lVar.ec();
        this.f26597a = lVar;
        this.jx = lVar2.v();
        this.f26600w = lVar2;
        this.hp = jxVar;
        this.eb = lVar2.s();
    }

    private com.byazt.rt.jx hp() {
        switch (this.f26599l) {
            case 1:
                return new com.byazt.ewl.jx(this.f26600w);
            case 2:
                return new a(this.f26600w);
            case 3:
                return new q(this.f26600w);
            case 4:
            case 6:
            default:
                return null;
            case 5:
                int i2 = this.jx;
                return i2 == 4 ? new eb(this.f26600w, this.hp) : i2 == 3 ? new com.byazt.ewl.jx(this.f26600w) : i2 == 5 ? new eb(this.f26600w, this.hp) : new eb(this.f26600w, this.hp);
            case 7:
                int i3 = this.jx;
                return i3 == 6 ? new s(this.f26600w) : i3 == 7 ? new w(this.f26600w) : i3 == 8 ? new a(this.f26600w) : new s(this.f26600w);
            case 8:
                return new w(this.f26600w);
            case 9:
                return new eb(this.f26600w, this.hp);
            case 10:
                int i4 = this.jx;
                if (i4 == 1) {
                    return new a(this.f26600w);
                }
                if (i4 == 2) {
                    return new w(this.f26600w);
                }
                return null;
        }
    }

    public String getBiddingToken(Context context, String str, Object obj) {
        if (this.f26598j != null) {
            Object objApply = this.f26598j.apply(com.byazt.wi.j.hp().hp(8139).hp(AVMDLDataLoader.KeyIsLiveWaitP2pReadyThreshold, context).hp(AVMDLDataLoader.KeyIsLiveCacheThresholdP2pToHttp, str).hp(8044, obj).hp(String.class).l());
            if (objApply instanceof String) {
                return objApply.toString();
            }
        }
        return null;
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        Class cls = (Class) pluginValueSetL.objectValue(-99999985, Class.class);
        if (iIntValue == 8108) {
            this.hp.notifyLoadFail(new com.byazt.dq.hp(pluginValueSetL.intValue(8014), pluginValueSetL.stringValue(8015)));
        } else if (iIntValue == 8112) {
            Function function = (Function) pluginValueSetL.objectValue(8303, Function.class);
            int iIntValue2 = pluginValueSetL.intValue(8014);
            String strStringValue = pluginValueSetL.stringValue(8015);
            ArrayList arrayList = new ArrayList(1);
            if (function instanceof com.byazt.rt.jx) {
                arrayList.add((com.byazt.rt.jx) function);
            } else if (function != null) {
                Object objApply = function.apply(com.byazt.wi.j.hp().hp(-99999977).l());
                if (objApply instanceof com.byazt.rt.jx) {
                    arrayList.add((com.byazt.rt.jx) objApply);
                }
            }
            this.hp.notifyVideoCache(arrayList, new com.byazt.dq.hp(iIntValue2, strStringValue));
        } else if (iIntValue == 8107) {
            List list = (List) pluginValueSetL.objectValue(8303, List.class);
            ArrayList arrayList2 = new ArrayList();
            if (list != null && !list.isEmpty()) {
                for (Object obj : list) {
                    if (obj instanceof com.byazt.rt.jx) {
                        arrayList2.add((com.byazt.rt.jx) obj);
                    } else if (obj instanceof Function) {
                        Object objApply2 = ((Function) obj).apply(com.byazt.wi.j.hp().hp(-99999977).l());
                        if (objApply2 instanceof com.byazt.rt.jx) {
                            arrayList2.add((com.byazt.rt.jx) objApply2);
                        }
                    }
                }
            }
            this.hp.notifyLoadSuccess(arrayList2);
        } else {
            if (iIntValue == 8127) {
                return hp();
            }
            if (iIntValue == 8110) {
                return Boolean.valueOf(this.f26600w.hp());
            }
            if (iIntValue == 8136) {
                return Boolean.valueOf(this.f26600w.cx());
            }
            if (iIntValue == 8141) {
                return Boolean.valueOf(this.f26600w.b());
            }
            if (iIntValue == 8137) {
                return this.f26600w.di();
            }
            if (iIntValue == 8226) {
                return Integer.valueOf(this.f26600w.ec());
            }
            if (iIntValue == 8138) {
                this.f26598j = (Function) pluginValueSetL.objectValue(8043, Function.class);
            } else if (iIntValue == 8210) {
                return Boolean.valueOf(this.hp.hasNotifyFail());
            }
        }
        return com.byazt.ror.hp.hp(cls);
    }
}
