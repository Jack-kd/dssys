package com.sigmob.sdk.base.models;

import com.sigmob.sdk.base.utils.v;

/* loaded from: classes4.dex */
public class SensorEntity {
    public int level;
    public int shakeTimeThreshold;
    public int shakeTriggerType;
    public int widgetIntervalTime;

    private SensorEntity() {
    }

    public static SensorEntity format(BaseAdUnit baseAdUnit) {
        SensorEntity sensorEntity = new SensorEntity();
        if (v.b(baseAdUnit)) {
            sensorEntity.level = baseAdUnit.getSensitivity();
            sensorEntity.shakeTriggerType = baseAdUnit.getShakeTriggerType();
            sensorEntity.widgetIntervalTime = baseAdUnit.getWidgetIntervalTime();
            sensorEntity.shakeTimeThreshold = baseAdUnit.getShakeTimeThreshold();
        }
        return sensorEntity;
    }

    public SensorEntity(int i2) {
        this.level = i2;
    }

    public SensorEntity(int i2, int i3, int i4, int i5) {
        this.level = i2;
        this.shakeTriggerType = i3;
        this.widgetIntervalTime = i4;
        this.shakeTimeThreshold = i5;
    }
}
