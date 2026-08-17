package com.byazt.q;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.byazt.kj.hp;
import com.byazt.t.jl;
import com.byazt.u.jx;
import com.byazt.y.s;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import org.json.JSONException;

@hp(hp = {0, 1, 150, 1739})
/* loaded from: classes3.dex */
public class JumpKllkActivity extends TTDelegateActivity {
    @Override // com.ss.android.downloadlib.activity.TTDelegateActivity
    public void hp() throws JSONException {
        Intent intent = getIntent();
        if (getIntent() == null) {
            jx.hp().hp("handleIntent is null");
            com.byazt.ni.jx.hp((Activity) this);
            return;
        }
        String stringExtra = intent.getStringExtra("p");
        long longExtra = intent.getLongExtra("id", 0L);
        if (TextUtils.isEmpty(stringExtra) || longExtra == 0) {
            jx.hp().hp("getPackage or id is null");
            com.byazt.ni.jx.hp((Activity) this);
        }
        boolean booleanExtra = intent.getBooleanExtra("dl", false);
        String stringExtra2 = intent.getStringExtra("bk");
        if ((!TextUtils.isEmpty(stringExtra2)) && booleanExtra) {
            s.hp((Context) this, stringExtra, longExtra, stringExtra2, true);
            com.byazt.ni.jx.hp((Activity) this);
            return;
        }
        int iOptInt = jl.q().optInt("ab", 0);
        s.hp(this, stringExtra, longExtra, iOptInt == 1);
        if (iOptInt != 1) {
            com.byazt.ni.jx.hp((Activity) this);
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        com.byazt.ni.jx.hp((Activity) this);
    }
}
