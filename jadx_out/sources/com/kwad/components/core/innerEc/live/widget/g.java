package com.kwad.components.core.innerEc.live.widget;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class g {

    public static final class a extends g {
        private final int ro;

        public final int sU() {
            return this.ro;
        }

        public final String toString() {
            return "FixedTimeSpeed(time=" + this.ro + ")";
        }
    }

    public static final class b extends g {
        public final String toString() {
            return "ImmediatelySpeed";
        }
    }

    public static final class c extends g {
        public static final c YZ = new c();

        public final String toString() {
            return "NormalSpeed";
        }
    }

    public static final class d extends g {
        private final List<l> Za;
        private volatile List<k> Zb;
        private volatile boolean Zc;
        private final Context context;

        private List<k> o(@NonNull List<l> list) {
            ArrayList arrayList = new ArrayList();
            Iterator<l> it = list.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                i2 += it.next().aad;
            }
            ArrayList arrayList2 = new ArrayList();
            for (l lVar : list) {
                float f2 = (lVar.aad * 1.0f) / i2;
                arrayList.add(Integer.valueOf((int) (((f2 * 1000.0f) * 1000.0f) / com.kwad.sdk.c.a.a.a(this.context, lVar.aae))));
                k kVar = new k();
                kVar.aac = f2;
                arrayList2.add(kVar);
            }
            int size = arrayList.size();
            int iIntValue = 0;
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                iIntValue += ((Integer) obj).intValue();
            }
            for (int i4 = 0; i4 < arrayList2.size(); i4++) {
                ((k) arrayList2.get(i4)).aab = (((Integer) arrayList.get(i4)).intValue() * 1.0f) / iIntValue;
            }
            com.kwad.sdk.core.d.c.i("LiveCommentScrollSpeedStrategy", "covertSegmentsToPercentDataListsegments " + list + "percentDataList" + arrayList2);
            return arrayList2;
        }

        public final int bi(int i2) {
            try {
                Iterator<l> it = this.Za.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    i3 += it.next().aad;
                }
                if (i3 <= 0) {
                    return 0;
                }
                int iA = 0;
                for (l lVar : this.Za) {
                    iA += (int) (((i2 * ((lVar.aad * 1.0f) / i3)) * 1000.0f) / com.kwad.sdk.c.a.a.a(this.context, lVar.aae));
                }
                return iA;
            } catch (Exception e2) {
                com.kwad.sdk.core.d.c.i("LiveCommentScrollSpeedStrategy", "SegmentsSpeed calculateScrollTime error" + e2);
                return 0;
            }
        }

        @Nullable
        public final List<k> sV() {
            if (!this.Zc) {
                synchronized (this) {
                    if (!this.Zc) {
                        try {
                            this.Zb = o(this.Za);
                        } catch (Exception e2) {
                            com.kwad.sdk.core.d.c.i("LiveCommentScrollSpeedStrategy", "covertSegmentsToPercentDataList error" + e2);
                            this.Zb = null;
                        }
                        this.Zc = true;
                    }
                }
            }
            return this.Zb;
        }

        public final String toString() {
            return "SegmentsSpeed(segments=" + this.Za + ")";
        }
    }

    public static final class e extends g {
        public final String toString() {
            return "SlowSpeed";
        }
    }

    public static final class f extends g {
        private final int Zd;

        public final int sW() {
            return this.Zd;
        }

        public final String toString() {
            return "SpecificSpeed(speedPx=" + this.Zd + ")";
        }
    }

    public static boolean n(@Nullable List<k> list) {
        if (list == null || list.isEmpty()) {
            return false;
        }
        for (k kVar : list) {
            if (kVar.aac <= 0.0f || kVar.aab <= 0.0f) {
                return false;
            }
        }
        return true;
    }
}
