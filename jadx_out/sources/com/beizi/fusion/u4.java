package com.beizi.fusion;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
class u4 implements mb {

    /* renamed from: a, reason: collision with root package name */
    private final Map f16442a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private final Map f16443b = new HashMap();

    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private final nb f16444a;

        /* renamed from: b, reason: collision with root package name */
        private Boolean f16445b;

        private b(nb nbVar) {
            this.f16445b = null;
            this.f16444a = nbVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a(int i2) {
            if (i2 == 9) {
                return a();
            }
            if (i2 != 8) {
                return false;
            }
            if (this.f16445b == null) {
                this.f16445b = Boolean.valueOf(a());
            }
            return this.f16445b.booleanValue();
        }

        private boolean a() {
            nb nbVar = this.f16444a;
            if (nbVar != null && pl.a(nbVar.getRandomProbability())) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                long startTimestamp = this.f16444a.getStartTimestamp();
                long endTimestamp = this.f16444a.getEndTimestamp();
                long durationMillisecond = this.f16444a.getDurationMillisecond();
                if (startTimestamp > 0 && endTimestamp > 0 && jCurrentTimeMillis >= startTimestamp && jCurrentTimeMillis <= endTimestamp) {
                    return true;
                }
                if (jCurrentTimeMillis >= startTimestamp && jCurrentTimeMillis <= startTimestamp + durationMillisecond) {
                    return true;
                }
            }
            return false;
        }
    }

    @Override // com.beizi.fusion.mb
    public void a(String str, List list, List list2) {
        if (list != null && !list.isEmpty()) {
            this.f16443b.put(str, list);
        }
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                nb nbVar = (nb) it.next();
                this.f16442a.put(nbVar.getBetaTestPlanID() + "_" + nbVar.getSDKBizID(), new b(nbVar));
            }
        }
    }

    @Override // com.beizi.fusion.mb
    public boolean a(String str, String str2, int i2) {
        b bVar;
        List list = (List) this.f16443b.get(str2);
        if (list != null && !list.isEmpty()) {
            return list.contains(str);
        }
        String str3 = str + "_" + str2;
        if (!this.f16442a.containsKey(str3) || (bVar = (b) this.f16442a.get(str3)) == null) {
            return false;
        }
        return bVar.a(i2);
    }
}
