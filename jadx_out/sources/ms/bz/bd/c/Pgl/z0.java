package ms.bz.bd.c.Pgl;

import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.lang.reflect.Method;
import ms.bz.bd.c.Pgl.pblz;

/* loaded from: classes5.dex */
public final class z0 {

    public class pblb extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            d1.hp(pblw.hp().l());
            return null;
        }
    }

    public class pblc extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return d1.hp(pblw.hp().l()).hp();
        }
    }

    public class pbld extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return m1.l(pblw.hp().l());
        }
    }

    public class pble extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return l1.hp(pblw.hp().l());
        }
    }

    public class pblf extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return "np";
        }
    }

    public class pblg extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return "np";
        }
    }

    public class pblh extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return k1.hp(pblw.hp().l());
        }
    }

    public class pbli extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return k1.l(pblw.hp().l());
        }
    }

    public class pblj extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return ms.bz.bd.c.Pgl.pblh.hp();
        }
    }

    public class pblk extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return n1.hp(pblw.hp().l());
        }
    }

    public class pbll extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            String str2;
            String str3;
            StringBuilder sb;
            String strTrim = "0";
            String strTrim2 = "null";
            try {
                WifiInfo connectionInfo = ((WifiManager) pblw.hp().l().getSystemService("wifi")).getConnectionInfo();
                Class<?> cls = connectionInfo.getClass();
                Method declaredMethod = cls.getDeclaredMethod(new String(pblr.hp("6765744253534944")), null);
                declaredMethod.setAccessible(true);
                str2 = (String) declaredMethod.invoke(connectionInfo, null);
                try {
                    Method declaredMethod2 = cls.getDeclaredMethod(new String(pblr.hp("67657453534944")), null);
                    declaredMethod2.setAccessible(true);
                    str3 = (String) declaredMethod2.invoke(connectionInfo, null);
                    try {
                        Method declaredMethod3 = cls.getDeclaredMethod(new String(pblr.hp("676574497041646472657373")), null);
                        declaredMethod3.setAccessible(true);
                        String string = Integer.toString(((Integer) declaredMethod3.invoke(connectionInfo, null)).intValue());
                        String strHp = v1.hp(str3);
                        String strHp2 = v1.hp(str2);
                        String strHp3 = v1.hp(string);
                        sb = new StringBuilder();
                        sb.append((strHp2 == null || strHp2.length() <= 0) ? "null" : strHp2.trim());
                        sb.append("[<!>]");
                        if (strHp != null && strHp.length() > 0) {
                            strTrim2 = strHp.trim();
                        }
                        sb.append(strTrim2);
                        sb.append("[<!>]");
                        if (strHp3 != null && strHp3.length() > 0) {
                            strTrim = strHp3.trim();
                        }
                    } catch (Throwable unused) {
                        String strHp4 = v1.hp(str3);
                        String strHp5 = v1.hp(str2);
                        String strHp6 = v1.hp(null);
                        sb = new StringBuilder();
                        sb.append((strHp5 == null || strHp5.length() <= 0) ? "null" : strHp5.trim());
                        sb.append("[<!>]");
                        if (strHp4 != null && strHp4.length() > 0) {
                            strTrim2 = strHp4.trim();
                        }
                        sb.append(strTrim2);
                        sb.append("[<!>]");
                        if (strHp6 != null && strHp6.length() > 0) {
                            strTrim = strHp6.trim();
                        }
                        sb.append(strTrim);
                        sb.append("[<!>]");
                        return sb.toString().trim();
                    }
                } catch (Throwable unused2) {
                    str3 = null;
                }
            } catch (Throwable unused3) {
                str2 = null;
                str3 = null;
            }
            sb.append(strTrim);
            sb.append("[<!>]");
            return sb.toString().trim();
        }
    }

    public class pblm extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return m1.hp(pblw.hp().l());
        }
    }

    public class pgla extends pblz.pgla {
        @Override // ms.bz.bd.c.Pgl.pblz.pgla
        public final Object hp(long j2, String str, Object obj) throws Throwable {
            return null;
        }
    }

    public static void hp() {
        pblz.hp(268435457, new pble());
        pblz.hp(268435458, new pblf());
        pblz.hp(268435459, new pblg());
        pblz.hp(268435460, new pblh());
        pblz.hp(268435461, new pbli());
        pblz.hp(268435462, new pblj());
        pblz.hp(268435463, new pblk());
        pblz.hp(268435464, new pbll());
        pblz.hp(268435465, new pblm());
        pblz.hp(268435466, new pgla());
        pblz.hp(268435467, new pblb());
        pblz.hp(268435468, new pblc());
        pblz.hp(268435469, new pbld());
    }
}
