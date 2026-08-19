package com.byazt.ay;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.ay.eb;
import com.byazt.xci.mp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 525, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
/* loaded from: classes2.dex */
public class s extends AlertDialog {

    /* renamed from: a, reason: collision with root package name */
    public com.byazt.la.hp f18429a;
    public com.byazt.dy.eb eb;
    public JSONObject hp;

    /* renamed from: j, reason: collision with root package name */
    public eb.hp f18430j;
    public Context jx;

    /* renamed from: l, reason: collision with root package name */
    public JSONObject f18431l;

    /* renamed from: s, reason: collision with root package name */
    public boolean f18432s;

    /* renamed from: w, reason: collision with root package name */
    public String f18433w;

    public s(String str, Context context, JSONObject jSONObject, JSONObject jSONObject2, com.byazt.dy.eb ebVar, mp mpVar) {
        super(context);
        this.eb = ebVar;
        this.jx = context;
        this.hp = jSONObject;
        this.f18433w = str;
        this.f18431l = jSONObject2;
        this.f18429a = new com.byazt.la.hp(context, mpVar);
    }

    private void l() {
        if (this.hp == null || this.f18431l == null || this.f18429a == null) {
            return;
        }
        this.f18432s = false;
        final FrameLayout frameLayout = new FrameLayout(this.jx);
        this.f18429a.hp(this.hp, this.f18431l, new com.byazt.dy.eb() { // from class: com.byazt.ay.s.1
            @Override // com.byazt.dy.eb
            public void hp(int i2, String str) {
                s.this.f18432s = true;
                if (s.this.eb != null) {
                    FrameLayout frameLayout2 = frameLayout;
                    if (frameLayout2 != null) {
                        frameLayout2.removeAllViews();
                    }
                    s.this.eb.hp(i2, str);
                }
            }

            @Override // com.byazt.dy.eb
            public void hp(com.byazt.xs.jx<View> jxVar) {
                s.this.f18432s = false;
                if (s.this.eb != null) {
                    s.this.eb.hp(null);
                }
                frameLayout.addView(jxVar.q(), new FrameLayout.LayoutParams(jxVar.lv(), jxVar.r()));
                s.this.setContentView(frameLayout);
            }
        });
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        eb.hp hpVar = this.f18430j;
        if (hpVar != null) {
            hpVar.jx(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        com.byazt.vi.eb.l(this);
        l();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (this.f18432s) {
            hide();
            dismiss();
        }
    }

    public String hp() {
        return this.f18433w;
    }

    public void hp(eb.hp hpVar) {
        this.f18430j = hpVar;
        com.byazt.la.hp hpVar2 = this.f18429a;
        if (hpVar2 != null) {
            hpVar2.hp(hpVar);
        }
    }

    public void hp(com.byazt.dy.eb ebVar) {
        this.eb = ebVar;
    }
}
