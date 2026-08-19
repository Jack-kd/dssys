package com.umeng.commonsdk.statistics.idtracking;

import android.annotation.TargetApi;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* loaded from: classes5.dex */
public class j extends a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f50319a = "serial";

    public j() {
        super(f50319a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    @TargetApi(9)
    public String f() {
        return DeviceConfig.getSerial();
    }
}
