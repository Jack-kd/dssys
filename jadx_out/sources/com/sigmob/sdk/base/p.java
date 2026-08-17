package com.sigmob.sdk.base;

import com.sigmob.windad.WindAdRequest;
import java.util.Map;

/* loaded from: classes4.dex */
public class p extends WindAdRequest {
    public p(String str, String str2, Map<String, Object> map) {
        super(str, str2, map, 1);
    }

    @Deprecated
    public p(String str, String str2, boolean z2, Map<String, Object> map) {
        super(str, str2, map, z2 ? 1 : 4);
    }
}
