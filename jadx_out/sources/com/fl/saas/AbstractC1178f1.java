package com.fl.saas;

import com.fl.saas.adx.util.DeviceStateUtil;
import com.fl.saas.adx.util.DeviceUtil;
import java.util.Random;

/* renamed from: com.fl.saas.f1, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1178f1 {

    /* renamed from: com.fl.saas.f1$a */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private int f30388a;

        /* renamed from: b, reason: collision with root package name */
        private String f30389b;

        public a(int i2, String str) {
            this.f30388a = i2;
            this.f30389b = str;
        }

        public int a() {
            return this.f30388a;
        }

        public String b() {
            return this.f30389b;
        }
    }

    public static a a(double d2) {
        boolean zIsDeveloperOptionsEnabled = DeviceStateUtil.isDeveloperOptionsEnabled(DeviceUtil.getContext());
        boolean zIsNetworkProxyEnabled = DeviceStateUtil.isNetworkProxyEnabled(DeviceUtil.getContext());
        boolean zIsVPNConnected = DeviceStateUtil.isVPNConnected(DeviceUtil.getContext());
        if (zIsDeveloperOptionsEnabled || zIsNetworkProxyEnabled || zIsVPNConnected) {
            return new a(1, "developer");
        }
        double dNextDouble = 0.0d;
        if (d2 > 0.0d && d2 < 100.0d) {
            dNextDouble = new Random().nextDouble() * 100.0d;
            if (dNextDouble >= d2) {
                return new a(0, "");
            }
        }
        return new a(1, dNextDouble + "_" + d2);
    }
}
