package com.byazt.vr;

import android.util.SparseArray;
import com.byazt.xi.jx;
import com.bytedance.android.live.base.api.IHostPermission;
import com.bytedance.android.live.base.api.LocationProvider;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 1697, 28})
/* loaded from: classes3.dex */
public class hp implements IHostPermission {
    public final Function<SparseArray<Object>, Object> hp;

    public hp(Function<SparseArray<Object>, Object> function) {
        this.hp = function == null ? jx.jx : function;
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean alist() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262103);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public String getAndroidID() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262112);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public String getDevImei() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262105);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public String getDevOaid() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262109);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public String getMacAddress() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262107);
        sparseArray.put(-99999985, String.class);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public LocationProvider getTTLocation() {
        SparseArray<Object> sparseArray = new SparseArray<>(1);
        sparseArray.put(-99999987, 262102);
        sparseArray.put(-99999985, com.bytedance.sdk.openadsdk.LocationProvider.class);
        Object objApply = this.hp.apply(sparseArray);
        final com.byazt.ta.jx jxVar = objApply instanceof SparseArray ? new com.byazt.ta.jx(jx.hp((SparseArray<Object>) objApply).l()) : null;
        if (jxVar == null) {
            return null;
        }
        return new LocationProvider() { // from class: com.byazt.vr.hp.1
            @Override // com.bytedance.android.live.base.api.LocationProvider
            public double getLatitude() {
                return jxVar.getLatitude();
            }

            @Override // com.bytedance.android.live.base.api.LocationProvider
            public double getLongitude() {
                return jxVar.getLongitude();
            }
        };
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean isCanGetAndUseAndroidID() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262110);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean isCanUseLocation() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262101);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean isCanUsePhoneState() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262104);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean isCanUseWifiState() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262106);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.bytedance.android.live.base.api.IHostPermission
    public boolean isCanUseWriteExternal() {
        SparseArray<Object> sparseArray = new SparseArray<>();
        sparseArray.put(-99999987, 262108);
        sparseArray.put(-99999985, Boolean.TYPE);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }
}
