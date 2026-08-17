package com.byazt.hk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import com.byazt.hk.di;
import com.byazt.hk.xs;
import com.byazt.yq.w;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@com.byazt.kj.hp(hp = {0, 1, 227, 166})
/* loaded from: classes2.dex */
public final class ns implements xs {
    public final xs hp;

    /* renamed from: l, reason: collision with root package name */
    public l<Boolean> f20719l;

    public ns() {
        this(null);
    }

    @Override // com.byazt.hk.xs
    public xs.hp jx(final Context context) {
        if (this.hp != null && !this.f20719l.l(new Object[0]).booleanValue()) {
            return this.hp.jx(context);
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        String str = (String) new di(context, intent, new di.l<com.byazt.yq.w, String>() { // from class: com.byazt.hk.ns.2
            @Override // com.byazt.hk.di.l
            /* renamed from: hp, reason: merged with bridge method [inline-methods] */
            public com.byazt.yq.w l(IBinder iBinder) {
                return w.hp.hp(iBinder);
            }

            @Override // com.byazt.hk.di.l
            public String hp(com.byazt.yq.w wVar) throws Exception {
                if (wVar == null) {
                    return null;
                }
                String strHp = ns.this.hp(context);
                if (TextUtils.isEmpty(strHp)) {
                    return null;
                }
                return wVar.hp(context.getPackageName(), strHp, "OUID");
            }
        }).hp();
        xs.hp hpVar = new xs.hp();
        hpVar.f20732l = str;
        return hpVar;
    }

    @Override // com.byazt.hk.xs
    public boolean l(Context context) {
        if (context == null) {
            return false;
        }
        Boolean boolL = this.f20719l.l(context);
        return (this.hp == null || boolL.booleanValue()) ? boolL.booleanValue() : this.hp.l(context);
    }

    public ns(xs xsVar) {
        this.f20719l = new l<Boolean>() { // from class: com.byazt.hk.ns.1
            @Override // com.byazt.hk.l
            /* renamed from: jx, reason: merged with bridge method [inline-methods] */
            public Boolean hp(Object... objArr) {
                try {
                    PackageInfo packageInfo = ((Context) objArr[0]).getPackageManager().getPackageInfo("com.heytap.openid", 0);
                    if (packageInfo == null) {
                        return Boolean.FALSE;
                    }
                    return Boolean.valueOf((Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : (long) packageInfo.versionCode) >= 1);
                } catch (PackageManager.NameNotFoundException unused) {
                    return Boolean.FALSE;
                } catch (Throwable th) {
                    com.byazt.gt.e.hp(th);
                    return Boolean.FALSE;
                }
            }
        };
        this.hp = xsVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String hp(Context context) throws PackageManager.NameNotFoundException, NoSuchAlgorithmException {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
        } catch (Exception e2) {
            com.byazt.gt.e.hp(e2);
        }
        Signature[] signatureArr = packageInfo != null ? packageInfo.signatures : null;
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
                    return sb.toString();
                }
            } catch (Exception e3) {
                com.byazt.gt.e.hp(e3);
            }
        }
        return null;
    }
}
