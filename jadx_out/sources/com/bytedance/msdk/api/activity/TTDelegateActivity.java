package com.bytedance.msdk.api.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.aw.w;
import com.byazt.di.l;
import com.byazt.tja.j;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.kuaishou.weapon.p0.g;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class TTDelegateActivity extends Activity {
    private Intent hp;

    @com.byazt.kj.hp(hp = {0, 124, 1346, 1347, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_ENABLE_UNRELIABLE, 1094})
    public static class hp implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }
    }

    private void hp() {
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.alpha = 0.0f;
        window.setAttributes(attributes);
    }

    private void l() {
        try {
            int intExtra = this.hp.getIntExtra("type", 0);
            if (intExtra == 1) {
                hp(intExtra, this.hp.getIntArrayExtra("permissions"));
                return;
            }
            if (intExtra == 2) {
                hp(this.hp.getStringExtra("permission_id_key"), this.hp.getStringArrayExtra("permission_content_key"));
            } else if (intExtra != 3) {
                finish();
            } else {
                hp(intExtra, (int[]) null);
            }
        } catch (Exception unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        hp();
        this.hp = getIntent();
        if (l.getContext() == null) {
            l.hp(this);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (l.getContext() == null) {
            l.hp(this);
        }
        try {
            setIntent(intent);
            this.hp = intent;
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        j.hp().hp(this, strArr, iArr);
        w.j(new hp());
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (getIntent() != null) {
            l();
        }
    }

    private void hp(final String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            try {
                j.hp().hp(this, strArr, new com.byazt.tja.w() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.1
                    @Override // com.byazt.tja.w
                    public void hp() {
                        com.byazt.tja.hp.hp(str);
                        TTDelegateActivity.this.finish();
                    }

                    @Override // com.byazt.tja.w
                    public void hp(String str2) {
                        com.byazt.tja.hp.hp(str, str2);
                        TTDelegateActivity.this.finish();
                    }
                });
                return;
            } catch (Exception unused) {
                finish();
                return;
            }
        }
        finish();
    }

    private void hp(int i2, int[] iArr) {
        try {
            ArrayList arrayList = new ArrayList();
            if (i2 != 1) {
                if (i2 == 3) {
                    arrayList.add(g.f31166h);
                    arrayList.add(g.f31165g);
                    arrayList.add("android.permission.READ_PHONE_STATE");
                    arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                }
            } else if (iArr != null && iArr.length > 0) {
                for (int i3 : iArr) {
                    if (i3 == 1) {
                        arrayList.add(g.f31166h);
                        arrayList.add(g.f31165g);
                    } else if (i3 == 2) {
                        arrayList.add("android.permission.READ_PHONE_STATE");
                    } else if (i3 == 3) {
                        arrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
                    }
                }
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            j.hp().hp(this, strArr, new com.byazt.tja.w() { // from class: com.bytedance.msdk.api.activity.TTDelegateActivity.2
                @Override // com.byazt.tja.w
                public void hp() {
                    com.byazt.aw.l.hp("TMe", "-------=----- onGranted");
                    w.j(new hp());
                    TTDelegateActivity.this.finish();
                }

                @Override // com.byazt.tja.w
                public void hp(String str) {
                    com.byazt.aw.l.hp("TMe", "-------=----- onDenied: ".concat(String.valueOf(str)));
                    "android.permission.READ_PHONE_STATE".equals(str);
                    w.j(new hp());
                    TTDelegateActivity.this.finish();
                }
            });
        } catch (Exception unused) {
            finish();
        }
    }
}
