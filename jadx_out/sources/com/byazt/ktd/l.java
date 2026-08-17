package com.byazt.ktd;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import com.byazt.ktd.hp;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.lang.ref.WeakReference;
import org.json.JSONArray;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsPreloadStragetyWhenPlay, 34})
/* loaded from: classes.dex */
public final class l {
    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void hp(com.byazt.jt.l r15, boolean r16, final java.lang.String r17) {
        /*
            r0 = r17
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto La
            goto L86
        La:
            float r1 = com.byazt.ktd.jx.hp()     // Catch: java.lang.Throwable -> L86
            boolean r1 = com.byazt.ktd.s.hp(r1, r0)     // Catch: java.lang.Throwable -> L86
            if (r1 != 0) goto L16
            goto L86
        L16:
            android.app.Activity r1 = hp()     // Catch: java.lang.Throwable -> L86
            java.lang.Boolean r2 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L86
            r3 = 0
            if (r1 == 0) goto L4f
            java.lang.String r2 = com.byazt.ktd.j.a()     // Catch: java.lang.Throwable -> L86
            com.byazt.ktd.gu.hp(r1)     // Catch: java.lang.Throwable -> L86
            java.lang.CharSequence r4 = r1.getTitle()     // Catch: java.lang.Throwable -> L86
            java.lang.Class r5 = r1.getClass()     // Catch: java.lang.Throwable -> L86
            java.lang.String r5 = r5.getName()     // Catch: java.lang.Throwable -> L86
            boolean r1 = r1.hasWindowFocus()     // Catch: java.lang.Throwable -> L86
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.Throwable -> L86
            if (r4 == 0) goto L4b
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L86
            boolean r6 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L86
            if (r6 != 0) goto L4b
            r11 = r1
            r10 = r2
            r8 = r4
        L49:
            r9 = r5
            goto L53
        L4b:
            r11 = r1
            r10 = r2
            r8 = r3
            goto L49
        L4f:
            r11 = r2
            r8 = r3
            r9 = r8
            r10 = r9
        L53:
            if (r15 == 0) goto L5b
            java.lang.String r15 = r15.zy()     // Catch: java.lang.Throwable -> L86
        L59:
            r14 = r15
            goto L5e
        L5b:
            java.lang.String r15 = " "
            goto L59
        L5e:
            if (r16 == 0) goto L86
            com.byazt.ktd.hp$hp r7 = new com.byazt.ktd.hp$hp     // Catch: java.lang.Throwable -> L86
            r12 = 0
            r13 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> L86
            com.byazt.ktd.hp.hp(r0, r7)     // Catch: java.lang.Throwable -> L86
            float r15 = com.byazt.ktd.jx.w()     // Catch: java.lang.Throwable -> L86
            boolean r15 = com.byazt.ktd.s.hp(r15, r0)     // Catch: java.lang.Throwable -> L86
            if (r15 == 0) goto L86
            java.lang.StackTraceElement[] r15 = com.byazt.ktd.s.hp()     // Catch: java.lang.Throwable -> L86
            int r1 = com.byazt.ktd.jx.l()     // Catch: java.lang.Throwable -> L86
            com.byazt.ktd.l$1 r2 = new com.byazt.ktd.l$1     // Catch: java.lang.Throwable -> L86
            java.lang.String r3 = "stage_feature"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L86
            com.byazt.dnb.s.hp(r2)     // Catch: java.lang.Throwable -> L86
        L86:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.ktd.l.hp(com.byazt.jt.l, boolean, java.lang.String):void");
    }

    public static void hp(mp mpVar, String str) {
        if (mpVar == null || TextUtils.isEmpty(mpVar.hp())) {
            return;
        }
        try {
            if (s.hp(jx.hp(), mpVar.hp())) {
                JSONObject jSONObject = new JSONObject();
                hp.C0298hp c0298hpHp = hp.hp(mpVar.hp());
                if (c0298hpHp != null) {
                    jSONObject.put("top_page_title", c0298hpHp.hp);
                    jSONObject.put("top_page_name", c0298hpHp.f22148l);
                    jSONObject.put("t_name", c0298hpHp.jx);
                    jSONObject.put("has_window_focus", c0298hpHp.f22147j.booleanValue());
                    JSONArray jSONArray = c0298hpHp.f22149w;
                    jSONObject.put("call_chain", jSONArray != null ? jSONArray.toString() : " ");
                    String str2 = c0298hpHp.f22146a;
                    jSONObject.put("stack_hash", str2 != null ? str2 : " ");
                    jSONObject.put("media_extra", c0298hpHp.eb);
                    jSONObject.put("is_hit_chain", s.hp(jx.w(), mpVar.hp()));
                } else {
                    gu.hp(jSONObject, (Activity) null);
                    com.byazt.jt.l lVarDb = mpVar.db();
                    if (lVarDb != null) {
                        jSONObject.put("media_extra", TextUtils.isEmpty(lVarDb.zy()) ? " " : lVarDb.zy());
                    }
                }
                jSONObject.put("app_version", ky.e());
                jSONObject.put("app_no_tab", eb.jx());
                com.byazt.jdb.j.l(mpVar, str, "load_feature", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (s.hp(jx.w(), str)) {
                final StackTraceElement[] stackTraceElementArrHp = s.hp();
                final int iL = jx.l();
                com.byazt.dnb.s.hp(new com.byazt.uid.eb("stage_feature") { // from class: com.byazt.ktd.l.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            hp.hp(str, s.hp(stackTraceElementArrHp, iL));
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(mp mpVar, String str, View view, boolean z2) {
        if (mpVar == null || view == null) {
            return;
        }
        try {
            if (s.hp(jx.hp(), mpVar.hp())) {
                JSONObject jSONObject = new JSONObject();
                gu.hp(jSONObject, (Activity) null);
                JSONArray jSONArrayJx = hp.jx(mpVar.hp());
                if (jSONArrayJx != null) {
                    jSONObject.put("call_chain", jSONArrayJx.toString());
                    jSONObject.put("stack_hash", s.hp(jSONArrayJx));
                } else {
                    jSONObject.put("call_chain", " ");
                    jSONObject.put("stack_hash", " ");
                }
                boolean zHp = s.hp(jx.w(), mpVar.hp());
                jl.hp(jSONObject, view, jx.l(), zHp);
                jSONObject.put("is_preload", z2);
                jSONObject.put("app_version", ky.e());
                jSONObject.put("is_hit_chain", zHp);
                com.byazt.jdb.j.l(mpVar, str, "show_feature", jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public static void hp(final mp mpVar, final String str, Activity activity, String str2, boolean z2) {
        if (mpVar == null) {
            return;
        }
        try {
            if (s.hp(jx.hp(), mpVar.hp())) {
                boolean zHp = s.hp(jx.w(), mpVar.hp());
                final StackTraceElement[] stackTraceElementArrHp = zHp ? s.hp() : null;
                final int iL = jx.l();
                final JSONObject jSONObject = new JSONObject();
                gu.hp(jSONObject, activity);
                if (TextUtils.isEmpty(str2)) {
                    str2 = " ";
                }
                jSONObject.put("rit_scene", str2);
                jSONObject.put("is_preload", z2);
                jSONObject.put("app_version", ky.e());
                jSONObject.put("is_hit_chain", zHp);
                com.byazt.dnb.s.hp(new com.byazt.uid.eb("stage_feature") { // from class: com.byazt.ktd.l.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            StackTraceElement[] stackTraceElementArr = stackTraceElementArrHp;
                            if (stackTraceElementArr != null) {
                                JSONArray jSONArrayHp = s.hp(stackTraceElementArr, iL);
                                jSONObject.put("call_chain", jSONArrayHp.toString());
                                jSONObject.put("stack_hash", s.hp(jSONArrayHp));
                            } else {
                                jSONObject.put("call_chain", " ");
                                jSONObject.put("stack_hash", " ");
                            }
                            com.byazt.jdb.j.l(mpVar, str, "show_feature", jSONObject);
                        } catch (Throwable unused) {
                        }
                    }
                });
            }
        } catch (Throwable unused) {
        }
    }

    private static Activity hp() {
        try {
            com.byazt.zn.hp hpVarJx = com.byazt.jz.s.u().jx();
            WeakReference<Activity> weakReferenceHp = hpVarJx != null ? hpVarJx.hp() : null;
            if (weakReferenceHp != null) {
                return weakReferenceHp.get();
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
