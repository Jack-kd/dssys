package com.byazt.dp;

import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.bu.j;
import com.byazt.kc.AbsServerManager;
import com.byazt.oy.w;
import com.byazt.yk.jx;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsGetVersionInfo, 28})
/* loaded from: classes2.dex */
public class hp extends Fragment {
    private Intent a() {
        Context contextW = w();
        if (contextW == null) {
            return null;
        }
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        String packageName = contextW.getPackageName();
        intent.putExtra(AbsServerManager.PACKAGE_QUERY_BINDER, packageName);
        intent.putExtra("android.provider.extra.APP_PACKAGE", packageName);
        intent.putExtra("app_package", packageName);
        int i2 = contextW.getApplicationInfo().uid;
        intent.putExtra("uid", i2);
        intent.putExtra("app_uid", i2);
        return intent;
    }

    public static Intent j() {
        return new Intent("android.settings.APPLICATION_SETTINGS");
    }

    private Context w() {
        Context contextMp = jx.mp();
        return (contextMp != null || getActivity() == null || getActivity().isFinishing()) ? contextMp : getActivity().getApplicationContext();
    }

    public void hp() {
        try {
            try {
                try {
                    startActivityForResult(a(), 1000);
                } catch (Throwable unused) {
                    startActivityForResult(jx(), 1000);
                }
            } catch (Throwable unused2) {
                startActivityForResult(j(), 1000);
            }
        } catch (Throwable unused3) {
            startActivityForResult(l(), 1000);
        }
    }

    public Intent jx() {
        Context contextW = w();
        if (contextW == null) {
            return null;
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + contextW.getPackageName()));
    }

    public Intent l() {
        Context contextW = w();
        if (contextW == null) {
            return null;
        }
        String packageName = contextW.getPackageName();
        String str = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contains(w.jx)) {
                Intent intent = new Intent();
                intent.putExtra("packageName", packageName);
                intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
                return intent;
            }
            if (lowerCase.contains("vivo")) {
                Intent intent2 = new Intent();
                intent2.putExtra("packagename", packageName);
                if (Build.VERSION.SDK_INT >= 25) {
                    intent2.setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"));
                    return intent2;
                }
                intent2.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
                return intent2;
            }
            if (lowerCase.contains("meizu") && Build.VERSION.SDK_INT < 25) {
                Intent intent3 = new Intent("com.meizu.safe.security.SHOW_APPSEC");
                intent3.putExtra("packageName", packageName);
                intent3.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
                return intent3;
            }
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + contextW.getPackageName()));
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (j.hp()) {
            j.hp(true);
        } else {
            j.hp(false);
        }
    }
}
