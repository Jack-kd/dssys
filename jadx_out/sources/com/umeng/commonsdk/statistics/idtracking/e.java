package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class e extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50296a = "idmd5";

    /* renamed from: b, reason: collision with root package name */
    private Context f50297b;

    public e(Context context) {
        super("idmd5");
        this.f50297b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.f50297b);
    }
}
