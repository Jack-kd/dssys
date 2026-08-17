package com.anythink.odopt.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.SystemClock;
import android.text.TextUtils;
import com.anythink.odopt.a.a.p;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    private static final String f10600a = "OppoOaid";

    /* renamed from: b, reason: collision with root package name */
    private Context f10601b;

    /* renamed from: c, reason: collision with root package name */
    private com.anythink.odopt.a.a f10602c;

    /* renamed from: d, reason: collision with root package name */
    private p f10603d;

    /* renamed from: e, reason: collision with root package name */
    private final ServiceConnection f10604e = new ServiceConnection() { // from class: com.anythink.odopt.a.a.o.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            o.this.f10603d = p.a.a(iBinder);
            o.a(o.this);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            o.this.f10603d = null;
        }
    };

    public o(Context context) {
        this.f10601b = context;
    }

    private String b(String str) throws NoSuchAlgorithmException {
        Signature[] signatureArr;
        String packageName = this.f10601b.getPackageName();
        String string = null;
        try {
            signatureArr = this.f10601b.getPackageManager().getPackageInfo(packageName, 64).signatures;
        } catch (Exception e2) {
            e2.printStackTrace();
            signatureArr = null;
        }
        if (signatureArr != null && signatureArr.length > 0) {
            byte[] byteArray = signatureArr[0].toByteArray();
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                if (messageDigest != null) {
                    byte[] bArrDigest = messageDigest.digest(byteArray);
                    StringBuilder sb = new StringBuilder();
                    for (byte b3 : bArrDigest) {
                        sb.append(Integer.toHexString((b3 & 255) | 256).substring(1, 3));
                    }
                    string = sb.toString();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        return ((p.a.C0122a) this.f10603d).a(packageName, string, str);
    }

    public final boolean a(com.anythink.odopt.a.a aVar) {
        if (this.f10601b == null) {
            return false;
        }
        this.f10602c = aVar;
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
            intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
            return this.f10601b.bindService(intent, this.f10604e, 1);
        } catch (Throwable th) {
            a("", "bindService failed: " + th.getMessage());
            return false;
        }
    }

    private void a() {
        Context context;
        try {
            try {
                if (this.f10603d != null) {
                    String strB = b("OUID");
                    if (!TextUtils.isEmpty(strB)) {
                        a(strB, "");
                        if (r0 != null) {
                            this.f10601b.unbindService(this.f10604e);
                            return;
                        }
                        return;
                    } else {
                        try {
                            SystemClock.sleep(3000L);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        a(b("OUID"), "");
                    }
                } else {
                    a("", "get oaid failed: oppoOaidInterface is null.");
                }
                context = this.f10601b;
                if (context == null) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        } catch (Throwable th2) {
            try {
                a("", "get oaid failed: " + th2.getMessage());
                context = this.f10601b;
                if (context == null) {
                    return;
                }
            } finally {
                Context context2 = this.f10601b;
                if (context2 != null) {
                    try {
                        context2.unbindService(this.f10604e);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        context.unbindService(this.f10604e);
    }

    private void a(String str) {
        a(str, "");
    }

    private void a(String str, String str2) {
        if (this.f10602c != null) {
            if (!TextUtils.isEmpty(str)) {
                this.f10602c.a(str, false);
                return;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = "oaid is null or empty.";
            }
            this.f10602c.a(str2);
        }
    }

    public static /* synthetic */ void a(o oVar) {
        Context context;
        try {
            try {
                if (oVar.f10603d != null) {
                    String strB = oVar.b("OUID");
                    if (!TextUtils.isEmpty(strB)) {
                        oVar.a(strB, "");
                        if (r0 != null) {
                            oVar.f10601b.unbindService(oVar.f10604e);
                            return;
                        }
                        return;
                    } else {
                        try {
                            SystemClock.sleep(3000L);
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                        oVar.a(oVar.b("OUID"), "");
                    }
                } else {
                    oVar.a("", "get oaid failed: oppoOaidInterface is null.");
                }
                context = oVar.f10601b;
                if (context == null) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        } catch (Throwable th2) {
            try {
                oVar.a("", "get oaid failed: " + th2.getMessage());
                context = oVar.f10601b;
                if (context == null) {
                    return;
                }
            } finally {
                Context context2 = oVar.f10601b;
                if (context2 != null) {
                    try {
                        context2.unbindService(oVar.f10604e);
                    } catch (Throwable unused2) {
                    }
                }
            }
        }
        context.unbindService(oVar.f10604e);
    }
}
