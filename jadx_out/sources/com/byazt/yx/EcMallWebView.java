package com.byazt.yx;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.cey.w;
import com.byazt.dnb.s;
import com.byazt.jdb.a;
import com.byazt.jdb.j;
import com.byazt.jz.n;
import com.byazt.jz.ud;
import com.byazt.xci.ec;
import com.byazt.xci.mp;
import com.byazt.ykc.SSWebView;
import com.byazt.zn.ky;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import org.json.JSONException;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SUB_PATH_INFO, 2421})
/* loaded from: classes3.dex */
public class EcMallWebView extends SSWebView {

    /* renamed from: a, reason: collision with root package name */
    public final mp f28320a;
    public w eb;

    /* renamed from: w, reason: collision with root package name */
    public ud f28321w;

    public EcMallWebView(final Context context, mp mpVar, final int i2) {
        super(context);
        this.f28320a = mpVar;
        s.hp(new Runnable() { // from class: com.byazt.yx.EcMallWebView.1
            @Override // java.lang.Runnable
            public void run() {
                EcMallWebView.this.hp(context, i2);
            }
        });
    }

    @Override // com.byazt.vz.BizWebView, android.view.View, com.byazt.ikh.j
    public void setVisibility(int i2) throws JSONException {
        super.setVisibility(i2);
        boolean z2 = i2 == 0;
        ud udVar = this.f28321w;
        if (udVar != null) {
            udVar.gu(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(Context context, int i2) {
        this.f28321w = new ud(context);
        final String strHp = ky.hp(i2);
        this.eb = new w() { // from class: com.byazt.yx.EcMallWebView.2
            @Override // com.byazt.cey.w
            public void hp() {
            }

            @Override // com.byazt.cey.w
            public void l() {
            }

            @Override // com.byazt.cey.w
            public void hp(int i3) {
                com.byazt.gu.l lVar;
                if (EcMallWebView.this.f28320a != null && (lVar = (com.byazt.gu.l) n.hp(EcMallWebView.this.f28320a.n(), com.byazt.gu.l.class)) != null) {
                    lVar.hp(2, null);
                }
                j.hp(strHp, EcMallWebView.this.f28320a);
            }
        };
        this.f28321w.l(this).hp(this.f28320a).l(this.f28320a.j()).j(this.f28320a.w_()).jx(i2).w(ky.sz(this.f28320a)).hp((SSWebView) this).hp(strHp).hp(this.eb).hp(true);
        setWebViewClient(new com.byazt.cf.j(context, this.f28321w, this.f28320a.j(), new a(this.f28320a, this).l(true)));
        setWebChromeClient(new com.byazt.cf.jx(this.f28321w));
        String strS = ec.s(this.f28320a);
        if (TextUtils.isEmpty(strS)) {
            strS = this.f28320a.s();
        }
        if (TextUtils.isEmpty(strS)) {
            return;
        }
        loadUrl(strS);
    }
}
