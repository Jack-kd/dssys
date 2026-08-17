package com.sigmob.sdk.videoAd;

import com.czhj.sdk.common.track.AdTracker;
import com.czhj.sdk.common.utils.Preconditions;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* renamed from: com.sigmob.sdk.videoAd.d, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1377d extends AdTracker implements Serializable, Comparable<C1377d> {
    private static final long serialVersionUID = 0;

    /* renamed from: a, reason: collision with root package name */
    private final float f38756a;

    public C1377d(String str, float f2) {
        super(AdTracker.MessageType.QUARTILE_EVENT, null, str, null);
        Preconditions.NoThrow.checkArgument(f2 >= 0.0f);
        this.f38756a = f2;
    }

    private float a() {
        return this.f38756a;
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.f38756a), getUrl());
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(C1377d c1377d) {
        return Double.compare(a(), c1377d.a());
    }

    public static List<C1377d> a(List<C1377d> list, String str, long j2, long j3) {
        if (j3 <= 0 || j2 < 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        C1377d c1377d = new C1377d(str, j2 / j3);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1377d c1377d2 = list.get(i2);
            if (c1377d2.compareTo(c1377d) > 0) {
                break;
            }
            if (!c1377d2.isTracked()) {
                arrayList.add(c1377d2);
            }
        }
        return arrayList;
    }
}
