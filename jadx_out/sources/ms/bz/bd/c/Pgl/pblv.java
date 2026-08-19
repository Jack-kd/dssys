package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* loaded from: classes5.dex */
public class pblv {
    public static final int CLIENT_TYPE_BUSINESS = 1;
    public static final int CLIENT_TYPE_INHOUSE = 0;
    public static final int CLIENT_TYPE_UNKNOWN = -1;
    public static final int COLLECT_MODE_DEFAULT = 99999;
    public static final int COLLECT_MODE_ML_MINIMIZE = 290;
    public static final int COLLECT_MODE_ML_PGL_AL = 810;

    /* renamed from: a, reason: collision with root package name */
    protected String f51984a = "";

    /* renamed from: b, reason: collision with root package name */
    protected String f51985b = "";

    /* renamed from: c, reason: collision with root package name */
    protected String f51986c = "";

    /* renamed from: d, reason: collision with root package name */
    protected String f51987d = "";

    /* renamed from: e, reason: collision with root package name */
    protected String f51988e = "";

    /* renamed from: f, reason: collision with root package name */
    protected String f51989f = "";

    /* renamed from: g, reason: collision with root package name */
    protected String f51990g = "";

    /* renamed from: h, reason: collision with root package name */
    protected String f51991h = "";

    /* renamed from: i, reason: collision with root package name */
    protected String f51992i = "";

    /* renamed from: j, reason: collision with root package name */
    protected String f51993j = null;

    /* renamed from: k, reason: collision with root package name */
    protected int f51994k = -1;

    /* renamed from: l, reason: collision with root package name */
    protected int f51995l = -1;

    /* renamed from: m, reason: collision with root package name */
    protected int f51996m = 99999;

    /* renamed from: n, reason: collision with root package name */
    protected Map<String, String> f51997n = new HashMap();

    /* renamed from: o, reason: collision with root package name */
    protected HashMap f51998o = new HashMap();

    /* renamed from: p, reason: collision with root package name */
    protected HashSet f51999p = new HashSet();

    public interface pblb {
    }

    public static abstract class pgla<T extends pblb> extends pblv implements pblb {
        public pgla(String str, String str2, int i2) {
            this.f51984a = str;
            this.f51992i = str2;
            this.f51996m = i2;
            if (TextUtils.isEmpty(str) || "0".equals(str) || TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("appID or license must be set.");
            }
            if (i2 != 99999 && i2 != 290 && i2 != 810) {
                throw new IllegalArgumentException("COLLECT_MODE is error ");
            }
        }

        public final pgla a() {
            this.f51994k = 1;
            return this;
        }

        public T addAdvanceInfo0(String str, String str2) {
            this.f51998o.put(str, str2);
            return this;
        }

        public T addDataObserver(PglITokenObserver pglITokenObserver) {
            if (pglITokenObserver != null) {
                this.f51999p.add(pglITokenObserver);
            }
            return this;
        }

        public T setBDDeviceID0(String str) {
            this.f51987d = str;
            return this;
        }

        public T setChannel0(String str) {
            this.f51985b = str;
            return this;
        }

        public T setClientType0(int i2) {
            this.f51994k = i2;
            return this;
        }

        public T setCustomInfo0(Map<String, String> map) {
            if (map == null) {
                map = new HashMap<>();
            }
            this.f51997n = map;
            return this;
        }

        public T setDeviceID0(String str) {
            this.f51986c = str;
            return this;
        }

        public T setInstallID0(String str) {
            this.f51988e = str;
            return this;
        }

        public T setOVRegionType0(int i2) {
            this.f51995l = i2;
            return this;
        }

        public T setOaid0(String str) {
            if (!str.equals("timeout") && !str.equals("error")) {
                if (!str.isEmpty()) {
                    this.f51998o.put("kOA1", "1");
                }
                return this;
            }
            this.f51998o.put("kOA1", "1");
            str = null;
            this.f51993j = str;
            return this;
        }

        public T setSecssionID0(String str) {
            this.f51989f = str;
            return this;
        }

        public pgla(String str, String str2, String str3, int i2) {
            this.f51990g = str;
            this.f51991h = str2;
            this.f51992i = str3;
            this.f51996m = i2;
            if (TextUtils.isEmpty(str) || "0".equals(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                throw new IllegalArgumentException("sdkID or license must be set.");
            }
        }
    }

    public static String a(Object obj) {
        return (obj == null || !(obj instanceof String)) ? "" : ((String) obj).trim();
    }
}
