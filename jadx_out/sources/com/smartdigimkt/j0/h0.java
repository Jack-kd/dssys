package com.smartdigimkt.j0;

import java.util.Iterator;

/* loaded from: classes5.dex */
public abstract /* synthetic */ class h0 {
    public static ClassCastException a(Iterator it) {
        it.next().getClass();
        return new ClassCastException();
    }
}
