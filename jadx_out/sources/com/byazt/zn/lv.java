package com.byazt.zn;

import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 442, MediaPlayer.MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT})
/* loaded from: classes3.dex */
public final class lv {
    public static final ConcurrentHashMap<ViewGroup, Object> hp = new ConcurrentHashMap<>();

    /* renamed from: l, reason: collision with root package name */
    public static final Object f28556l = new Object();
    public static volatile boolean jx = false;

    private lv() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void j() {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.lv.j():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void jx() {
        /*
            java.util.concurrent.ConcurrentHashMap<android.view.ViewGroup, java.lang.Object> r0 = com.byazt.zn.lv.hp
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto La
            goto Lae
        La:
            android.content.Context r1 = com.byazt.jz.sz.getContext()
            int r1 = com.byazt.zn.xh.w(r1)
            java.util.Set r0 = r0.keySet()
            java.util.Iterator r0 = r0.iterator()
            r2 = 2147483647(0x7fffffff, float:NaN)
            r3 = 0
            r4 = r2
            r5 = r3
            r6 = r5
        L21:
            boolean r7 = r0.hasNext()
            if (r7 == 0) goto L71
            java.lang.Object r7 = r0.next()
            android.view.ViewGroup r7 = (android.view.ViewGroup) r7
            if (r7 == 0) goto L21
            android.graphics.Rect r8 = new android.graphics.Rect
            r8.<init>()
            boolean r9 = r7.getGlobalVisibleRect(r8)
            if (r9 != 0) goto L40
            java.util.concurrent.ConcurrentHashMap<android.view.ViewGroup, java.lang.Object> r8 = com.byazt.zn.lv.hp
            r8.remove(r7)
            goto L21
        L40:
            boolean r9 = com.byazt.jz.dy.hp(r7)
            if (r9 != 0) goto L4c
            java.util.concurrent.ConcurrentHashMap<android.view.ViewGroup, java.lang.Object> r8 = com.byazt.zn.lv.hp
            r8.remove(r7)
            goto L21
        L4c:
            int r9 = r1 / 2
            int r10 = r8.bottom
            if (r10 > r9) goto L55
            int r11 = r9 - r10
            goto L56
        L55:
            r11 = r2
        L56:
            int r8 = r8.top
            if (r8 < r9) goto L5d
            int r12 = r8 - r9
            goto L5e
        L5d:
            r12 = r2
        L5e:
            if (r10 <= r9) goto L64
            if (r8 >= r9) goto L64
            r5 = r7
            goto L71
        L64:
            int r8 = java.lang.Math.min(r12, r11)
            if (r8 >= r4) goto L6d
            r5 = r7
            r4 = r8
            goto L21
        L6d:
            if (r8 != r4) goto L21
            r6 = r7
            goto L21
        L71:
            if (r5 != 0) goto L74
            goto Lae
        L74:
            if (r6 == 0) goto L8d
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r5.getGlobalVisibleRect(r0)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r6.getGlobalVisibleRect(r1)
            int r0 = r0.top
            int r1 = r1.top
            if (r0 >= r1) goto L8d
            goto L8e
        L8d:
            r6 = r5
        L8e:
            java.util.concurrent.ConcurrentHashMap<android.view.ViewGroup, java.lang.Object> r0 = com.byazt.zn.lv.hp
            java.lang.Object r1 = r0.get(r6)
            boolean r1 = r1 instanceof com.byazt.go.jx
            if (r1 == 0) goto L9f
            java.lang.Object r1 = r0.get(r6)
            r3 = r1
            com.byazt.go.jx r3 = (com.byazt.go.jx) r3
        L9f:
            r1 = 1
            hp(r6, r1)
            r0.clear()
            r0 = 0
            com.byazt.zn.lv.jx = r0
            if (r3 == 0) goto Lae
            r3.hp()
        Lae:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.zn.lv.jx():void");
    }

    public static void hp(WeakReference<ViewGroup> weakReference, com.byazt.go.jx jxVar) {
        if (weakReference == null || jxVar == null) {
            return;
        }
        ViewGroup viewGroup = weakReference.get();
        if (!com.byazt.jz.dy.hp(viewGroup)) {
            hp(viewGroup, false);
            return;
        }
        hp.put(viewGroup, jxVar);
        if (jx) {
            hp(viewGroup, false);
            return;
        }
        synchronized (lv.class) {
            try {
                if (jx) {
                    hp(viewGroup, false);
                } else {
                    jx = true;
                    com.byazt.jz.vv.a().postDelayed(new Runnable() { // from class: com.byazt.zn.lv.1
                        @Override // java.lang.Runnable
                        public void run() {
                            lv.jx();
                        }
                    }, 50L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean hp(View view) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag(2114387349);
        if (tag instanceof Map) {
            Object obj = ((Map) tag).get("is_shake_efficient");
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
        }
        return false;
    }

    private static void hp(ViewGroup viewGroup, boolean z2) {
        if (viewGroup == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("is_shake_efficient", Boolean.valueOf(z2));
        Object tag = viewGroup.getTag(2114387349);
        if (tag != null) {
            try {
                if (!(tag instanceof HashMap)) {
                    return;
                }
            } catch (Throwable th) {
                com.byazt.ymw.u.l("TTShakeChecker", th.getMessage());
                hp(2114387349, th.getMessage());
                return;
            }
        }
        viewGroup.setTag(2114387349, map);
    }

    public static void hp(final int i2, final String str) {
        com.byazt.lf.l.jx().hp(new com.byazt.fq.hp() { // from class: com.byazt.zn.lv.2
            @Override // com.byazt.fq.hp
            public com.byazt.jlb.hp hp() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("shake_tag", i2);
                    jSONObject.put("error_msg", str);
                } catch (Throwable unused) {
                }
                return com.byazt.jlb.l.l().hp("stats_shake_tag_key").l(jSONObject.toString());
            }
        }, "stats_shake_tag_key", false);
    }

    public static void hp(WeakReference<ViewGroup> weakReference, float f2, float f3, long j2) {
        if (weakReference == null) {
            return;
        }
        ViewGroup viewGroup = weakReference.get();
        if (com.byazt.jz.dy.hp(viewGroup) && hp(f2, f3, j2)) {
            hp.put(viewGroup, f28556l);
            if (jx) {
                return;
            }
            synchronized (lv.class) {
                try {
                    if (jx) {
                        return;
                    }
                    jx = true;
                    com.byazt.jz.vv.a().postDelayed(new Runnable() { // from class: com.byazt.zn.lv.3
                        @Override // java.lang.Runnable
                        public void run() {
                            lv.j();
                        }
                    }, 50L);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private static boolean hp(float f2, float f3, long j2) {
        if (f2 == -1.0f) {
            return true;
        }
        if (f2 < 0.0f) {
            return false;
        }
        if (f2 == 0.0f && f3 == 2.1474836E9f) {
            return true;
        }
        if (f3 <= f2) {
            return false;
        }
        float fCurrentTimeMillis = (System.currentTimeMillis() - j2) / 1000.0f;
        return fCurrentTimeMillis >= f2 && fCurrentTimeMillis <= f3;
    }
}
