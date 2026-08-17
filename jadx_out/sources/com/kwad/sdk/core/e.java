package com.kwad.sdk.core;

import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import com.kwad.sdk.service.ServiceProvider;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;

/* loaded from: classes4.dex */
public final class e {
    private static final b aKV = new b(100);
    private static final a aKW = new a(10, 0);
    private static List<c> aKX = new ArrayList(50);
    private static final List<List<c>> aKY = new ArrayList();
    private static final List<Map<String, Double>> aKZ = new ArrayList();
    private static c aLa;

    public static class a extends b {
        public /* synthetic */ a(int i2, byte b3) {
            this(10);
        }

        @Override // com.kwad.sdk.core.e.b
        public final char IN() {
            return ',';
        }

        public final List<String> IO() {
            return new ArrayList(this.aLc);
        }

        @Override // com.kwad.sdk.core.e.b
        public final boolean n(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            if (this.aLc.size() >= this.aLb) {
                this.aLc.poll();
            }
            return this.aLc.offer((String) obj);
        }

        private a(int i2) {
            super(i2);
        }
    }

    public static class b {
        public final int aLb;
        public final Queue<String> aLc = new LinkedList();

        public b(int i2) {
            this.aLb = i2;
        }

        public char IN() {
            return '|';
        }

        public final void clear() {
            this.aLc.clear();
        }

        public boolean n(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            if (this.aLc.size() >= this.aLb) {
                this.aLc.poll();
            }
            HashMap map = new HashMap();
            c cVar = (c) obj;
            double dIP = cVar.IP();
            double dIQ = cVar.IQ();
            map.put("x", Double.valueOf(dIP));
            map.put("y", Double.valueOf(dIQ));
            e.aKZ.add(map);
            return this.aLc.offer(dIP + "_" + dIQ);
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = this.aLc.iterator();
            while (it.hasNext()) {
                sb.append(it.next());
                sb.append(IN());
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        }
    }

    public static class c {
        private int action;

        /* renamed from: x, reason: collision with root package name */
        private double f31471x;

        /* renamed from: y, reason: collision with root package name */
        private double f31472y;

        public c(MotionEvent motionEvent) {
            this.f31471x = motionEvent.getX();
            this.f31472y = motionEvent.getY();
            this.action = motionEvent.getAction();
        }

        private int getAction() {
            return this.action;
        }

        public final double IP() {
            return this.f31471x;
        }

        public final double IQ() {
            return this.f31472y;
        }

        public final boolean a(c cVar) {
            return this.f31471x == cVar.IP() && this.f31472y == cVar.IQ() && this.action == cVar.getAction();
        }
    }

    private static double E(List<Map<String, Double>> list) {
        double d2 = 0.0d;
        try {
            ArrayList arrayList = new ArrayList(list.size());
            ArrayList arrayList2 = new ArrayList(list.size());
            ArrayList arrayList3 = new ArrayList(list.size());
            ArrayList arrayList4 = new ArrayList(list.size());
            a(list, arrayList, arrayList2, arrayList3, arrayList4);
            int i2 = 1;
            for (int i3 = 1; i2 < list.size() - i3; i3 = 1) {
                int i4 = i2;
                double dAbs = Math.abs((((Double) arrayList.get(i2)).doubleValue() * ((Double) arrayList4.get(i2)).doubleValue()) - (((Double) arrayList2.get(i2)).doubleValue() * ((Double) arrayList3.get(i2)).doubleValue())) / Math.pow(Math.pow(((Double) arrayList.get(i2)).doubleValue(), 2.0d) + Math.pow(((Double) arrayList2.get(i2)).doubleValue(), 2.0d), 1.5d);
                if (dAbs > d2) {
                    d2 = dAbs;
                }
                i2 = i4 + 1;
            }
            return d2;
        } catch (Throwable th) {
            ServiceProvider.reportSdkCaughtException(th);
            return d2;
        }
    }

    public static Pair<List<String>, Double> IJ() {
        Iterator<List<c>> it = aKY.iterator();
        double d2 = 0.0d;
        while (it.hasNext()) {
            Iterator<c> it2 = it.next().iterator();
            while (it2.hasNext()) {
                aKV.n(it2.next());
            }
            List<Map<String, Double>> list = aKZ;
            double dE = E(list);
            if (dE > d2) {
                d2 = dE;
            }
            list.clear();
            a aVar = aKW;
            b bVar = aKV;
            aVar.n(bVar.toString());
            bVar.clear();
        }
        return new Pair<>(IK(), Double.valueOf(d2));
    }

    private static List<String> IK() {
        List<String> listIO = aKW.IO();
        IM();
        IL();
        return listIO;
    }

    private static void IL() {
        aKZ.clear();
        aKY.clear();
        aKX.clear();
    }

    private static void IM() {
        aKW.clear();
        aKV.clear();
    }

    private static void a(MotionEvent motionEvent, boolean z2) {
        c cVar = new c(motionEvent);
        c cVar2 = aLa;
        if (cVar2 == null || !cVar2.a(cVar)) {
            aKX.add(cVar);
            aLa = cVar;
            if (z2) {
                if (aKX.size() > 3 && aKX.size() < 100) {
                    aKY.add(aKX);
                }
                aKX = new ArrayList(50);
                aLa = null;
            }
        }
    }

    public static void j(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3 && action != 4) {
                        return;
                    }
                }
            }
            a(motionEvent, true);
            return;
        }
        a(motionEvent, false);
    }

    private static void a(List<Map<String, Double>> list, List<Double> list2, List<Double> list3, List<Double> list4, List<Double> list5) {
        Double dValueOf = Double.valueOf(0.0d);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            list2.add(dValueOf);
            list3.add(dValueOf);
            list4.add(dValueOf);
            list5.add(dValueOf);
        }
        int i3 = 1;
        while (i3 < size - 1) {
            int i4 = i3 + 1;
            double dDoubleValue = list.get(i4).get("x").doubleValue();
            int i5 = i3 - 1;
            double dDoubleValue2 = list.get(i5).get("x").doubleValue();
            double dDoubleValue3 = list.get(i4).get("y").doubleValue();
            double dDoubleValue4 = list.get(i5).get("y").doubleValue();
            double dDoubleValue5 = list.get(i3).get("x").doubleValue();
            double dDoubleValue6 = list.get(i3).get("y").doubleValue();
            list2.set(i3, Double.valueOf((dDoubleValue - dDoubleValue2) / 2.0d));
            list3.set(i3, Double.valueOf((dDoubleValue3 - dDoubleValue4) / 2.0d));
            list4.set(i3, Double.valueOf((dDoubleValue - (dDoubleValue5 * 2.0d)) + dDoubleValue2));
            list5.set(i3, Double.valueOf((dDoubleValue3 - (dDoubleValue6 * 2.0d)) + dDoubleValue4));
            i3 = i4;
        }
    }
}
