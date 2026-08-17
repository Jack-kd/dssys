package com.byazt.owd;

import android.content.Context;
import android.util.SparseArray;
import com.byazt.jz.wv;
import com.bykv.vk.openvk.api.proto.PluginValueSet;
import com.umeng.commonsdk.statistics.UMErrorCode;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1061, UMErrorCode.E_UM_BE_EMPTY_URL_PATH})
/* loaded from: classes3.dex */
public class gu implements Function<SparseArray<Object>, Object> {
    public wv hp;
    public s jx;

    /* renamed from: l, reason: collision with root package name */
    public w f24214l = new w();

    public gu(wv wvVar) {
        this.hp = wvVar;
        this.jx = new s(this.hp);
    }

    @Override // java.util.function.Function
    public Object apply(SparseArray<Object> sparseArray) {
        if (sparseArray == null) {
            return null;
        }
        PluginValueSet pluginValueSetL = com.byazt.xi.hp.hp(sparseArray).l();
        int iIntValue = pluginValueSetL.intValue(-99999987);
        if (iIntValue == -99999986) {
            wv wvVar = this.hp;
            if (wvVar != null) {
                return wvVar.values();
            }
        } else if (iIntValue != -999800) {
            if (iIntValue == 8303 || iIntValue == 999801) {
                if (iIntValue == 8303) {
                    com.byazt.aw.l.l("TMe", "initRequestCondition getBridge");
                    return this.f24214l;
                }
                if (this.hp != null) {
                    return this.jx;
                }
            }
        } else if (this.hp != null) {
            Context context = (Context) pluginValueSetL.objectValue(-998000, Context.class);
            return new eb(context, this.hp.createLoader(context));
        }
        return null;
    }
}
