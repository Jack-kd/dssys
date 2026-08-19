package com.byazt.wnd;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.text.TextUtils;
import com.anythink.core.common.f.g;
import com.byazt.na.LottieAnimationView;
import com.byazt.na.j;
import com.byazt.na.jx;
import com.byazt.na.q;
import com.byazt.na.sz;
import com.byazt.nke.b;
import com.byazt.nke.e;
import com.byazt.nke.u;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.HashMap;
import java.util.Map;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF, 2264})
/* loaded from: classes3.dex */
public class DynamicLottieView extends LottieAnimationView {

    /* renamed from: a, reason: collision with root package name */
    public int f26976a;
    public int eb;
    public Map<String, Bitmap> hp;

    /* renamed from: j, reason: collision with root package name */
    public boolean f26977j;
    public boolean jx;

    /* renamed from: l, reason: collision with root package name */
    public String f26978l;

    /* renamed from: s, reason: collision with root package name */
    public Map<String, String> f26979s;

    /* renamed from: w, reason: collision with root package name */
    public int f26980w;

    public DynamicLottieView(Context context) {
        super(context);
        this.hp = new HashMap();
    }

    private void e() {
        setImageAssetDelegate(new j() { // from class: com.byazt.wnd.DynamicLottieView.3
            @Override // com.byazt.na.j
            public Bitmap hp(final q qVar) {
                if (qVar == null) {
                    return null;
                }
                final String strK = qVar.k();
                String strZy = qVar.zy();
                if (TextUtils.isEmpty(strK) || !TextUtils.isEmpty(strZy)) {
                    if (!TextUtils.isEmpty(strZy) && TextUtils.isEmpty(strK)) {
                        strK = strZy;
                    } else if (TextUtils.isEmpty(strZy) || TextUtils.isEmpty(strK)) {
                        strK = "";
                    } else {
                        strK = strK + strZy;
                    }
                }
                if (TextUtils.isEmpty(strK)) {
                    return null;
                }
                Bitmap bitmap = DynamicLottieView.this.hp == null ? null : (Bitmap) DynamicLottieView.this.hp.get(strK);
                if (bitmap != null) {
                    return bitmap;
                }
                com.byazt.ui.hp.hp().w().from(strK).converter(new e() { // from class: com.byazt.wnd.DynamicLottieView.3.2
                    @Override // com.byazt.nke.e
                    public Bitmap coverterTo(Bitmap bitmap2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, qVar.hp(), qVar.l(), false);
                        if (DynamicLottieView.this.hp != null) {
                            DynamicLottieView.this.hp.put(strK, bitmapCreateScaledBitmap);
                        }
                        return bitmapCreateScaledBitmap;
                    }
                }).to(new b<Bitmap>() { // from class: com.byazt.wnd.DynamicLottieView.3.1
                    @Override // com.byazt.nke.b
                    public void onFailed(int i2, String str, Throwable th) {
                    }

                    @Override // com.byazt.nke.b
                    public void onSuccess(u<Bitmap> uVar) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(uVar.getResult(), qVar.hp(), qVar.l(), false);
                        if (DynamicLottieView.this.hp != null) {
                            DynamicLottieView.this.hp.put(strK, bitmapCreateScaledBitmap);
                        }
                        DynamicLottieView.this.hp(qVar.jl(), bitmapCreateScaledBitmap);
                    }
                });
                if (DynamicLottieView.this.hp == null) {
                    return null;
                }
                return (Bitmap) DynamicLottieView.this.hp.get(strK);
            }
        });
        setAnimationFromUrl(this.f26978l);
        hp();
    }

    private void q() {
        setImageAssetDelegate(new j() { // from class: com.byazt.wnd.DynamicLottieView.1
            @Override // com.byazt.na.j
            public Bitmap hp(final q qVar) {
                final String strZy;
                strZy = qVar.zy();
                strZy.getClass();
                switch (strZy) {
                    case "{appIcon}":
                        if (DynamicLottieView.this.f26979s != null) {
                            strZy = (String) DynamicLottieView.this.f26979s.get("icon");
                            break;
                        }
                        break;
                    case "{adImage}":
                    case "{slot}":
                        if (DynamicLottieView.this.f26979s != null) {
                            strZy = (String) DynamicLottieView.this.f26979s.get("imageUrl");
                            break;
                        }
                        break;
                }
                Bitmap bitmap = (Bitmap) DynamicLottieView.this.hp.get(strZy);
                if (bitmap != null) {
                    return bitmap;
                }
                com.byazt.ui.hp.hp().w().from(strZy).type(2).converter(new e() { // from class: com.byazt.wnd.DynamicLottieView.1.2
                    @Override // com.byazt.nke.e
                    public Bitmap coverterTo(Bitmap bitmap2) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap2, qVar.hp(), qVar.l(), false);
                        DynamicLottieView.this.hp.put(strZy, bitmapCreateScaledBitmap);
                        return bitmapCreateScaledBitmap;
                    }
                }).to(new b<Bitmap>() { // from class: com.byazt.wnd.DynamicLottieView.1.1
                    @Override // com.byazt.nke.b
                    public void onFailed(int i2, String str, Throwable th) {
                    }

                    @Override // com.byazt.nke.b
                    public void onSuccess(u<Bitmap> uVar) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(uVar.getResult(), qVar.hp(), qVar.l(), false);
                        DynamicLottieView.this.hp.put(strZy, bitmapCreateScaledBitmap);
                        DynamicLottieView.this.hp(qVar.jl(), bitmapCreateScaledBitmap);
                    }
                });
                return (Bitmap) DynamicLottieView.this.hp.get(strZy);
            }
        });
        setAnimationFromUrl("https://sf3-fe-tos.pglstatp-toutiao.com/obj/ad-pattern/static/lotties/" + this.f26978l + ".json");
        if (this.f26979s != null) {
            sz szVar = new sz(this);
            String str = this.f26979s.get("app_name");
            String str2 = this.f26979s.get("description");
            String str3 = this.f26979s.get(g.a.f3271h);
            if (this.f26980w > 0 && str.length() > this.f26980w) {
                str = str.substring(0, this.f26980w - 1) + "...";
            } else if (this.f26980w <= 0) {
                str = "";
            }
            if (this.f26976a > 0 && str3.length() > this.f26976a) {
                str3 = str3.substring(0, this.f26976a - 1) + "...";
            } else if (this.f26980w <= 0) {
                str3 = "";
            }
            if (this.eb > 0 && str2.length() > this.eb) {
                str2 = str2.substring(0, this.eb - 1) + "...";
            } else if (this.f26980w <= 0) {
                str2 = "";
            }
            szVar.l("{appName}", str);
            szVar.l("{adTitle}", str3);
            szVar.l("{adDesc}", str2);
            setTextDelegate(szVar);
            setFontAssetDelegate(new jx() { // from class: com.byazt.wnd.DynamicLottieView.2
                @Override // com.byazt.na.jx
                public Typeface hp(String str4) {
                    return Typeface.MONOSPACE;
                }

                @Override // com.byazt.na.jx
                public String l(String str4) {
                    return null;
                }
            });
        }
        hp();
    }

    @Override // com.byazt.na.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
    }

    @Override // com.byazt.na.LottieAnimationView, android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    public void s() {
        if (TextUtils.isEmpty(this.f26978l)) {
            return;
        }
        setProgress(0.0f);
        hp(this.jx);
        if (this.f26977j) {
            e();
        } else {
            q();
        }
    }

    public void setAnimationsLoop(boolean z2) {
        this.jx = z2;
    }

    public void setData(Map<String, String> map) {
        this.f26979s = map;
    }

    public void setImageLottieTosPath(String str) {
        this.f26978l = str;
    }

    public void setLottieAdDescMaxLength(int i2) {
        this.eb = i2;
    }

    public void setLottieAdTitleMaxLength(int i2) {
        this.f26976a = i2;
    }

    public void setLottieAppNameMaxLength(int i2) {
        this.f26980w = i2;
    }

    public void setOnlyLoadNetImage(boolean z2) {
        this.f26977j = z2;
    }
}
