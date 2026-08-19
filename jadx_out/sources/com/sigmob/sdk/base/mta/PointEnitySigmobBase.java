package com.sigmob.sdk.base.mta;

import com.czhj.sdk.common.mta.DeviceContext;
import com.czhj.sdk.common.mta.PointEntityBase;
import com.czhj.sdk.logger.SigmobLog;
import com.sigmob.sdk.b;
import com.sigmob.sdk.base.i;
import com.sigmob.sdk.base.n;
import com.sigmob.sdk.base.o;
import com.sigmob.sdk.base.utils.f;
import com.sigmob.windad.WindAds;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public class PointEnitySigmobBase extends PointEntityBase {

    /* renamed from: a, reason: collision with root package name */
    private String f36328a;

    /* renamed from: b, reason: collision with root package name */
    private String f36329b;

    /* renamed from: c, reason: collision with root package name */
    private String f36330c;

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String appId() {
        return WindAds.sharedAds().getAppId();
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public DeviceContext getDeviceContext() {
        return b.b();
    }

    public String getIs_custom_android_id() {
        return this.f36329b;
    }

    public String getIs_custom_imei() {
        return this.f36328a;
    }

    public String getIs_custom_oaid() {
        return this.f36330c;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public String getSdkversion() {
        return n.f36448k;
    }

    @Override // com.czhj.sdk.common.mta.PointEntitySuper
    public boolean isAcTypeBlock() {
        if (!i.a().i()) {
            return true;
        }
        List<Integer> listM = o.a().M();
        if (f.a(listM)) {
            return false;
        }
        Iterator<Integer> it = listM.iterator();
        while (it.hasNext()) {
            if (getAc_type().equals(String.valueOf(it.next()))) {
                SigmobLog.e("black ac type " + getAc_type());
                return true;
            }
        }
        return false;
    }

    public void setIs_custom_android_id(String str) {
        this.f36329b = str;
    }

    public void setIs_custom_imei(String str) {
        this.f36328a = str;
    }

    public void setIs_custom_oaid(String str) {
        this.f36330c = str;
    }
}
