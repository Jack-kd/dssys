package com.fl.saas.adx.util;

import androidx.arch.core.util.Function;
import java.util.List;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Function {
    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return Check.findFirstNonNull((List) obj);
    }
}
