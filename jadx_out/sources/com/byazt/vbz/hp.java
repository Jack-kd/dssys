package com.byazt.vbz;

import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public interface hp {
    Set<String> getAdnKeySet();

    Map<String, Map<String, Object>> getAdnStatusMap();

    boolean getAndUpdateInitStatus(String str);

    jx getDexPluginStrategy(String str);
}
