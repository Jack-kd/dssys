package com.byazt.uah;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.byazt.ap.jx;
import com.byazt.ke.j;
import com.byazt.nke.b;
import com.byazt.nke.ns;
import com.byazt.nke.u;
import com.byazt.ow.w;
import com.byazt.ymw.a;
import com.byazt.ymw.s;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.io.File;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 1753, 34})
/* loaded from: classes3.dex */
public class l {
    public static final String hp;

    /* renamed from: j, reason: collision with root package name */
    public static volatile l f26114j;

    /* renamed from: l, reason: collision with root package name */
    public static final String f26115l;
    public final w jx = new j.hp().hp("lottie_tpl_info").hp(com.byazt.ui.hp.hp().jx().getContext()).hp(1).hp(com.byazt.ui.hp.hp().jx().jl()).hp();

    public interface hp<T> {
        void hp(int i2, String str);

        void hp(T t2);
    }

    static {
        StringBuilder sb = new StringBuilder("tt_derive");
        String str = File.separator;
        sb.append(str);
        sb.append("lottie");
        sb.append(str);
        sb.append(MediaFormat.KEY_AUDIO);
        hp = sb.toString();
        f26115l = "tt_derive" + str + "lottie" + str + "anim_img";
    }

    private l() {
    }

    public void l(String str, final hp<Bitmap> hpVar) {
        ns nsVarW = com.byazt.ui.hp.hp().w();
        if (nsVarW != null) {
            nsVarW.from(str).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.uah.l.3
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str2, Throwable th) {
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(i2, "load ad pic fail: ".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    hp hpVar2;
                    try {
                        Bitmap result = uVar.getResult();
                        if (result == null || (hpVar2 = hpVar) == null) {
                            return;
                        }
                        hpVar2.hp(result);
                    } catch (Throwable unused) {
                    }
                }
            }, 4);
        } else if (hpVar != null) {
            hpVar.hp(-1, "imageCenter is null");
        }
    }

    public static l hp() {
        if (f26114j == null) {
            synchronized (l.class) {
                try {
                    if (f26114j == null) {
                        f26114j = new l();
                    }
                } finally {
                }
            }
        }
        return f26114j;
    }

    public void hp(Context context, com.byazt.uah.hp hpVar) {
        if (hpVar != null) {
            String strJx = hpVar.jx();
            if (!TextUtils.isEmpty(strJx)) {
                l(strJx, null);
            }
            String strHp = hpVar.hp();
            if (TextUtils.isEmpty(strHp) || !TextUtils.isEmpty(hp(strHp))) {
                return;
            }
            hp(strHp, (hp<String>) null);
        }
    }

    public void hp(final String str, final hp<String> hpVar) {
        jx jxVarW = com.byazt.ui.hp.hp().jx().w();
        if (jxVarW == null) {
            return;
        }
        jxVarW.hp(str);
        jxVarW.hp(new com.byazt.mnb.hp() { // from class: com.byazt.uah.l.1
            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, com.byazt.oyr.l lVar) {
                String strW;
                boolean z2 = false;
                if (lVar != null) {
                    try {
                        if (lVar.q() && (strW = lVar.w()) != null) {
                            try {
                                new JSONObject(strW).optString("v");
                                l.this.hp(str, strW);
                                hp hpVar2 = hpVar;
                                if (hpVar2 != null) {
                                    hpVar2.hp(strW);
                                    return;
                                }
                                return;
                            } catch (JSONException e2) {
                                if (hpVar != null) {
                                    String message = e2.getMessage();
                                    if (message != null && message.length() > 100) {
                                        message = message.substring(0, 100);
                                    }
                                    hpVar.hp(AVMDLDataLoader.KeyIsStoMaxIdleTimeSec, "lottieJsonUrl加载失败0, " + message);
                                    return;
                                }
                                return;
                            }
                        }
                    } catch (Throwable th) {
                        hp hpVar3 = hpVar;
                        if (hpVar3 != null) {
                            hpVar3.hp(10001, "lottieJsonUrl加载失败2, " + th.getMessage());
                            return;
                        }
                        return;
                    }
                }
                hp hpVar4 = hpVar;
                if (hpVar4 != null) {
                    StringBuilder sb = new StringBuilder("lottieJsonUrl加载失败1, response is not null:");
                    sb.append(lVar != null);
                    sb.append(", isSuccess:");
                    if (lVar != null && lVar.q()) {
                        z2 = true;
                    }
                    sb.append(z2);
                    hpVar4.hp(10001, sb.toString());
                }
            }

            @Override // com.byazt.mnb.hp
            public void hp(com.byazt.ap.j jVar, IOException iOException) {
                hp hpVar2 = hpVar;
                if (hpVar2 != null) {
                    hpVar2.hp(10001, "lottieJsonUrl加载失败3, " + iOException.getMessage());
                }
            }
        });
    }

    public void hp(Context context, String str, final hp<Bitmap> hpVar) {
        ns nsVarW = com.byazt.ui.hp.hp().w();
        if (nsVarW != null) {
            nsVarW.from(str).cacheDir(hp(context)).config(Bitmap.Config.ARGB_4444).type(2).to(new b<Bitmap>() { // from class: com.byazt.uah.l.2
                @Override // com.byazt.nke.b
                public void onFailed(int i2, String str2, Throwable th) {
                    hp hpVar2 = hpVar;
                    if (hpVar2 != null) {
                        hpVar2.hp(i2, "load lottie pic fail: ".concat(String.valueOf(str2)));
                    }
                }

                @Override // com.byazt.nke.b
                public void onSuccess(u<Bitmap> uVar) {
                    hp hpVar2;
                    try {
                        Bitmap result = uVar.getResult();
                        if (result == null || (hpVar2 = hpVar) == null) {
                            return;
                        }
                        hpVar2.hp(result);
                    } catch (Throwable unused) {
                    }
                }
            }, 4);
        } else if (hpVar != null) {
            hpVar.hp(-1, "imageCenter is null");
        }
    }

    public String hp(String str) {
        String strL = a.l(str);
        if (TextUtils.isEmpty(strL)) {
            return null;
        }
        return this.jx.get(strL, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hp(String str, String str2) {
        String strL = a.l(str);
        if (TextUtils.isEmpty(strL)) {
            return;
        }
        this.jx.put(strL, str2);
    }

    public String hp(Context context) {
        return s.hp(context, com.byazt.ui.hp.hp().jx().jl(), f26115l).getAbsolutePath();
    }
}
