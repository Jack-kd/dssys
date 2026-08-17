package com.octopus.ad.internal.a;

import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes4.dex */
public class a {

    /* renamed from: com.octopus.ad.internal.a.a$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34116a;

        static {
            int[] iArr = new int[i.values().length];
            f34116a = iArr;
            try {
                iArr[i.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34116a[i.PUSH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f34116a[i.MOVEIN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f34116a[i.REVEAL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static g a(i iVar, long j2, h hVar) {
        i iVar2 = i.RANDOM;
        if (iVar == iVar2) {
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, i.values());
            arrayList.remove(i.NONE);
            arrayList.remove(iVar2);
            Collections.shuffle(arrayList);
            iVar = (i) arrayList.get(0);
        }
        int i2 = AnonymousClass1.f34116a[iVar.ordinal()];
        if (i2 == 1) {
            return new c(j2);
        }
        if (i2 == 2) {
            return new e(j2, hVar);
        }
        if (i2 == 3) {
            return new d(j2, hVar);
        }
        if (i2 != 4) {
            return null;
        }
        return new f(j2, hVar);
    }
}
