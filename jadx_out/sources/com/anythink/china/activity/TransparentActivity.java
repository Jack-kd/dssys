package com.anythink.china.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.anythink.china.b.c;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class TransparentActivity extends Activity {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1406a = "type";

    /* renamed from: b, reason: collision with root package name */
    public static final String f1407b = "request_code";

    /* renamed from: c, reason: collision with root package name */
    public static final int f1408c = 1000;

    /* renamed from: d, reason: collision with root package name */
    public static final String f1409d = "permission_list";

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap<Integer, c.a> f1410e = new ConcurrentHashMap<>();

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getIntExtra("type", 0) != 1000) {
            finish();
            return;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra(f1409d);
        int intExtra = intent.getIntExtra(f1407b, 0);
        if (stringArrayExtra != null) {
            requestPermissions(stringArrayExtra, intExtra);
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        ConcurrentHashMap<Integer, c.a> concurrentHashMap = f1410e;
        if (concurrentHashMap.get(Integer.valueOf(i2)) != null) {
            concurrentHashMap.remove(Integer.valueOf(i2));
        }
        finish();
    }
}
