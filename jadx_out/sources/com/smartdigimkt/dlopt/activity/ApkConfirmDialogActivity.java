package com.smartdigimkt.dlopt.activity;

import android.app.Activity;
import android.app.Dialog;
import android.view.KeyEvent;
import com.smartdigimkt.m3.c;
import com.smartdigimkt.s3.a;
import com.smartdigimkt.z3.d;

/* loaded from: classes5.dex */
public class ApkConfirmDialogActivity extends Activity {

    /* renamed from: c, reason: collision with root package name */
    public static c f39914c;

    /* renamed from: d, reason: collision with root package name */
    public static a f39915d;

    /* renamed from: a, reason: collision with root package name */
    public Dialog f39916a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f39917b = false;

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreate(android.os.Bundle r25) {
        /*
            Method dump skipped, instructions count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smartdigimkt.dlopt.activity.ApkConfirmDialogActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        d.f45447a = false;
        Dialog dialog = this.f39916a;
        if (dialog != null) {
            dialog.dismiss();
            this.f39916a = null;
        }
        f39914c = null;
        f39915d = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (4 == i2) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        d.f45447a = true;
    }
}
