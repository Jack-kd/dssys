package com.beizi.fusion;

import com.anythink.core.common.m.AbstractC1114b;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class n5 extends HashMap {
    public n5() {
        put("Accept", "*/*");
        put(AbstractC1114b.f5589g, "application/json");
        put("Connection", "keep-alive");
    }

    public static n5 a() {
        return new n5();
    }
}
