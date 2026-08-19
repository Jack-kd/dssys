package com.bykv.vk.component.ttvideo.mediakit.net;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class AVMDLDNSManager {
    public static Map<Integer, CreateConstructor> dnsMap;
    private static AVMDLDNSManager mInstance;

    private AVMDLDNSManager() throws Exception {
        dnsMap = new HashMap();
        initDnsMap();
    }

    public static AVMDLDNSManager getInstance() {
        if (mInstance == null) {
            synchronized (AVMDLDNSManager.class) {
                if (mInstance == null) {
                    try {
                        mInstance = new AVMDLDNSManager();
                    } catch (Exception unused) {
                        mInstance = null;
                    }
                }
            }
        }
        return mInstance;
    }

    private void initDnsMap() throws Exception {
        DefaultConstructor defaultConstructor = new DefaultConstructor();
        dnsMap.put(1, defaultConstructor);
        dnsMap.put(2, defaultConstructor);
        dnsMap.put(3, defaultConstructor);
    }

    public synchronized CreateConstructor getCreateConstructor(int i2) throws Exception {
        if (!dnsMap.containsKey(Integer.valueOf(i2))) {
            return null;
        }
        return dnsMap.get(Integer.valueOf(i2));
    }

    public synchronized void registerDnsConstructor(int i2, CreateConstructor createConstructor) {
        try {
            dnsMap.put(Integer.valueOf(i2), createConstructor);
        } catch (Exception unused) {
        }
    }
}
