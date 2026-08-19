package com.flutter.dlna.flutter_dlna.dlna.bean;

import java.io.Serializable;
import org.fourthline.cling.model.meta.Device;

/* loaded from: classes3.dex */
public final class DeviceInfo implements Serializable {
    private final Device device;
    private final String id;
    private final String name;

    public DeviceInfo(Device device, String str, String str2) {
        this.device = device;
        this.id = str;
        this.name = str2;
    }

    public Device getDevice() {
        return this.device;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }
}
