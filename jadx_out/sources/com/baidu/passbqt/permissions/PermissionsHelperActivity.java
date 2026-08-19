package com.baidu.passbqt.permissions;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import u.AbstractC1777a;
import v.C1783a;

/* loaded from: classes2.dex */
public class PermissionsHelperActivity extends Activity {
    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        if (i2 != 8000) {
            return;
        }
        C1783a.a();
        C1783a.a().b();
        throw null;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C1783a.a().b();
        C1783a.a().c();
        finish();
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        if (i2 != 8001) {
            return;
        }
        for (int i3 = 0; i3 < strArr.length; i3++) {
            if (iArr[i3] != 0) {
                throw null;
            }
            AbstractC1777a.a("PassPermissions", "Permission check result is permission granted");
        }
        throw null;
    }
}
