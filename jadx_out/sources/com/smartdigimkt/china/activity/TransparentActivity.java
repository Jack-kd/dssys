package com.smartdigimkt.china.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;
import com.smartdigimkt.a.a;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes5.dex */
public class TransparentActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f39825a = new ConcurrentHashMap();

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getIntExtra("type", 0) == 1000) {
            ActivityCompat.requestPermissions(this, intent.getStringArrayExtra(com.anythink.china.activity.TransparentActivity.f1409d), intent.getIntExtra(com.anythink.china.activity.TransparentActivity.f1407b, 0));
        } else {
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        a.a(f39825a.get(Integer.valueOf(i2)));
        finish();
    }
}
