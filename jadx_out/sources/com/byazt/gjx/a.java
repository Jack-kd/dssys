package com.byazt.gjx;

import android.app.Application;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import com.byakv.z.SoftDecTool;
import com.bytedance.component.sdk.annotation.DungeonFlag;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 737, 54})
/* loaded from: classes2.dex */
public class a {
    public static eb gu;
    public static String hp;

    /* renamed from: l, reason: collision with root package name */
    public static AtomicBoolean f20465l = new AtomicBoolean(false);
    public static final AtomicBoolean jx = new AtomicBoolean(false);

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicBoolean f20464j = new AtomicBoolean(false);

    /* renamed from: w, reason: collision with root package name */
    public static String f20468w = "";

    /* renamed from: a, reason: collision with root package name */
    public static long f20462a = 0;
    public static int eb = 0;

    /* renamed from: s, reason: collision with root package name */
    public static l f20467s = null;

    /* renamed from: q, reason: collision with root package name */
    public static volatile DisplayManager.DisplayListener f20466q = null;

    /* renamed from: e, reason: collision with root package name */
    public static volatile boolean f20463e = false;
    public static final AtomicBoolean jl = new AtomicBoolean(false);

    public static s a() {
        eb ebVar = gu;
        if (ebVar != null) {
            return ebVar.j();
        }
        return null;
    }

    public static long eb() {
        return f20462a;
    }

    public static boolean j() {
        eb ebVar = gu;
        if (ebVar != null) {
            return ebVar.jx();
        }
        return false;
    }

    public static Context jx() {
        eb ebVar = gu;
        if (ebVar != null) {
            return ebVar.hp();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static void l(Handler handler) {
        if (!q.l() || f20463e || jx() == null) {
            return;
        }
        f20463e = true;
        if (f20466q == null) {
            f20466q = new DisplayManager.DisplayListener() { // from class: com.byazt.gjx.a.2
                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayAdded(int i2) {
                    if (i2 != 0) {
                        try {
                            a.hp(1003, new Object[]{Integer.valueOf(i2), a.jx()});
                        } catch (Throwable unused) {
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayChanged(int i2) {
                    if (i2 != 0) {
                        try {
                            a.hp(1005, new Object[]{Integer.valueOf(i2), a.jx()});
                        } catch (Throwable unused) {
                        }
                    }
                }

                @Override // android.hardware.display.DisplayManager.DisplayListener
                public void onDisplayRemoved(int i2) {
                    if (i2 != 0) {
                        try {
                            a.hp(1004, new Object[]{Integer.valueOf(i2), a.jx()});
                        } catch (Throwable unused) {
                        }
                    }
                }
            };
        }
        ((DisplayManager) jx().getSystemService("display")).registerDisplayListener(f20466q, handler);
    }

    public static int s() {
        return eb;
    }

    public static String w() {
        eb ebVar = gu;
        if (ebVar != null) {
            return ebVar.l();
        }
        return null;
    }

    public static void hp(eb ebVar) {
        gu = ebVar;
    }

    public static void hp() {
        try {
            Context contextJx = jx();
            if (!j() || jx.getAndSet(true) || contextJx == null) {
                return;
            }
            if (f20467s != null) {
                l.hp((Application) contextJx).l((Application) contextJx);
                f20467s = null;
            }
            if (f20466q != null) {
                ((DisplayManager) contextJx.getSystemService("display")).unregisterDisplayListener(f20466q);
                f20463e = false;
                f20466q = null;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @DungeonFlag
    public static String l(Throwable th) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("stts", 3);
            jSONObject.put("exception:", th.toString());
            jSONObject.put("stacktrace:", Arrays.toString(th.getStackTrace()));
            jSONObject.put("cause:", String.valueOf(th.getCause()));
            f20468w = Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 0);
        } catch (Throwable unused) {
            f20468w = "eyJzdHRzIjozfQ==";
        }
        return f20468w;
    }

    public static String l() {
        if (hp == null) {
            Object objHp = hp(1011, new Object[0]);
            if (objHp instanceof String) {
                hp = (String) objHp;
            }
        }
        String str = hp;
        return str != null ? str : "";
    }

    @DungeonFlag
    public static String hp(final long j2) {
        if (q.l() && gu != null) {
            final Handler handlerHp = com.byazt.ymw.e.hp();
            final s sVarA = a();
            AtomicBoolean atomicBoolean = jl;
            if (atomicBoolean.get()) {
                if (TextUtils.isEmpty(f20468w)) {
                    String strGc = SoftDecTool.gc();
                    if (!TextUtils.isEmpty(strGc)) {
                        f20468w = strGc;
                    }
                }
                return TextUtils.isEmpty(f20468w) ? "eyJzdHRzIjoxfQ==" : f20468w;
            }
            atomicBoolean.set(true);
            handlerHp.post(new Runnable() { // from class: com.byazt.gjx.a.1
                @Override // java.lang.Runnable
                public void run() {
                    JSONObject jSONObjectT;
                    try {
                        if (!a.jx.get()) {
                            l unused = a.f20467s = l.hp((Application) a.gu.hp());
                            a.l(handlerHp);
                        }
                        w.hp(a.gu.hp());
                        if (SoftDecTool.acs == -1.0d) {
                            SoftDecTool.ua();
                        }
                        AtomicLong atomicLong = new AtomicLong(j2);
                        if (sVarA != null && !a.f20464j.getAndSet(true)) {
                            atomicLong.set(sVarA.hp());
                        }
                        Object objHp = a.hp(1001, new Object[]{a.gu.hp(), Long.valueOf(atomicLong.get())});
                        if (objHp instanceof String) {
                            String unused2 = a.f20468w = (String) objHp;
                        }
                        if (sVarA != null && !a.f20465l.getAndSet(true)) {
                            JSONObject jSONObjectHp = com.byazt.qx.hp.hp().hp(a.gu.hp(), a.gu.l());
                            if (jSONObjectHp != null && jSONObjectHp.length() > 0) {
                                sVarA.hp("detailed_app_info", jSONObjectHp);
                            }
                            a.f20465l.set(false);
                        }
                        if (sVarA != null && (jSONObjectT = SoftDecTool.t()) != null && jSONObjectT.length() > 0) {
                            sVarA.hp("tc_info", jSONObjectT);
                        }
                    } finally {
                        try {
                        } finally {
                        }
                    }
                }
            });
        }
        if (TextUtils.isEmpty(f20468w)) {
            String strGc2 = SoftDecTool.gc();
            if (!TextUtils.isEmpty(strGc2)) {
                f20468w = strGc2;
            }
        }
        return TextUtils.isEmpty(f20468w) ? "eyJzdHRzIjoxfQ==" : f20468w;
    }

    @DungeonFlag
    public static Object hp(int i2, Object[] objArr) {
        return SoftDecTool.cn(i2, objArr);
    }

    @DungeonFlag
    public static void hp(final MotionEvent motionEvent) {
        if (motionEvent == null || !q.l() || jx() == null) {
            return;
        }
        if (motionEvent.getRawX() > 0.0f || motionEvent.getRawY() > 0.0f) {
            com.byazt.ymw.e.hp().post(new Runnable() { // from class: com.byazt.gjx.a.3
                @Override // java.lang.Runnable
                public void run() {
                    a.hp(1002, new Object[]{Integer.valueOf(motionEvent.getDeviceId()), a.jx()});
                }
            });
        }
    }

    @DungeonFlag
    public static void hp(long j2, int i2) {
        f20462a = j2;
        eb = i2;
    }

    public static String hp(String str, long j2, int i2, boolean z2) {
        try {
            l lVar = f20467s;
            if (lVar != null) {
                return lVar.hp(str, j2, i2, z2);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String hp(String str, String str2) {
        Object objHp = hp(1010, new String[]{str, str2});
        return objHp instanceof String ? (String) objHp : str2;
    }
}
