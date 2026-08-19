package com.sigmob.sdk.mraid2;

import android.view.View;
import com.sigmob.sdk.base.common.am;
import com.sigmob.sdk.base.models.SensorEntity;

/* renamed from: com.sigmob.sdk.mraid2.h, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1330h extends com.sigmob.sdk.mraid.o {
    public C1330h(String str, String str2) {
        super(str);
        a(com.sigmob.sdk.b.e(), str2);
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public View a() {
        return null;
    }

    @Override // com.sigmob.sdk.mraid.AbstractC1322n
    public void b() {
        this.f37989d = null;
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.c();
    }

    @Override // com.sigmob.sdk.mraid.o
    public void a(float f2) {
    }

    @Override // com.sigmob.sdk.mraid.o
    public void b(float f2) {
    }

    public void a(SensorEntity sensorEntity) {
        am.a aVar = this.f37988c;
        if (aVar == null) {
            return;
        }
        aVar.a(sensorEntity);
    }
}
