package com.byazt.fb;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.byazt.gg.a;
import com.byazt.gg.gu;
import com.byazt.gg.k;
import com.byazt.gg.zy;
import com.byazt.jz.sz;
import com.byazt.ql.v;
import com.byazt.xa.q;
import com.byazt.xci.hd;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 528, 38})
/* loaded from: classes2.dex */
public class j {
    public static void hp(mp mpVar, v vVar, int i2, AtomicBoolean atomicBoolean) {
        if (mpVar == null || vVar == null || i2 != 1) {
            return;
        }
        JSONObject jSONObjectZy = hd.zy(mpVar);
        int iOptInt = 0;
        if (jSONObjectZy != null) {
            try {
                iOptInt = jSONObjectZy.optInt("tap_min_duration_threshold", 0);
            } catch (Exception unused) {
            }
        }
        if (iOptInt <= 0) {
            return;
        }
        vVar.hp(new l(iOptInt, atomicBoolean));
    }

    public static void l(mp mpVar, v vVar, int i2, AtomicBoolean atomicBoolean) {
        int iOptInt;
        boolean zOh;
        if (mpVar == null || vVar == null) {
            return;
        }
        JSONObject jSONObjectZy = hd.zy(mpVar);
        int i3 = -1;
        if (jSONObjectZy == null || i2 != 1) {
            iOptInt = -1;
        } else {
            try {
                int iOptInt2 = jSONObjectZy.optInt("slide_ignore_up", -1);
                try {
                    iOptInt = jSONObjectZy.optInt("slide_min_threshold", -1);
                    i3 = iOptInt2;
                } catch (Exception unused) {
                    iOptInt = -1;
                    i3 = iOptInt2;
                    zOh = false;
                    vVar.hp(new hp(i3, iOptInt, zOh, atomicBoolean));
                }
            } catch (Exception unused2) {
                iOptInt = -1;
            }
        }
        try {
            zOh = sz.l().oh();
        } catch (Exception unused3) {
            zOh = false;
            vVar.hp(new hp(i3, iOptInt, zOh, atomicBoolean));
        }
        vVar.hp(new hp(i3, iOptInt, zOh, atomicBoolean));
    }

    @com.byazt.kj.hp(hp = {0, 1, 528, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE})
    public static class hp implements zy {

        /* renamed from: a, reason: collision with root package name */
        public int f19598a;
        public boolean eb;
        public float hp;
        public final AtomicBoolean jx;

        /* renamed from: l, reason: collision with root package name */
        public float f19600l;

        /* renamed from: w, reason: collision with root package name */
        public int f19602w;

        /* renamed from: j, reason: collision with root package name */
        public final Map<String, jx> f19599j = new HashMap();

        /* renamed from: s, reason: collision with root package name */
        public boolean f19601s = true;

        @com.byazt.kj.hp(hp = {0, 1, 528, MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE})
        /* renamed from: com.byazt.fb.j$hp$hp, reason: collision with other inner class name */
        public static class C0221hp {
            public final int hp;

            /* renamed from: j, reason: collision with root package name */
            public final String f19603j;
            public final int jx;

            /* renamed from: l, reason: collision with root package name */
            public final AtomicInteger f19604l;

            /* renamed from: w, reason: collision with root package name */
            public final boolean f19605w;

            public C0221hp(String str, int i2, AtomicInteger atomicInteger, int i3, boolean z2) {
                this.f19603j = str;
                this.hp = i2;
                this.f19604l = atomicInteger;
                this.jx = i3;
                this.f19605w = z2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int hp() {
                return this.hp;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public String j() {
                return this.f19603j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public int jx() {
                return this.jx;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public AtomicInteger l() {
                return this.f19604l;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean w() {
                return this.f19605w;
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 528, 1766})
        public static class jx {
            public float hp;
            public boolean jx;

            /* renamed from: l, reason: collision with root package name */
            public float f19606l;

            private jx() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void j() {
                this.jx = true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean jx() {
                return this.jx;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float l() {
                return this.f19606l;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void hp(float f2, float f3) {
                this.hp = f2;
                this.f19606l = f3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public float hp() {
                return this.hp;
            }
        }

        @com.byazt.kj.hp(hp = {0, 1, 528, 1731})
        public static class l {

            /* renamed from: a, reason: collision with root package name */
            public final C0221hp f19607a;
            public final com.byazt.xs.jx hp;

            /* renamed from: j, reason: collision with root package name */
            public final gu f19608j;
            public final com.byazt.it.l jx;

            /* renamed from: l, reason: collision with root package name */
            public final MotionEvent f19609l;

            /* renamed from: w, reason: collision with root package name */
            public final boolean f19610w;

            public l(com.byazt.xs.jx jxVar, MotionEvent motionEvent, com.byazt.it.l lVar, gu guVar, boolean z2, C0221hp c0221hp) {
                this.hp = jxVar;
                this.f19609l = motionEvent;
                this.jx = lVar;
                this.f19608j = guVar;
                this.f19610w = z2;
                this.f19607a = c0221hp;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public C0221hp a() {
                return this.f19607a;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean eb() {
                return this.f19608j != null;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.byazt.xs.jx hp() {
                return this.hp;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public gu j() {
                return this.f19608j;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public com.byazt.it.l jx() {
                return this.jx;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public MotionEvent l() {
                return this.f19609l;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean w() {
                return this.f19610w;
            }
        }

        public hp(int i2, int i3, boolean z2, AtomicBoolean atomicBoolean) {
            this.f19602w = i2;
            this.f19598a = i3;
            this.eb = z2;
            this.jx = atomicBoolean;
        }

        private boolean a(l lVar) {
            if (this.jx.get()) {
                return true;
            }
            MotionEvent motionEventL = lVar.l();
            float x2 = motionEventL.getX();
            float y2 = motionEventL.getY();
            if (lVar.a().hp() == 0 && hp(lVar, x2, y2, "Slide event, check limit threshold 0")) {
                return true;
            }
            if (!hp(x2, y2, this.hp, this.f19600l, lVar.a())) {
                return false;
            }
            hp(lVar, x2, y2, (String) null);
            return true;
        }

        private boolean j(l lVar) {
            MotionEvent motionEventL = lVar.l();
            int action = motionEventL.getAction();
            if (action == 0) {
                return hp(motionEventL);
            }
            if (action != 1) {
                if (action == 2) {
                    return w(lVar);
                }
                if (action != 3 || l(motionEventL)) {
                    return true;
                }
            }
            return a(lVar);
        }

        private boolean jx(l lVar) {
            MotionEvent motionEventL = lVar.l();
            for (int i2 = 0; i2 < motionEventL.getPointerCount(); i2++) {
                int pointerId = motionEventL.getPointerId(i2);
                jx jxVar = this.f19599j.get(hp(pointerId, lVar.jx()));
                if (hp(lVar, jxVar) && hp(lVar, jxVar, pointerId, i2)) {
                    return true;
                }
            }
            return true;
        }

        private boolean l(l lVar) {
            MotionEvent motionEventL = lVar.l();
            int actionMasked = motionEventL.getActionMasked();
            int actionIndex = motionEventL.getActionIndex();
            int pointerId = motionEventL.getPointerId(actionIndex);
            String strHp = hp(pointerId, lVar.jx());
            motionEventL.getPointerCount();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked == 2) {
                        return jx(lVar);
                    }
                    if (actionMasked == 3) {
                        this.f19599j.clear();
                        return true;
                    }
                    if (actionMasked != 5) {
                        if (actionMasked != 6) {
                            return true;
                        }
                    }
                }
                return hp(lVar, actionIndex, pointerId, strHp);
            }
            this.jx.set(false);
            hp(motionEventL, actionIndex, strHp);
            return true;
        }

        private boolean w(l lVar) {
            if (lVar.w() && !this.jx.get()) {
                MotionEvent motionEventL = lVar.l();
                float x2 = motionEventL.getX();
                float y2 = motionEventL.getY();
                if (hp(x2, y2, this.hp, this.f19600l, lVar.a()) && lVar.eb()) {
                    hp();
                    return hp(lVar, x2, y2);
                }
            }
            return true;
        }

        @Override // com.byazt.gg.zy
        public void hp(String str, Object obj) {
            try {
                if (str.hashCode() == 2001723438 && str.equals("lastEventInView")) {
                    this.f19601s = ((Boolean) obj).booleanValue();
                }
            } catch (Exception unused) {
            }
        }

        @Override // com.byazt.gg.zy
        public boolean hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent, gu guVar, com.byazt.it.l lVar, String str, int i2, AtomicInteger atomicInteger, int i3, boolean z2) {
            boolean z3;
            C0221hp c0221hp = new C0221hp(str, i2, atomicInteger, i3, z2);
            com.byazt.gg.a aVarE = lVar.e();
            if (aVarE == null || aVarE.l().isEmpty()) {
                z3 = false;
            } else {
                Iterator<a.hp> it = aVarE.l().iterator();
                while (it.hasNext()) {
                    if (TextUtils.equals(it.next().l(), "convert")) {
                        z3 = true;
                        break;
                    }
                }
                z3 = false;
            }
            return hp(new l(jxVar, motionEvent, lVar, guVar, z3 && this.f19602w == 1, c0221hp));
        }

        private String hp(int i2, com.byazt.it.l lVar) {
            return i2 + "_" + System.identityHashCode(lVar);
        }

        private void hp(MotionEvent motionEvent, int i2, String str) {
            jx jxVar = new jx();
            jxVar.hp(motionEvent.getX(i2), motionEvent.getY(i2));
            this.f19599j.put(str, jxVar);
        }

        private boolean l(MotionEvent motionEvent) {
            return motionEvent.getRawY() == 0.0f && motionEvent.getRawX() == 0.0f;
        }

        private boolean hp(l lVar, jx jxVar) {
            return (!lVar.w() || jxVar == null || jxVar.jx() || this.jx.get()) ? false : true;
        }

        private boolean hp(l lVar, jx jxVar, int i2, int i3) {
            MotionEvent motionEventL = lVar.l();
            float x2 = motionEventL.getX(i3);
            float y2 = motionEventL.getY(i3);
            if (!hp(x2, y2, jxVar.hp(), jxVar.l(), lVar.a())) {
                return false;
            }
            jxVar.j();
            return lVar.eb() && hp(lVar, x2, y2);
        }

        private boolean hp(l lVar, int i2, int i3, String str) {
            jx jxVar;
            MotionEvent motionEventL = lVar.l();
            jx jxVar2 = this.f19599j.get(str);
            if (jxVar2 != null) {
                try {
                    if (!jxVar2.jx() && !this.jx.get()) {
                        float x2 = motionEventL.getX(i2);
                        float y2 = motionEventL.getY(i2);
                        if (lVar.a().hp() == 0) {
                            jxVar = jxVar2;
                            if (!hp(lVar, jxVar2, x2, y2, "Slide event for pointer " + i3 + ", check limit threshold 0")) {
                            }
                        } else {
                            jxVar = jxVar2;
                        }
                        if (hp(x2, y2, jxVar.hp(), jxVar.l(), lVar.a())) {
                            hp(lVar, jxVar, x2, y2, (String) null);
                        }
                    }
                    return true;
                } finally {
                    this.f19599j.remove(str);
                }
            }
            return false;
        }

        private boolean hp(l lVar, jx jxVar, float f2, float f3, String str) {
            if (!lVar.eb() || jxVar.jx() || this.jx.get()) {
                return false;
            }
            TextUtils.isEmpty(str);
            jxVar.j();
            return hp(lVar, f2, f3);
        }

        private boolean hp(MotionEvent motionEvent) {
            this.jx.set(false);
            this.hp = motionEvent.getX();
            this.f19600l = motionEvent.getY();
            return true;
        }

        private boolean hp(l lVar, float f2, float f3, String str) {
            if (!lVar.eb() || this.jx.get()) {
                return false;
            }
            TextUtils.isEmpty(str);
            hp();
            return hp(lVar, f2, f3);
        }

        private void hp() {
            this.hp = 0.0f;
            this.f19600l = 0.0f;
        }

        public boolean hp(l lVar) {
            if (this.eb) {
                return l(lVar);
            }
            return j(lVar);
        }

        private boolean hp(View view, float f2, float f3) {
            return f2 >= 0.0f && f2 < ((float) view.getWidth()) && f3 >= 0.0f && f3 < ((float) view.getHeight());
        }

        private boolean hp(l lVar, float f2, float f3) {
            C0221hp c0221hpA = lVar.a();
            AtomicInteger atomicIntegerL = c0221hpA.l();
            if ((atomicIntegerL != null && atomicIntegerL.get() <= 0) || !c0221hpA.w()) {
                return false;
            }
            if (c0221hpA.jx() == 1 && (!hp(lVar.hp().q(), f2, f3) || !this.f19601s)) {
                return false;
            }
            this.jx.set(true);
            lVar.j().hp(lVar.hp(), lVar.jx().eb(), lVar.jx().e().l(), lVar.jx().e());
            if (atomicIntegerL != null && atomicIntegerL.get() != Integer.MAX_VALUE) {
                atomicIntegerL.decrementAndGet();
            }
            return true;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0054  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private boolean hp(float r5, float r6, float r7, float r8, com.byazt.fb.j.hp.C0221hp r9) {
            /*
                r4 = this;
                android.content.Context r0 = com.byazt.jz.sz.getContext()
                float r5 = r5 - r7
                int r5 = com.byazt.xa.s.l(r0, r5)
                android.content.Context r7 = com.byazt.jz.sz.getContext()
                float r6 = r6 - r8
                int r6 = com.byazt.xa.s.l(r7, r6)
                java.lang.String r7 = com.byazt.fb.j.hp.C0221hp.w(r9)
                int r8 = r7.hashCode()
                r0 = 2
                r1 = 3
                r2 = 0
                r3 = 1
                switch(r8) {
                    case 3739: goto L4a;
                    case 96673: goto L40;
                    case 3089570: goto L36;
                    case 3317767: goto L2c;
                    case 108511772: goto L22;
                    default: goto L21;
                }
            L21:
                goto L54
            L22:
                java.lang.String r8 = "right"
                boolean r7 = r7.equals(r8)
                if (r7 == 0) goto L54
                r7 = r1
                goto L55
            L2c:
                java.lang.String r8 = "left"
                boolean r7 = r7.equals(r8)
                if (r7 == 0) goto L54
                r7 = r0
                goto L55
            L36:
                java.lang.String r8 = "down"
                boolean r7 = r7.equals(r8)
                if (r7 == 0) goto L54
                r7 = r3
                goto L55
            L40:
                java.lang.String r8 = "all"
                boolean r7 = r7.equals(r8)
                if (r7 == 0) goto L54
                r7 = 4
                goto L55
            L4a:
                java.lang.String r8 = "up"
                boolean r7 = r7.equals(r8)
                if (r7 == 0) goto L54
                r7 = r2
                goto L55
            L54:
                r7 = -1
            L55:
                if (r7 == 0) goto L78
                if (r7 == r3) goto L76
                if (r7 == r0) goto L74
                if (r7 == r1) goto L79
                double r7 = (double) r5
                r0 = 4611686018427387904(0x4000000000000000, double:2.0)
                double r7 = java.lang.Math.pow(r7, r0)
                double r5 = (double) r6
                double r5 = java.lang.Math.pow(r5, r0)
                double r7 = r7 + r5
                double r5 = java.lang.Math.sqrt(r7)
                double r5 = java.lang.Math.abs(r5)
                int r5 = (int) r5
                goto L79
            L74:
                int r5 = -r5
                goto L79
            L76:
                r5 = r6
                goto L79
            L78:
                int r5 = -r6
            L79:
                int r6 = r4.f19598a
                if (r6 < 0) goto L81
                if (r5 < r6) goto L80
                return r3
            L80:
                return r2
            L81:
                int r6 = com.byazt.fb.j.hp.C0221hp.hp(r9)
                if (r5 < r6) goto L88
                return r3
            L88:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fb.j.hp.hp(float, float, float, float, com.byazt.fb.j$hp$hp):boolean");
        }
    }

    @com.byazt.kj.hp(hp = {0, 1, 528, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME})
    public static class l implements q.hp, k {

        /* renamed from: a, reason: collision with root package name */
        public com.byazt.it.l f19611a;
        public gu eb;
        public float hp;

        /* renamed from: j, reason: collision with root package name */
        public final int f19612j;
        public boolean jx;

        /* renamed from: l, reason: collision with root package name */
        public float f19613l;

        /* renamed from: q, reason: collision with root package name */
        public final Handler f19614q = new q(Looper.getMainLooper(), this);

        /* renamed from: s, reason: collision with root package name */
        public final AtomicBoolean f19615s;

        /* renamed from: w, reason: collision with root package name */
        public com.byazt.xs.jx f19616w;

        public l(int i2, AtomicBoolean atomicBoolean) {
            this.f19612j = i2;
            this.f19615s = atomicBoolean;
        }

        @Override // com.byazt.gg.k
        public boolean hp(com.byazt.xs.jx jxVar, MotionEvent motionEvent, gu guVar, com.byazt.it.l lVar) {
            boolean z2;
            com.byazt.gg.a aVarE = lVar.e();
            if (aVarE == null || aVarE.l().isEmpty()) {
                z2 = false;
            } else {
                Iterator<a.hp> it = aVarE.l().iterator();
                while (it.hasNext()) {
                    if (TextUtils.equals(it.next().l(), "convert")) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
            }
            return hp(jxVar, motionEvent, lVar, guVar, z2);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean hp(com.byazt.xs.jx r7, android.view.MotionEvent r8, com.byazt.it.l r9, com.byazt.gg.gu r10, boolean r11) {
            /*
                r6 = this;
                int r0 = r8.getAction()
                r1 = 0
                r2 = 1
                if (r0 == 0) goto Lb8
                r11 = 1097859072(0x41700000, float:15.0)
                r3 = 0
                r4 = 0
                if (r0 == r2) goto L57
                r5 = 2
                if (r0 == r5) goto L35
                r5 = 3
                if (r0 == r5) goto L16
                goto Ldb
            L16:
                r6.jx = r1
                float r0 = r8.getRawX()
                float r5 = r8.getRawY()
                int r5 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
                if (r5 != 0) goto L57
                int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r0 != 0) goto L57
                android.os.Handler r7 = r6.f19614q
                r7.removeMessages(r2)
                r6.f19616w = r3
                r6.f19611a = r3
                r6.eb = r3
                goto Ldb
            L35:
                float r7 = r8.getRawX()
                float r8 = r8.getRawY()
                float r9 = r6.hp
                float r7 = r7 - r9
                float r7 = java.lang.Math.abs(r7)
                int r7 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
                if (r7 >= 0) goto L53
                float r7 = r6.f19613l
                float r8 = r8 - r7
                float r7 = java.lang.Math.abs(r8)
                int r7 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
                if (r7 < 0) goto Ldb
            L53:
                r6.jx = r2
                goto Ldb
            L57:
                android.os.Handler r0 = r6.f19614q
                r0.removeMessages(r2)
                r6.f19616w = r3
                r6.f19611a = r3
                r6.eb = r3
                boolean r0 = r6.jx
                if (r0 == 0) goto L6d
                r6.jx = r1
                r6.hp = r4
                r6.f19613l = r4
                return r1
            L6d:
                float r0 = r8.getRawX()
                float r8 = r8.getRawY()
                float r3 = r6.hp
                float r0 = r0 - r3
                float r0 = java.lang.Math.abs(r0)
                int r0 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
                if (r0 >= 0) goto Lb5
                float r0 = r6.f19613l
                float r8 = r8 - r0
                float r8 = java.lang.Math.abs(r8)
                int r8 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
                if (r8 < 0) goto L8c
                goto Lb5
            L8c:
                java.util.concurrent.atomic.AtomicBoolean r8 = r6.f19615s
                boolean r8 = r8.get()
                if (r8 != 0) goto Ldb
                java.util.concurrent.atomic.AtomicBoolean r8 = r6.f19615s
                r8.set(r2)
                if (r10 == 0) goto Ldb
                java.lang.String r8 = r9.eb()
                com.byazt.gg.a r9 = r9.e()
                java.util.List r9 = r9.l()
                com.byazt.it.l r11 = r6.f19611a
                com.byazt.gg.a r11 = r11.e()
                r10.hp(r7, r8, r9, r11)
                r6.hp = r4
                r6.f19613l = r4
                return r2
            Lb5:
                r6.jx = r1
                return r1
            Lb8:
                java.util.concurrent.atomic.AtomicBoolean r0 = r6.f19615s
                r0.set(r1)
                float r0 = r8.getRawX()
                r6.hp = r0
                float r8 = r8.getRawY()
                r6.f19613l = r8
                r6.f19616w = r7
                r6.f19611a = r9
                r6.eb = r10
                if (r11 == 0) goto Ldb
                int r7 = r6.f19612j
                if (r7 <= 0) goto Ldb
                android.os.Handler r8 = r6.f19614q
                long r9 = (long) r7
                r8.sendEmptyMessageDelayed(r2, r9)
            Ldb:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.byazt.fb.j.l.hp(com.byazt.xs.jx, android.view.MotionEvent, com.byazt.it.l, com.byazt.gg.gu, boolean):boolean");
        }

        @Override // com.byazt.xa.q.hp
        public void hp(Message message) {
            if (this.eb == null || this.f19616w == null || this.f19611a == null || this.jx) {
                return;
            }
            if (!this.f19615s.get()) {
                this.f19615s.set(true);
                this.eb.hp(this.f19616w, this.f19611a.eb(), this.f19611a.e().l(), this.f19611a.e());
            }
            this.f19616w = null;
            this.f19611a = null;
            this.eb = null;
        }
    }
}
