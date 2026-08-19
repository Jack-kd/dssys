package com.bykv.vk.component.ttvideo.mediakit.net;

import android.os.Handler;

/* loaded from: classes3.dex */
public class DefaultConstructor implements CreateConstructor {
    @Override // com.bykv.vk.component.ttvideo.mediakit.net.CreateConstructor
    public BaseDNS createDns(String str, AVMDLNetClient aVMDLNetClient, int i2, Handler handler) {
        try {
            return new HTTPDNS(str, aVMDLNetClient, i2, handler);
        } catch (Exception unused) {
            return null;
        }
    }
}
