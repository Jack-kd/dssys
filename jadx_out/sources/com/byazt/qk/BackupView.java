package com.byazt.qk;

import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.byazt.ek.ThemeStatusBroadcastReceiver;
import com.byazt.oh.NativeVideoTsView;
import com.byazt.xci.df;
import com.byazt.xci.mp;
import com.byazt.zn.ky;
import com.byazt.zn.xh;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, 64, 2097})
/* loaded from: classes3.dex */
public abstract class BackupView extends FrameLayout implements com.byazt.ek.hp {

    /* renamed from: a, reason: collision with root package name */
    public int f24760a;

    /* renamed from: e, reason: collision with root package name */
    public boolean f24761e;
    public int eb;
    public String gu;
    public Context hp;

    /* renamed from: j, reason: collision with root package name */
    public Dialog f24762j;
    public com.byazt.nc.hp jl;
    public com.byazt.ih.l jx;

    /* renamed from: l, reason: collision with root package name */
    public mp f24763l;

    /* renamed from: q, reason: collision with root package name */
    public boolean f24764q;

    /* renamed from: s, reason: collision with root package name */
    public int f24765s;

    /* renamed from: w, reason: collision with root package name */
    public String f24766w;
    public NativeVideoTsView zy;

    public BackupView(Context context) {
        super(context);
        this.f24766w = com.byazt.ih.l.AD_TAG_FEED;
        this.f24764q = true;
        this.f24761e = true;
        this.jl = new com.byazt.nc.hp();
        l();
    }

    private boolean j() {
        com.byazt.tw.j jVarV;
        mp mpVar = this.f24763l;
        return (mpVar == null || mpVar.nc() == 1 || (jVarV = df.v(this.f24763l)) == null || TextUtils.isEmpty(jVarV.getVideo_url())) ? false : true;
    }

    private boolean jx() {
        if (w()) {
            return j();
        }
        mp mpVar = this.f24763l;
        return mpVar != null && mp.jx(mpVar);
    }

    private void l() {
        setTag("tt_express_backup_fl_tag_26");
    }

    private boolean w() {
        return TextUtils.equals(this.f24766w, "splash_ad") || TextUtils.equals(this.f24766w, "cache_splash_ad");
    }

    @Override // com.byazt.ek.hp
    public void b_(int i2) {
    }

    public String getDescription() {
        return !TextUtils.isEmpty(this.f24763l.v_()) ? this.f24763l.v_() : !TextUtils.isEmpty(this.f24763l.cu()) ? this.f24763l.cu() : "";
    }

    public mp getMeta() {
        return this.f24763l;
    }

    public String getNameOrSource() {
        mp mpVar = this.f24763l;
        return mpVar == null ? "" : (mpVar.v() == null || TextUtils.isEmpty(this.f24763l.v().jx())) ? !TextUtils.isEmpty(this.f24763l.qk()) ? this.f24763l.qk() : "" : this.f24763l.v().jx();
    }

    public float getRealHeight() {
        return xh.j(this.hp, this.eb);
    }

    public float getRealWidth() {
        return xh.j(this.hp, this.f24760a);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    public String getTitle() {
        return (this.f24763l.v() == null || TextUtils.isEmpty(this.f24763l.v().jx())) ? !TextUtils.isEmpty(this.f24763l.qk()) ? this.f24763l.qk() : !TextUtils.isEmpty(this.f24763l.v_()) ? this.f24763l.v_() : "" : this.f24763l.v().jx();
    }

    public com.byazt.nc.hp getVideoModel() {
        return this.jl;
    }

    public void hp() {
        Dialog dialog = this.f24762j;
        if (dialog != null) {
            dialog.show();
            return;
        }
        com.byazt.ih.l lVar = this.jx;
        if (lVar != null) {
            lVar.showDislikeDialog();
        } else {
            TTDelegateActivity.hp(getContext(), this.f24763l);
        }
    }

    public abstract void hp(View view, int i2, com.byazt.xci.b bVar);

    public void setDislikeInner(com.byazt.qt.eb ebVar) {
        if (ebVar instanceof com.byazt.ih.l) {
            this.jx = (com.byazt.ih.l) ebVar;
        }
    }

    public void setDislikeOuter(Dialog dialog) {
        this.f24762j = dialog;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }

    public void setThemeChangeReceiver(ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        if (themeStatusBroadcastReceiver == null) {
            return;
        }
        themeStatusBroadcastReceiver.hp(this);
    }

    public void l(int i2) {
        this.f24761e = this.f24763l.dh() == 1;
        int iA = com.byazt.jz.sz.l().a(i2);
        if (3 == iA) {
            this.f24764q = false;
            return;
        }
        if (1 != iA || !com.byazt.ymw.vv.j(this.hp)) {
            if (2 == iA) {
                if (com.byazt.ymw.vv.w(this.hp) || com.byazt.ymw.vv.j(this.hp) || com.byazt.ymw.vv.a(this.hp)) {
                    this.f24764q = true;
                    return;
                }
                return;
            }
            if (5 != iA) {
                return;
            }
            if (!com.byazt.ymw.vv.j(this.hp) && !com.byazt.ymw.vv.a(this.hp)) {
                return;
            }
        }
        this.f24764q = true;
    }

    public void hp(View view, boolean z2) {
        final com.byazt.go.l lVar;
        if (view == null) {
            return;
        }
        if (z2) {
            Context context = this.hp;
            mp mpVar = this.f24763l;
            String str = this.f24766w;
            lVar = new com.byazt.go.hp(context, mpVar, str, ky.j(str));
        } else {
            Context context2 = this.hp;
            mp mpVar2 = this.f24763l;
            String str2 = this.f24766w;
            lVar = new com.byazt.go.l(context2, mpVar2, str2, ky.j(str2));
        }
        view.setOnTouchListener(lVar);
        view.setOnClickListener(lVar);
        jx jxVar = new jx() { // from class: com.byazt.qk.BackupView.1
            @Override // com.byazt.qk.jx
            public void hp(View view2, int i2, com.byazt.xci.b bVar) throws JSONException {
                try {
                    bVar.hp().put("click_extra_map", ((com.byazt.ey.hp) lVar.hp(com.byazt.ey.hp.class)).w());
                } catch (JSONException unused) {
                }
                BackupView.this.hp(view2, i2, bVar);
            }
        };
        com.byazt.kfd.hp hpVar = (com.byazt.kfd.hp) lVar.hp(com.byazt.kfd.hp.class);
        if (hpVar != null) {
            hpVar.hp(jxVar);
            hpVar.hp(z2 ? 2 : 1);
        }
    }

    public View hp(final NativeExpressView nativeExpressView) {
        BackupView backupView;
        NativeVideoTsView nativeVideoTsView;
        NativeVideoTsView nativeVideoTsView2 = this.zy;
        if (nativeVideoTsView2 != null) {
            return nativeVideoTsView2;
        }
        if (this.f24763l != null && this.hp != null) {
            if (jx()) {
                try {
                    backupView = this;
                } catch (Throwable unused) {
                    backupView = this;
                }
                try {
                    NativeVideoTsView nativeVideoTsViewHp = backupView.hp(this.hp, this.f24763l, this.f24766w, true, false);
                    backupView.zy = nativeVideoTsViewHp;
                    nativeVideoTsViewHp.setAdCreativeClickListener(new NativeVideoTsView.hp() { // from class: com.byazt.qk.BackupView.2
                        @Override // com.byazt.oh.NativeVideoTsView.hp
                        public void hp(View view, int i2) {
                            hp expressInteractionListener = nativeExpressView.getExpressInteractionListener();
                            if (expressInteractionListener == null) {
                                return;
                            }
                            expressInteractionListener.hp(view, i2);
                        }
                    });
                    backupView.zy.setVideoCacheUrl(backupView.gu);
                    backupView.zy.setControllerStatusCallBack(new NativeVideoTsView.j() { // from class: com.byazt.qk.BackupView.3
                        @Override // com.byazt.oh.NativeVideoTsView.j
                        public void hp(boolean z2, long j2, long j3, long j4, boolean z3, boolean z4) {
                            com.byazt.nc.hp hpVar = BackupView.this.jl;
                            hpVar.hp = z2;
                            hpVar.f23534w = j2;
                            hpVar.f23530a = j3;
                            hpVar.eb = j4;
                            hpVar.f23531j = z3;
                            hpVar.f23533s = z4;
                        }
                    });
                    backupView.zy.setIsAutoPlay(backupView.f24764q);
                    backupView.zy.setIsQuiet(backupView.f24761e);
                } catch (Throwable unused2) {
                    backupView.zy = null;
                    if (jx()) {
                        return backupView.zy;
                    }
                    return null;
                }
            } else {
                backupView = this;
            }
            if (jx() && (nativeVideoTsView = backupView.zy) != null && nativeVideoTsView.hp(0L, true, false)) {
                return backupView.zy;
            }
        }
        return null;
    }

    public NativeVideoTsView hp(Context context, mp mpVar, String str, boolean z2, boolean z3) {
        return new NativeVideoTsView(context, mpVar, str, z2, z3);
    }

    public void hp(View view) {
        if (df.v(this.f24763l) == null || view == null) {
            return;
        }
        hp(view, this.f24763l.xv() == 1 && this.f24764q);
    }
}
