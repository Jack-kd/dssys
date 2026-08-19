package com.byazt.dp;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.byazt.f.j;
import com.byazt.f.jl;
import com.byazt.f.zy;
import com.byazt.ni.eb;
import com.byazt.ni.jx;
import com.byazt.ni.l;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, AVMDLDataLoader.KeyIsGetVersionInfo, 831})
/* loaded from: classes2.dex */
public class JumpUnknownSourceActivity extends Activity {
    public jl hp;

    /* renamed from: j, reason: collision with root package name */
    public int f19188j;

    @Nullable
    public Intent jx;

    /* renamed from: l, reason: collision with root package name */
    public Intent f19189l;

    /* renamed from: w, reason: collision with root package name */
    public JSONObject f19190w;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        hp();
        eb.hp().hp(this);
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        eb.hp().hp(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        Intent intent = getIntent();
        this.f19189l = intent;
        if (intent != null) {
            this.jx = (Intent) intent.getParcelableExtra("intent");
            this.f19188j = intent.getIntExtra("id", -1);
            try {
                this.f19190w = new JSONObject(intent.getStringExtra("config"));
            } catch (Exception unused) {
            }
        }
        if (this.f19190w == null) {
            jx.hp((Activity) this);
            return;
        }
        l();
        jl jlVar = this.hp;
        if (jlVar != null && !jlVar.l()) {
            this.hp.hp();
        } else if (this.hp == null) {
            finish();
        }
    }

    private void hp() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void l() {
        if (this.hp != null || this.f19189l == null) {
            return;
        }
        try {
            j jVarL = com.byazt.ni.j.gu().l();
            zy zyVarHp = jVarL != null ? jVarL.hp(this) : null;
            if (zyVarHp == null) {
                zyVarHp = new com.byazt.dx.hp(this);
            }
            String strOptString = this.f19190w.optString("jump_unknown_source_tips");
            if (TextUtils.isEmpty(strOptString)) {
                strOptString = "提示";
            }
            zyVarHp.hp((CharSequence) "提示").hp(strOptString).hp("确定", new DialogInterface.OnClickListener() { // from class: com.byazt.dp.JumpUnknownSourceActivity.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                    if (l.hp(jumpUnknownSourceActivity, jumpUnknownSourceActivity.jx, JumpUnknownSourceActivity.this.f19188j, JumpUnknownSourceActivity.this.f19190w)) {
                        l.jx(JumpUnknownSourceActivity.this.f19188j, JumpUnknownSourceActivity.this.f19190w);
                    } else {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity2 = JumpUnknownSourceActivity.this;
                        l.hp((Context) jumpUnknownSourceActivity2, jumpUnknownSourceActivity2.jx, true);
                    }
                    l.hp(JumpUnknownSourceActivity.this.f19188j, JumpUnknownSourceActivity.this.f19190w);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).l("取消", new DialogInterface.OnClickListener() { // from class: com.byazt.dp.JumpUnknownSourceActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (JumpUnknownSourceActivity.this.jx != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        l.hp((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.jx, true);
                    }
                    l.l(JumpUnknownSourceActivity.this.f19188j, JumpUnknownSourceActivity.this.f19190w);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).hp(new DialogInterface.OnCancelListener() { // from class: com.byazt.dp.JumpUnknownSourceActivity.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    if (JumpUnknownSourceActivity.this.jx != null) {
                        JumpUnknownSourceActivity jumpUnknownSourceActivity = JumpUnknownSourceActivity.this;
                        l.hp((Context) jumpUnknownSourceActivity, jumpUnknownSourceActivity.jx, true);
                    }
                    l.l(JumpUnknownSourceActivity.this.f19188j, JumpUnknownSourceActivity.this.f19190w);
                    JumpUnknownSourceActivity.this.finish();
                }
            }).hp(false);
            this.hp = zyVarHp.hp();
        } catch (Exception unused) {
        }
    }
}
