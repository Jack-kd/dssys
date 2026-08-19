package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import android.view.Display;
import com.umeng.analytics.pro.ek;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class q1 {
    private static q1 hp;

    /* renamed from: a, reason: collision with root package name */
    private long f52006a;

    /* renamed from: e, reason: collision with root package name */
    private boolean f52007e;
    private String eb;

    /* renamed from: j, reason: collision with root package name */
    private long f52008j;
    private long jx;

    /* renamed from: l, reason: collision with root package name */
    private long f52009l;

    /* renamed from: q, reason: collision with root package name */
    private String f52010q;

    /* renamed from: s, reason: collision with root package name */
    private String f52011s;

    /* renamed from: w, reason: collision with root package name */
    private int f52012w = 1;

    private q1() {
    }

    public static Object hp(Object obj, String str) {
        Field field;
        try {
            Method declaredMethod = Class.class.getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "49cb0f", new byte[]{34, 62, 4, com.sigmob.sdk.archives.tar.e.f35444J, 10, 114, 59, 25, 32, com.sigmob.sdk.archives.tar.e.f35449O, 33, 29, 25, 19, 3, 117}), String.class);
            if (declaredMethod == null || (field = (Field) declaredMethod.invoke(obj.getClass(), str)) == null) {
                return null;
            }
            field.setAccessible(true);
            return field.get(obj);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String l(Display[] displayArr) {
        try {
            StringBuilder sb = new StringBuilder();
            for (Display display : displayArr) {
                StringBuilder sb2 = new StringBuilder();
                Object objHp = hp(display, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c344c9", new byte[]{127, 21, 78, com.sigmob.sdk.archives.tar.e.f35451Q, com.sigmob.sdk.archives.tar.e.f35450P, 34, 97, 11, com.sigmob.sdk.archives.tar.e.f35450P, 106, 116, 62}));
                sb2.append(hp(objHp, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "83db7b", new byte[]{38, 38, 25, 19, 26, 69, 58, 17, 62, com.sigmob.sdk.archives.tar.e.f35445K, 46, com.sigmob.sdk.archives.tar.e.f35446L, 57, 23, 5, 112})));
                sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "71d8b7", new byte[]{106}));
                sb2.append(hp(objHp, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8bd3b3", new byte[]{47, 108, 22, com.anythink.core.common.s.a.c.f7561b, 78})));
                sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "684ec8", new byte[]{107}));
                sb2.append(hp(objHp, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "841234", new byte[]{39, com.sigmob.sdk.archives.tar.e.f35449O, 79, 67})));
                sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c24a75", new byte[]{62}));
                sb2.append(hp(objHp, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cb5b80", new byte[]{102, 121, 86, 19})));
                if (!sb.toString().contains(sb2.toString())) {
                    if (sb.length() > 0) {
                        sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "06cac3", new byte[]{122}));
                    }
                    sb.append((CharSequence) sb2);
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean j() {
        return this.f52009l > 0 || this.jx > 0 || this.f52006a > 0;
    }

    public final JSONObject jx() throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "14ca68", new byte[]{33, 34}), this.f52009l);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e3d27a", new byte[]{102, 37}), this.jx);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4ce6d2", new byte[]{33, 108}), this.f52012w);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6a8c4a", new byte[]{35, 119}), this.f52006a);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ccbb4a", new byte[]{113, 96, 21}), this.f52007e ? 1 : 0);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f3bcb8", new byte[]{122, com.sigmob.sdk.archives.tar.e.f35447M}), this.eb);
            if (!TextUtils.isEmpty(this.f52011s)) {
                jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "898714", new byte[]{57, com.sigmob.sdk.archives.tar.e.f35442H}), this.f52011s);
            }
            if (!TextUtils.isEmpty(this.f52010q)) {
                jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "14a01e", new byte[]{36, 63}), this.f52010q);
            }
            this.f52008j = System.currentTimeMillis();
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f0d4dc", new byte[]{116, 38}), this.f52008j / 1000);
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String hp(Display[] displayArr) {
        try {
            StringBuilder sb = new StringBuilder();
            for (Display display : displayArr) {
                Object objHp = hp(display, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "47204b", new byte[]{40, 26, 86, 74, ek.f49294l, com.sigmob.sdk.archives.tar.e.f35454T, 7, 23, 96, 107, 36, com.sigmob.sdk.archives.tar.e.f35444J, 68, 106, 10, com.sigmob.sdk.archives.tar.e.f35452R, com.sigmob.sdk.archives.tar.e.f35444J}));
                if (objHp != null && !sb.toString().contains(objHp.toString())) {
                    sb.append(objHp);
                    sb.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "62b70d", new byte[]{124}));
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void l() {
        this.f52007e = true;
    }

    public static q1 hp() {
        if (hp == null) {
            hp = new q1();
        }
        return hp;
    }

    public final void l(long j2) {
        this.jx = j2;
        this.eb = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3adbc3", new byte[]{com.sigmob.sdk.archives.tar.e.f35442H, 102, 26, 25, 74, 33});
    }

    public final void hp(int i2) {
        if (this.f52012w != i2) {
            this.f52006a = System.currentTimeMillis() / 1000;
        }
        this.f52012w = i2;
    }

    public final void l(String str) {
        this.f52010q = str;
    }

    public final void hp(long j2) {
        this.f52009l = j2;
        this.eb = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0fc095", new byte[]{32, 96, 20});
    }

    public final void hp(String str) {
        this.f52011s = str;
    }
}
