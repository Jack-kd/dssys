package com.beizi.fusion;

import com.beizi.fusion.asnp.adn.ad.model.impl.resp.ad3.ad.nativ.render.RenderModel;
import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class xl {

    public static class b implements Comparator {
        private b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(cb cbVar, cb cbVar2) {
            int i2 = qo.i(cbVar.b());
            int i3 = qo.i(cbVar2.b());
            if (i2 < i3) {
                return -1;
            }
            return i2 == i3 ? 0 : 1;
        }
    }

    public static class c implements Comparator {
        private c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(RenderModel renderModel, RenderModel renderModel2) {
            if (renderModel.getLayer() < renderModel2.getLayer()) {
                return -1;
            }
            if (renderModel.getLayer() == renderModel2.getLayer()) {
                return qo.i(renderModel.getId()) < qo.i(renderModel2.getId()) ? -1 : 0;
            }
            return 1;
        }
    }

    public static Comparator a() {
        return new b();
    }

    public static Comparator b() {
        return new c();
    }
}
