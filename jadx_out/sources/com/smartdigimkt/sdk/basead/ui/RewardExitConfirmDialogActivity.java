package com.smartdigimkt.sdk.basead.ui;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.smartdigimkt.c5.k;
import com.smartdigimkt.v1.s4;
import com.smartdigimkt.v1.t4;

/* loaded from: classes5.dex */
public class RewardExitConfirmDialogActivity extends Activity {

    /* renamed from: b, reason: collision with root package name */
    public static Runnable f43562b = null;

    /* renamed from: c, reason: collision with root package name */
    public static String f43563c = null;

    /* renamed from: d, reason: collision with root package name */
    public static int f43564d = 1;

    /* renamed from: a, reason: collision with root package name */
    public Dialog f43565a;

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            View viewInflate = LayoutInflater.from(this).inflate(k.a(this, "myoffer_confirm_dialog", "layout"), (ViewGroup) null, false);
            TextView textView = (TextView) viewInflate.findViewById(k.a(this, "myoffer_confirm_msg", "id"));
            TextView textView2 = (TextView) viewInflate.findViewById(k.a(this, "myoffer_confirm_give_up", "id"));
            TextView textView3 = (TextView) viewInflate.findViewById(k.a(this, "myoffer_confirm_continue", "id"));
            textView2.setText(getResources().getString(k.a(this, "myoffer_reward_exit_confirm_give_up", "string")));
            if (f43564d != 2) {
                textView.setText(getResources().getString(k.a(this, "myoffer_reward_exit_confirm_msg", "string"), f43563c));
                textView3.setText(getResources().getString(k.a(this, "myoffer_reward_exit_confirm_continue", "string")));
            } else {
                textView.setText(getResources().getString(k.a(this, "myoffer_anim_reward_exit_confirm_msg", "string"), f43563c));
                textView3.setText(getResources().getString(k.a(this, "myoffer_anim_reward_exit_confirm_continue", "string")));
            }
            textView2.setOnClickListener(new s4(this));
            textView3.setOnClickListener(new t4(this));
            Dialog dialog = new Dialog(this, k.a(this, "style_full_screen_translucent_dialog", "style"));
            this.f43565a = dialog;
            dialog.setContentView(viewInflate);
            this.f43565a.setCancelable(false);
            this.f43565a.show();
        } catch (Throwable unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        Dialog dialog = this.f43565a;
        if (dialog != null) {
            dialog.dismiss();
            this.f43565a = null;
        }
        f43562b = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (4 == i2) {
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
