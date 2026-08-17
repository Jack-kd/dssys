package com.byazt.vbz;

import android.util.SparseArray;
import java.util.function.Function;

/* loaded from: classes3.dex */
public interface jx {
    String getAdnName();

    String getAdnVersion();

    String getAdnVersionListKey();

    String getClassName();

    Function<SparseArray<Object>, Object> getInitBridge();

    Function<SparseArray<Object>, Object> getManager();

    String getUnSupportVersion();

    void saveManager(Function<SparseArray<Object>, Object> function);

    void saveUnSupportVersion(String str);
}
