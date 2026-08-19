package com.smartdigimkt.o0;

import com.smartdigimkt.p0.p;
import java.lang.reflect.Constructor;

/* loaded from: classes5.dex */
public final class c implements f {

    /* renamed from: a, reason: collision with root package name */
    public static final Constructor f42195a;

    static {
        Constructor constructor = null;
        try {
            constructor = Class.forName("com.smartdigimkt.sdk.basead.exoplayer.ext.flac.FlacExtractor").asSubclass(d.class).getConstructor(null);
        } catch (ClassNotFoundException unused) {
        } catch (Exception e2) {
            throw new RuntimeException("Error instantiating FLAC extension", e2);
        }
        f42195a = constructor;
    }

    @Override // com.smartdigimkt.o0.f
    public final synchronized d[] a() {
        d[] dVarArr;
        Constructor constructor = f42195a;
        dVarArr = new d[constructor == null ? 2 : 3];
        dVarArr[0] = new com.smartdigimkt.p0.m();
        dVarArr[1] = new p();
        if (constructor != null) {
            try {
                dVarArr[2] = (d) constructor.newInstance(null);
            } catch (Exception e2) {
                throw new IllegalStateException("Unexpected error creating FLAC extractor", e2);
            }
        }
        return dVarArr;
    }
}
